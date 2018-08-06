using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

using ContratoDigital.Models;

using iText.Forms;
using iText.Forms.Fields;
using iText.Kernel.Pdf;
using iText.Barcodes;
using iText.Layout.Element;
using ContratoDigital.Data;
using SiiconWebService;
using iText.Kernel.Colors;
using iText.Layout;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using ContratoDigital.Areas.Identity.Data;

namespace ContratoDigital.Controllers
{
    [Authorize]
    public class ContratoDigitalController : Controller
    {
        /// <summary>
        ///  Constructor de la clase, que coloca los recursos web estáticos en el alcance de la aplicación .net.
        ///  e inicializa la base de datos
        /// </summary>
        private readonly ContratoDigitalContext _context;
        private readonly UserManager<ContratoDigitalUser> _userManager;
        private readonly IHostingEnvironment _hostingEnvironment;
        private readonly IEmailConfiguration _emailConfiguration;
        public ContratoDigitalController(IHostingEnvironment hostingEnvironment, ContratoDigitalContext context, IEmailConfiguration emailConfiguration, UserManager<ContratoDigitalUser> userManager)
        {
            _hostingEnvironment = hostingEnvironment;
            _context = context;
            _emailConfiguration = emailConfiguration;
            _userManager = userManager;
        }

        public async  Task<IActionResult> Index()
        {
            return View(await _context.Contratos.OrderByDescending(x=>x.IdContrato).Take(10).ToListAsync());
        }

        public IActionResult Fill(int id)
        {
            Prospecto prospecto = _context.Prospectos.SingleOrDefault(x => x.IdProspecto == id);
            if(prospecto == null)
            {                
                return RedirectToAction("Find", "Prospectos", new {errorid = 1 });
            }
            return View(prospecto);
        }

        [HttpPost]
        public async Task<IActionResult> Fill(IFormCollection form)
        {

            Contrato contrato = Utilities.FillContrato(form);            
            contrato.asesor_comercial = _userManager.GetUserId(User);
            _context.Add(contrato);
            await _context.SaveChangesAsync();
            ConfirmacionContrato confirmacionContrato = new ConfirmacionContrato()
            {
                IdContrato = contrato.IdContrato,
                Guuid = Guid.NewGuid().ToString(),
                IsAccepted = false,
                IsIdUploaded = false,
                IsPaid = false
            };
            try
            {
                _context.ConfirmacionContratos.Add(confirmacionContrato);
                await _context.SaveChangesAsync();
            }
            catch(Exception ex)
            {
                string value = ex.Message;
            }
            EmailService emailService = new EmailService(_emailConfiguration);
            EmailMessage emailMessage = new EmailMessage();
            emailMessage.FromAddresses = new List<EmailAddress>()
            {
                new EmailAddress{Name = "Test Adminsitrative", Address="tienda@autofinanciera.com.co"}
            };
            emailMessage.ToAddresses = new List<EmailAddress>()
            {
                new EmailAddress{Name = contrato.primer_nombre + " " + contrato.segundo_nombre + " " + contrato.primer_apellido + " " + contrato.segundo_apellido, Address=contrato.email_suscriptor}
            };
            emailMessage.Subject = "[Autofinanciera] Confirmación de aceptación de cláusulas";
#if DEBUG
            
            emailMessage.Content = String.Format(
                Utilities.GetTemplate(_hostingEnvironment.WebRootPath + "/emailtemplates/EmailAceptacionCondiciones.html"),
                Utilities.GetTemplate(_hostingEnvironment.WebRootPath + "/css/foundationemail.min.css"),
                "http://localhost:53036/ContratoDigital/confirmarcorreo/?guuid=" + confirmacionContrato.Guuid + "&id=" + confirmacionContrato.Id);
#endif
#if RELEASE
            emailMessage.Content = String.Format(
                Utilities.GetTemplate(_hostingEnvironment.WebRootPath + "/emailtemplates/EmailAceptacionCondiciones.html"),
                Utilities.GetTemplate(_hostingEnvironment.WebRootPath + "/css/foundationemail.min.css"),
                "http://tienda.autofinanciera.com.co/ContratoDigital/confirmarcorreo/?guuid=" + confirmacionContrato.Guuid + "&id=" + confirmacionContrato.Id);            
#endif
            try
            {
                emailService.Send(emailMessage);
                TempData["EmailResult"] = "Success";
            }
            catch(Exception ex)
            {
                TempData["EmailResult"] = "Ha ocurrido un error: " + ex.Message;
            }
            TempData.Keep("EmailResult");
            return RedirectToAction("Details", "ContratoDigital", new { id = contrato.IdContrato });
        }

        public async Task<IActionResult> Details(int id)
        {
            ViewData["EmailResult"] = TempData.Peek("EmailResult");
            return View(await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == id));
        }

        public async Task<IActionResult> Edit (int id)
        {
            return View(await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == id));
        }

        [HttpPost]
        public async Task<IActionResult> Edit (IFormCollection form)
        {
            Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == int.Parse(form["IdContrato"]));
            contrato = Utilities.UpdateContrato(form, contrato);
            await _context.SaveChangesAsync();
            return RedirectToAction("Details", "ContratoDigital", new { id = contrato.IdContrato });
        }


        public async Task<IActionResult> Generate(int id)
        {
            Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == id);
            MemoryStream stream = new MemoryStream();
            string src = "";
            if(contrato.valor_bien<=24999999)
            {
                switch(contrato.marca_exclusiva_bien)
                {
                    case "YAMAHA":
                        src = _hostingEnvironment.WebRootPath + "/pdf/motomas_v-1.0-20170725.pdf";
                        break;
                    default:
                        src = _hostingEnvironment.WebRootPath + "/pdf/electroplan_v-1.0-20170725.pdf";
                        break;
                }
            }
            else
            {
                switch(contrato.marca_exclusiva_bien)
                {
                    case "KIA":
                        src = _hostingEnvironment.WebRootPath + "/pdf/kiaplan_v-1.0-20170725.pdf";
                        break;
                    case "HYUNDAI":
                        src = _hostingEnvironment.WebRootPath + "/pdf/autokoreana_v-1.0-20170725.pdf";
                        break;
                    case "VOLKSWAGEN":
                        src = _hostingEnvironment.WebRootPath + "/pdf/colwager_v-1.0-20170725.pdf";
                        break;

                    default:
                        src = _hostingEnvironment.WebRootPath + "/pdf/autofinanciera_contrato_v.1.1_20180717.pdf";
                        break;
                }
            }            
            PdfWriter pdfwriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfwriter);
            pdfwriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();
            
            Utilities.FillPdf(fields, contrato);
            
            pdfForm.FlattenFields();            
            pdf.Close();
            stream.Flush();
            stream.Position = 0;
            return File(stream, "application/pdf", DateTime.Now.ToString("yyyy-MM-dd-")  +"contratodigital-autofinanciera-" + contrato.numero_de_contrato + ".pdf");
        }

        public IActionResult EmailContract(int id)
        {
            MemoryStream stream = new MemoryStream();
            Contrato contrato = _context.Contratos.SingleOrDefault(x => x.IdContrato == id);
            string src = "";
            if (contrato.valor_bien <= 24999999)
            {
                switch (contrato.marca_exclusiva_bien)
                {
                    case "YAMAHA":
                        src = _hostingEnvironment.WebRootPath + "/pdf/motomas_v-1.0-20170725.pdf";
                        break;
                    default:
                        src = _hostingEnvironment.WebRootPath + "/pdf/electroplan_v-1.0-20170725.pdf";
                        break;
                }

            }
            else
            {
                switch (contrato.marca_exclusiva_bien)
                {
                    case "KIA":
                        src = _hostingEnvironment.WebRootPath + "/pdf/kiaplan_v-1.0-20170725.pdf";
                        break;
                    case "HYUNDAI":
                        src = _hostingEnvironment.WebRootPath + "/pdf/autokoreana_v-1.0-20170725.pdf";
                        break;
                    case "VOLKSWAGEN":
                        src = _hostingEnvironment.WebRootPath + "/pdf/colwager_v-1.0-20170725.pdf";
                        break;

                    default:
                        src = _hostingEnvironment.WebRootPath + "/pdf/autofinanciera_contrato_v.1.1_20180717.pdf";
                        break;
                }
            }
            //string src = _hostingEnvironment.WebRootPath + "/pdf/autofinanciera_contrato_v.1.1_20180717.pdf";
            PdfWriter pdfwriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfwriter);
            pdfwriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            //Contrato contrato = Utilities.FillContrato(form);
            
            Utilities.FillPdf(fields, contrato);



            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;
            EmailService emailService = new EmailService(_emailConfiguration);
            EmailMessage emailMessage = new EmailMessage();
            emailMessage.FromAddresses = new List<EmailAddress>()
            {
                new EmailAddress{Name = "Test Administrative", Address = "tienda@autofinanciera.com.co" }
            };
            emailMessage.ToAddresses = new List<EmailAddress>()
            {
                new EmailAddress{Name = contrato.primer_nombre + " " + contrato.primer_apellido, Address = contrato.email_suscriptor }
            };
            emailMessage.Subject = "Contrato Digital PDF Autofinanciera";


            string srcTemplate = "";
            if (contrato.valor_bien <= 24999999)
            {
                switch (contrato.marca_exclusiva_bien)
                {
                    case "YAMAHA":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Contrato/ContratoMotoMas.html";
                        break;
                    case "AUTECO - BAJAJ":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Contrato/ContratoBajaj.html";
                        break;
                    case "AUTECO - KAWASAKI":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Contrato/ContratoKawasaki.html";
                        break;
                    case "AUTECO - KTM":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Contrato/ContratoKtm.html";
                        break;
                    default:
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Contrato/ContratoElectroplan.html";
                        break;
                }
            }
            else
            {
                switch (contrato.marca_exclusiva_bien)
                {
                    case "KIA":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Contrato/ContratoKiaPlan.html";
                        break;
                    case "HYUNDAI":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Contrato/ContratoAutokoreana.html";
                        break;
                    case "VOLKSWAGEN":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Contrato/ContratoAutofinanciera.html";
                        break;
                    default:
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Contrato/ContratoAutofinanciera.html";
                        break;
                }
            }

            emailMessage.Content = srcTemplate;
            try
            {
                emailService.Send(emailMessage, stream);
                TempData["EmailResult"] = "Success";                  
            }
            catch (Exception ex)
            {
                TempData["EmailResult"] = "Ha ocurrido un error: " + ex.Message;                
            }
            TempData.Keep("EmailResult");
            return RedirectToAction("Details", "ContratoDigital", new { id = contrato.IdContrato });
            
        }

        public async Task<IActionResult> EmailInvoice(int id)
        {
            MemoryStream stream = new MemoryStream();

            Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == id);
            string src = "";
            if (contrato.valor_bien <= 24999999)
            {
                src = _hostingEnvironment.WebRootPath + "/pdf/recibo-electro-v-1.0-20180803.pdf";

            }
            else
            {
                src = _hostingEnvironment.WebRootPath + "/pdf/recibo-auto-v.1.0-20180803.pdf";
            }
            PdfWriter pdfwriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfwriter);
            pdfwriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            //Contrato contrato = Utilities.FillContrato(form);
            //Contrato contrato = _context.Contratos.SingleOrDefault(x => x.IdContrato == id);
            //Utilities.FillPdf(fields, contrato);

            PdfFormField toSet;

            // Número de contrato
            fields.TryGetValue("CodigoBarras", out toSet);
            //toSet.SetValue(Utilities.GenerateCode128("4157709998014350802000000172097016433900019830909620180630"));
            //toSet.SetValue(Utilities.GenerateCode128("4157709998014350802000000180625000393900000010009620180628"));
            toSet.SetValue(Utilities.GenerateCode128("415" + Constants.ConvenioElectro + "8020" + "0000018062500039" + "3900" + contrato.valor_primer_pago + "96" + "20180628"));

            fields.TryGetValue("CodigoBarrasPlano", out toSet);
            //toSet.SetValue("(415)7709998014350(8020)0000017209701643(3900)01983090(96)20180630");
            toSet.SetValue("(415)" + Constants.ConvenioElectro + "(8020)" + "0000018062500039" + "(3900)" + contrato.valor_primer_pago + "(96)" + "20180628"); //+ "(415)7709998014350(8020)0000018062500039(3900)00001000(96)20180628");


            fields.TryGetValue("Nombre", out toSet);
            toSet.SetValue(contrato.primer_nombre + " " + contrato.segundo_nombre + " " + contrato.primer_apellido + " " + contrato.segundo_apellido);
            //toSet.SetValue("Juan Pablo Alviar");

            fields.TryGetValue("DireccionSuscriptor", out toSet);
            toSet.SetValue(contrato.direccion_domicilio_suscriptor);

            //fields.TryGetValue("TelefonoSuscriptor", out toSet);
            //toSet.SetValue(contrato.telefono_suscriptor);

            //fields.TryGetValue("CelularSuscriptor", out toSet);
            //toSet.SetValue(contrato.celular_suscriptor);

            fields.TryGetValue("CiudadSuscriptor", out toSet);
            toSet.SetValue(contrato.ciudad_suscriptor);

            //fields.TryGetValue("DescripcionBien", out toSet);
            fields.TryGetValue("Detalle", out toSet);
            toSet.SetValue(contrato.detalles_bien);
            //toSet.SetValue("Kia Stinger 2018");

            //fields.TryGetValue("ValorBien", out toSet);
            //toSet.SetValue(String.Format("{0:0,0.00}", contrato.valor_bien));
            //toSet.SetValue("$ 120.000.000");

            fields.TryGetValue("CuotaIngreso", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.cuota_ingreso));

            //fields.TryGetValue("IvaCuotaIngreso", out toSet);
            fields.TryGetValue("IvaIngreso", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.iva_cuota_ingreso));

            fields.TryGetValue("TotalCuotaIngreso", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.total_cuota_ingreso));

            fields.TryGetValue("PrimeraCuotaNeta", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.primera_cuota_neta));

            fields.TryGetValue("Administracion", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.administracion));

            fields.TryGetValue("IvaAdministracion", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.iva_administracion));

            fields.TryGetValue("TotalCuotaBruta", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.total_cuota_bruta));

            //fields.TryGetValue("ValorTotalPrimerPago", out toSet);
            //toSet.SetValue(String.Format("{0:0,0.00}", contrato.valor_primer_pago));
            ////toSet.SetValue("$ 1000.00");

            //fields.TryGetValue("TotalAPagar", out toSet);
            fields.TryGetValue("PrimerPago", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.valor_primer_pago));
            //toSet.SetValue("$ 1000.00");

            //fields.TryGetValue("ReferenciaDePago", out toSet);
            //toSet.SetValue("18062500039");

            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;

            EmailService emailService = new EmailService(_emailConfiguration);
            EmailMessage emailMessage = new EmailMessage();
            emailMessage.FromAddresses = new List<EmailAddress>()
            {
                new EmailAddress{Name = "Test Administrative", Address = "tienda@autofinanciera.com.co" }
            };
            emailMessage.ToAddresses = new List<EmailAddress>()
            {
                new EmailAddress{Name = contrato.primer_nombre + " " + contrato.primer_apellido, Address = contrato.email_suscriptor }
            };
            emailMessage.Subject = "Factura Digital Autofinanciera";
            emailMessage.Content = "Adjunto encontrará la factura con la cual podrá pagar en el banco.";
            try
            {
                emailService.Send(emailMessage, stream);
                TempData["EmailResult"] = "Success";
            }
            catch (Exception ex)
            {
                TempData["EmailResult"] = "Ha ocurrido un error: " + ex.Message;
            }
            TempData.Keep("EmailResult");
            return RedirectToAction("Details", "ContratoDigital", new { id = contrato.IdContrato });


        }

        [AllowAnonymous]
        public async Task<IActionResult> ConfirmarCorreo(string guuid, int id)
        {
            ConfirmacionContrato confirmacionContrato = await _context.ConfirmacionContratos.SingleOrDefaultAsync(x => x.Id == id);
            if(confirmacionContrato.Guuid == guuid)
            {
                confirmacionContrato.IsAccepted = true;
                confirmacionContrato.FechaAceptacion = DateTime.Now;
                await _context.SaveChangesAsync();
                ViewData["IsConfirmed"] = true;
            }
            else
            {
                ViewData["IsConfirmed"] = false;
            }
            return View();
        }

        public async Task<IActionResult> Pay(int id)
        {
            MemoryStream stream = new MemoryStream();
            Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == id);
            string src = "";
            if (contrato.valor_bien <= 24999999)
            {
                src = _hostingEnvironment.WebRootPath + "/pdf/recibo-electro-v-1.0-20180803.pdf";

            }
            else
            {
                src = _hostingEnvironment.WebRootPath + "/pdf/recibo-auto-v.1.0-20180803.pdf";
            }
            PdfWriter pdfwriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfwriter);
            pdfwriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            //Contrato contrato = Utilities.FillContrato(form);
            
            //Utilities.FillPdf(fields, contrato);

            PdfFormField toSet;

            // Número de contrato
            fields.TryGetValue("CodigoBarras", out toSet);
            //toSet.SetValue(Utilities.GenerateCode128("4157709998014350802000000172097016433900019830909620180630"));
            //toSet.SetValue(Utilities.GenerateCode128("4157709998014350802000000180625000393900000010009620180628"));
            toSet.SetValue(Utilities.GenerateCode128("415" + Constants.ConvenioElectro + "8020" + "0000018062500039" + "3900" + contrato.valor_primer_pago + "96" + "20180628"));

            fields.TryGetValue("CodigoBarrasPlano", out toSet);
            //toSet.SetValue("(415)7709998014350(8020)0000017209701643(3900)01983090(96)20180630");
            toSet.SetValue("(415)" + Constants.ConvenioElectro + "(8020)" + "0000018062500039" + "(3900)" + contrato.valor_primer_pago + "(96)" + "20180628"); //+ "(415)7709998014350(8020)0000018062500039(3900)00001000(96)20180628");


            fields.TryGetValue("Nombre", out toSet);
            toSet.SetValue(contrato.primer_nombre + " " + contrato.segundo_nombre + " " + contrato.primer_apellido + " " + contrato.segundo_apellido);
            //toSet.SetValue("Juan Pablo Alviar");

            fields.TryGetValue("DireccionSuscriptor", out toSet);
            toSet.SetValue(contrato.direccion_domicilio_suscriptor);

            //fields.TryGetValue("TelefonoSuscriptor", out toSet);
            //toSet.SetValue(contrato.telefono_suscriptor);

            //fields.TryGetValue("CelularSuscriptor", out toSet);
            //toSet.SetValue(contrato.celular_suscriptor);

            fields.TryGetValue("CiudadSuscriptor", out toSet);
            toSet.SetValue(contrato.ciudad_suscriptor);

            //fields.TryGetValue("DescripcionBien", out toSet);
            fields.TryGetValue("Detalle", out toSet);
            toSet.SetValue(contrato.detalles_bien);
            //toSet.SetValue("Kia Stinger 2018");

            //fields.TryGetValue("ValorBien", out toSet);
            //toSet.SetValue(String.Format("{0:0,0.00}", contrato.valor_bien));
            //toSet.SetValue("$ 120.000.000");

            fields.TryGetValue("CuotaIngreso", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.cuota_ingreso));

            //fields.TryGetValue("IvaCuotaIngreso", out toSet);
            fields.TryGetValue("IvaIngreso", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.iva_cuota_ingreso));

            fields.TryGetValue("TotalCuotaIngreso", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.total_cuota_ingreso));

            fields.TryGetValue("PrimeraCuotaNeta", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.primera_cuota_neta));

            fields.TryGetValue("Administracion", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.administracion));

            fields.TryGetValue("IvaAdministracion", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.iva_administracion));

            fields.TryGetValue("TotalCuotaBruta", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.total_cuota_bruta));

            //fields.TryGetValue("ValorTotalPrimerPago", out toSet);
            //toSet.SetValue(String.Format("{0:0,0.00}", contrato.valor_primer_pago));
            ////toSet.SetValue("$ 1000.00");

            //fields.TryGetValue("TotalAPagar", out toSet);
            fields.TryGetValue("PrimerPago", out toSet);
            toSet.SetValue(String.Format("{0:0,0.00}", contrato.valor_primer_pago));
            //toSet.SetValue("$ 1000.00");

            //fields.TryGetValue("ReferenciaDePago", out toSet);
            //toSet.SetValue("18062500039");

            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;            
            return File(stream, "application/pdf", DateTime.Now.ToString("yyyy-MM-dd-") + contrato.numero_de_contrato + "-ReciboPago.pdf");            
        }

        public IActionResult Find(int errorid)
        {
            if(errorid == 1)
            {
                ViewData["NoEncontrado"] = "El contrato no ha sido encontrado. Intenté nuevamente.";
            }
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Find(IFormCollection form)
        {
            ViewData["NumeroDocumento"] = form["NumeroDocumento"];
            ViewData["Nombre"] = form["Nombre"];           
            ViewData["NumeroContrato"] = form["NumeroContrato"];
            int.TryParse(form["NumeroContrato"], out int numeroContrato);
            int.TryParse(form["NumeroDocumento"], out int numeroDocumento);
            string nombre = form["Nombre"];

            
            if(!String.IsNullOrEmpty(nombre))
            {

                // Search Query Using FullText-Search Index
                var splitted = nombre.Split(' ');
                string searchQuery = "";
                for (int i = 0; i < splitted.Count(); i++)
                {
                    searchQuery += $"\"*" + splitted[i] + $"*\"";
                    if (i < splitted.Count() - 1)
                    {
                        searchQuery += " OR ";
                    }
                }                
                return View(await _context.Contratos.FromSql($"SELECT * FROM CONTRATOS WHERE CONTAINS(primer_nombre, {searchQuery}) OR  CONTAINS(primer_apellido, {searchQuery}) OR CONTAINS(segundo_nombre, {searchQuery}) OR  CONTAINS(segundo_apellido, {searchQuery}) OR  numero_de_contrato = {numeroContrato} OR documento_identidad_suscriptor = {numeroDocumento}")
                    .OrderByDescending(x => x.IdContrato).ToListAsync());
            }
            else
            {
                return View(await _context.Contratos.Where(x =>
                    x.numero_de_contrato == numeroContrato
                    || x.documento_identidad_suscriptor == numeroDocumento            
                    )
                    .OrderByDescending(x => x.IdContrato).ToListAsync());
            }
        }
        
        public async Task<IActionResult> UploadId(int id)
        {
            Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == id);
            UploadId upload = new UploadId();
            upload.IdContrato = contrato.IdContrato;
            return View(upload);
        }

        [HttpPost]
        //public async Task<IActionResult> UploadId(IFormCollection form, IFormFile anverso_documento, IFormFile reverso_documento)
        public async Task<IActionResult> UploadId(UploadId upload)
        {
            //int.TryParse(s: form["IdContrato"], result: out int idContrato);

            Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == upload.IdContrato);
            var anverso = upload.Anverso;
            if(upload.Anverso != null || upload.Anverso.ContentType.ToLower().StartsWith("image/"))
            {
                using (MemoryStream stream = new MemoryStream())
                {
                    upload.Anverso.OpenReadStream().CopyTo(stream);
                    contrato.anverso_documento = Convert.ToBase64String(stream.ToArray());
                }
            }
            if(upload.Reverso != null || upload.Reverso.ContentType.ToLower().StartsWith("image/"))
            {
                using (MemoryStream stream = new MemoryStream())
                {
                    upload.Reverso.OpenReadStream().CopyTo(stream);
                    contrato.reverso_documento = Convert.ToBase64String(stream.ToArray());
                }
            }            
            await _context.SaveChangesAsync();
            return RedirectToAction("Details", "ContratoDigital", new { id = contrato.IdContrato });
        }

        public IActionResult YamahaMotomas()
        {
            return View();
        }

        [HttpPost]        
        public IActionResult YamahaMotomas(IFormCollection form)
        {
            MemoryStream stream = new MemoryStream();

            string src = _hostingEnvironment.WebRootPath + "/pdf/electroplan_yamaha_motomas_contrato_v1.1_20180601.pdf";
            PdfWriter pdfwriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfwriter);
            pdfwriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            Contrato contrato = Utilities.FillContrato(form);
            Utilities.FillPdf(fields, contrato);

            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;
            return File(stream, "application/pdf", "AlgunaCosa.pdf");
        }
    }
}