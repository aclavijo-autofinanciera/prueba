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
using Newtonsoft.Json;

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
        private readonly ICanonicalUrlConfiguration _canonicalUrlConfiguration;
        private readonly Utilities _utilities;
        
        public ContratoDigitalController(IHostingEnvironment hostingEnvironment, ContratoDigitalContext context, IEmailConfiguration emailConfiguration, ICanonicalUrlConfiguration canonicalUrlConfiguration, UserManager<ContratoDigitalUser> userManager)
        {
            _hostingEnvironment = hostingEnvironment;
            _context = context;
            _emailConfiguration = emailConfiguration;
            _canonicalUrlConfiguration = canonicalUrlConfiguration;
            _userManager = userManager;
            _utilities = new Utilities(_context,_userManager);
            
        }
        

        public async Task<IActionResult> Index()
        {
            return View(await _context.Contratos
                .Where(x => x.asesor_comercial == _userManager.GetUserId(User))
                .OrderByDescending(x => x.IdContrato).ToListAsync());
        }

        public async Task<IActionResult> FindAll()
        {
            bool isAdmin = _userManager.IsInRoleAsync(_userManager.Users.SingleOrDefault(x => x.Id == _userManager.GetUserId(User)), "Administrador").Result;
            if (!isAdmin)
            {
                return RedirectToAction("AccessDenied", "Identity/Account");
            }
            return View(await _context.Contratos                
                .OrderByDescending(x => x.IdContrato).ToListAsync());
        }

        public IActionResult Fill(int id)
        {
            Prospecto prospecto = _context.Prospectos.SingleOrDefault(x => x.IdProspecto == id);
            if(prospecto.ConfirmacionProspecto.IsConfirmed == false)
            {
                return RedirectToAction("Details", "Prospectos", new { id = prospecto.IdProspecto });
            }
            Contrato numeroContrato = _context.Contratos.OrderBy(x => x.numero_de_contrato).LastOrDefault();
            if(numeroContrato == null )
            {
                ViewData["NumeroContrato"] = 8100000;
            }
            else
            {
                ViewData["NumeroContrato"] = numeroContrato.numero_de_contrato + 1;
            }
            GetStatusList();
            if (prospecto == null)
            {
                return RedirectToAction("Find", "Prospectos", new { errorid = 1 });
            }
            return View(prospecto);
        }

        [HttpPost]
        public async Task<IActionResult> Fill(IFormCollection form)
        {

            Contrato contrato = _utilities.FillContrato(form);
            Contrato numeroContrato = _context.Contratos.OrderBy(x => x.numero_de_contrato).LastOrDefault();
            if (numeroContrato == null)
            {
                contrato.numero_de_contrato = 8100000;
            }
            else
            {
                contrato.numero_de_contrato = numeroContrato.numero_de_contrato +1;
            }
            contrato.asesor_comercial = _userManager.GetUserId(User);
            _context.Add(contrato);
            await _context.SaveChangesAsync();

            ConfirmacionContrato confirmacionContrato = new ConfirmacionContrato()
            {
                IdContrato = contrato.IdContrato,
                Guuid = Guid.NewGuid().ToString(),
                IsAccepted = false,
                IsIdUploaded = false,
                IsPaid = false,
                Agencia = int.Parse(form["Agencia"]),
                DescripcionAgencia = form["AgenciaDescripcion"],
                TipoMedio = int.Parse(form["TipoMedio"]),
                DescripcionTipoMedio = form["TipoMedioDescripcion"],
                Medio = int.Parse(form["TipoMedioAgencia"]),
                DescripcionMedio = form["TipoMedioAgenciaDescripcion"],
                TipoCliente = int.Parse(form["TipoCliente"]),
                DescripcionTipoCliente = form["TipoClienteDescripcion"],
                UserId = _userManager.GetUserId(User),
                FechaCreacion = DateTime.Now,
                Observaciones = form["observaciones"],
                IdEstado = (int)Constants.EstadosContratos.PorAceptarCondiciones                
            };
            
            int.TryParse(s: form["asesores"], result: out int asesor);
            confirmacionContrato.Asesor = asesor;

            _context.ConfirmacionContratos.Add(confirmacionContrato);

            WebserviceController webservice = new WebserviceController(_context, _emailConfiguration, _hostingEnvironment, _utilities, _userManager);
            string referenciaPago = webservice.GenerarReferenciaPago(confirmacionContrato.Contrato.id_compania, confirmacionContrato.Contrato.documento_identidad_suscriptor.ToString(), double.Parse(form["abono"]), confirmacionContrato.IdContrato).Result.Value;
            dynamic json = JsonConvert.DeserializeObject<dynamic>(referenciaPago);
            
            RecibosPago reciboPago = new RecibosPago()
            {
                Monto = int.Parse(form["abono"]),
                IdContrato = contrato.IdContrato,
                FechaEmision = DateTime.Now,
                ReferenciaSiicon = json.First.ReferenciaPago
            };
            _context.RecibosPago.Add(reciboPago);

            await _context.SaveChangesAsync();

            MemoryStream stream = new MemoryStream();
            string src = "";
            if (contrato.id_compania.Equals(Constants.GuuidElectro))
            {
                switch (contrato.marca_exclusiva_bien)
                {
                    case "YAMAHA":
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoMotoMas;
                        break;
                    default:
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoElectro;
                        break;
                }
            }
            else
            {
                switch (contrato.marca_exclusiva_bien)
                {
                    case "KIA":
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoKia;
                        break;
                    case "HYUNDAI":
                        src = _hostingEnvironment.WebRootPath + "/pdf/" +  Constants.ContratoAutoKoreana;
                        break;
                    case "VOLKSWAGEN":
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoColWager;
                        break;

                    default:
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoAuto;
                        break;
                }
            }
            PdfWriter pdfwriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfwriter);
            pdfwriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            _utilities.FillPdf(fields, contrato);

            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;

            
            
            EmailService emailService = new EmailService(_emailConfiguration);
            EmailMessage emailMessage = new EmailMessage();
            CanonicalUrlService canonicalUrlService = new CanonicalUrlService(_canonicalUrlConfiguration);
           

            string srcTemplate = "";
            if (contrato.id_compania.Equals(Constants.GuuidElectro))
            {
                emailMessage.FromAddresses = new List<EmailAddress>()
                {
                    new EmailAddress{Name = "Mi Contrato Electroplan", Address="tienda@autofinanciera.com.co"}
                };
                    emailMessage.ToAddresses = new List<EmailAddress>()
                {
                    new EmailAddress{Name = contrato.primer_nombre + " " + contrato.segundo_nombre + " " + contrato.primer_apellido + " " + contrato.segundo_apellido, Address=contrato.email_suscriptor}
                };
                emailMessage.Subject = "[ELECTROPLAN] Mi Contrato - Aceptación condiciones del contrato";
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
                emailMessage.FromAddresses = new List<EmailAddress>()
                {
                    new EmailAddress{Name = "Mi Contrato Autofinanciera", Address="tienda@autofinanciera.com.co"}
                };
                    emailMessage.ToAddresses = new List<EmailAddress>()
                {
                    new EmailAddress{Name = contrato.primer_nombre + " " + contrato.segundo_nombre + " " + contrato.primer_apellido + " " + contrato.segundo_apellido, Address=contrato.email_suscriptor}
                };
                emailMessage.Subject = "[AUTOFINANCIERA] Mi Contrato - Aceptación condiciones del contrato";
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

            emailMessage.Content = String.Format(
                _utilities.GetTemplate(srcTemplate),
                canonicalUrlService.GetCanonicalUrl() + "ContratoDigital/confirmarcorreo/?guuid=" + confirmacionContrato.Guuid + "&id=" + confirmacionContrato.Id);
            
            emailService.Send(emailMessage, stream, Constants.ContratoPDF);            
            return RedirectToAction("Details", "ContratoDigital", new { id = contrato.IdContrato });
        }

        public async Task<IActionResult> Details(int id)
        {
            Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == id);
            Status status = new Status(_context);
            ViewData["TipoIdentificacionSuscriptor"] = status.GetStatusName(int.Parse(contrato.tipo_documento_identidad_suscriptor));
            ViewData["ProcedenciaIdentificacion"] = status.GetCiudadName(int.Parse(contrato.procedencia_documento_identidad_suscriptor));
            ViewData["SexoSuscriptor"] = status.GetStatusName(int.Parse(contrato.sexo_suscriptor));
            ViewData["EstadoCivilSuscriptor"] = status.GetStatusName(int.Parse(contrato.estado_civil_suscriptor));
            ViewData["DepartamentoSuscriptor"] = status.GetStatusName(int.Parse(contrato.departamento_suscriptor));
            ViewData["CiudadSuscriptor"] = status.GetCiudadName(int.Parse(contrato.ciudad_suscriptor));
            ViewData["DepartamentoLaboralSuscriptor"] = status.GetStatusName(int.Parse(contrato.departamento_empleo_suscriptor));
            ViewData["CiudadLaboralSuscriptor"] = status.GetCiudadName(int.Parse(contrato.ciudad_empleo_suscriptor));
            if (!string.IsNullOrEmpty( contrato.tipo_documento_representante_legal))
            {
                ViewData["TipoIdentificacionLegal"] = status.GetStatusName(int.Parse(contrato.tipo_documento_representante_legal));
            }
            
            if(contrato.documento_identidad_suscriptor_conjunto> 0)
            {
                ViewData["TipoIdentificacionSuscriptorConjunto"] = status.GetStatusName(int.Parse(contrato.tipo_identidad_suscriptor_conjunto));
                ViewData["SexoSuscriptorConjunto"] = status.GetStatusName(int.Parse(contrato.sexo_suscriptor_conjunto));
                ViewData["EstadoCivilSuscriptorConjunto"] = status.GetStatusName(int.Parse(contrato.estado_civil_suscriptor_conjunto));
                ViewData["DepartamentoSuscriptorConjunto"] = status.GetStatusName(int.Parse(contrato.departamento_suscriptor_conjunto));
                ViewData["CiudadSuscriptorConjunto"] = status.GetCiudadName(int.Parse(contrato.ciudad_suscriptor_conjunto));
                ViewData["DepartamentoLaboralSuscriptorConjunto"] = status.GetStatusName(int.Parse(contrato.departamento_empleo_suscriptor_conjunto ));
                ViewData["CiudadLaboralSuscriptorConjunto"] = status.GetCiudadName(int.Parse(contrato.ciudad_empleo_suscriptor_conjunto));
                if (!string.IsNullOrEmpty(contrato.tipo_identidad_representante_legal_suscriptor_conjunto))
                {
                    ViewData["TipoIdentificacionLegalConjunto"] = status.GetStatusName(int.Parse(contrato.tipo_identidad_representante_legal_suscriptor_conjunto));
                }

            }
            ViewData["Estado"] = status.GetStatusName(contrato.ConfirmacionContratos.IdEstado);
            return View(contrato);
        }

        public async Task<IActionResult> Edit(int id)
        {
            GetStatusList();
            Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == id);
            if (contrato.ConfirmacionContratos.IsPaid)
            {
                return RedirectToAction("Details", "ContratoDigital", new { id = contrato.IdContrato });
            }
            Status status = new Status(_context);
            ViewData["ProcedenciaIdentidadSuscriptor"] = status.GetCiudadName(int.Parse(contrato.procedencia_documento_identidad_suscriptor));
            if(contrato.documento_identidad_representante_legal > 0)
            {
                ViewData["ProcedenciaIdentidadRepresentanteLegal"] = status.GetCiudadName(int.Parse(contrato.procedencia_documento_identidad_representante_legal));
            }            
            ViewData["CiudadSuscriptor"] = status.GetCiudadName(int.Parse(contrato.ciudad_suscriptor));
            ViewData["CiudadLaboralSuscriptor"] = status.GetCiudadName(int.Parse(contrato.ciudad_empleo_suscriptor));
            if(contrato.documento_identidad_suscriptor_conjunto > 0)
            {
                ViewData["ProcedenciaIdentidadSuscriptorConjunto"] = status.GetCiudadName(int.Parse(contrato.procedencia_documento_identidad_suscriptor));
                if (contrato.documento_identidad_representante_legal_suscriptor_conjunto > 0)
                {
                    ViewData["ProcedenciaIdentidadRepresentanteLegalConjunto"] = status.GetCiudadName(int.Parse(contrato.procedencia_identificacion_representante_legal_suscriptor_conjunto));
                }
                ViewData["CiudadSuscriptorConjunto"] = status.GetCiudadName(int.Parse(contrato.ciudad_suscriptor_conjunto));
                ViewData["CiudadLaboralSuscriptorConjunto"] = status.GetCiudadName(int.Parse(contrato.ciudad_empleo_suscriptor_conjunto));
            }
            return View(contrato);
        }

        [HttpPost]
        public async Task<IActionResult> Edit(IFormCollection form)
        {            
            Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == int.Parse(form["IdContrato"]));
            if(contrato.ConfirmacionContratos.IsPaid)
            {
                return RedirectToAction("Details", "ContratoDigital", new { id = contrato.IdContrato });
            }

            contrato.ConfirmacionContratos.Agencia = int.Parse(form["Agencia"]);
            contrato.ConfirmacionContratos.DescripcionAgencia = form["AgenciaDescripcion"];
            contrato.ConfirmacionContratos.TipoMedio = int.Parse(form["TipoMedio"]);
            contrato.ConfirmacionContratos.DescripcionTipoMedio = form["TipoMedioDescripcion"];
            contrato.ConfirmacionContratos.Medio = int.Parse(form["TipoMedioAgencia"]);
            contrato.ConfirmacionContratos.DescripcionMedio = form["TipoMedioAgenciaDescripcion"];
            contrato.ConfirmacionContratos.TipoCliente = int.Parse(form["TipoCliente"]);
            contrato.ConfirmacionContratos.DescripcionTipoCliente = form["TipoClienteDescripcion"];
            contrato.ConfirmacionContratos.UserId = _userManager.GetUserId(User);
            contrato = _utilities.UpdateContrato(form, contrato);
            contrato.asesor_comercial = _userManager.GetUserId(User);
            await _context.SaveChangesAsync();
            return RedirectToAction("Details", "ContratoDigital", new { id = contrato.IdContrato });
        }


        public async Task<IActionResult> Generate(int id)
        {
            Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == id);
            MemoryStream stream = new MemoryStream();
            string src = "";
            if (contrato.id_compania.Equals(Constants.GuuidElectro))
            {
                switch (contrato.marca_exclusiva_bien)
                {
                    case "YAMAHA":
                        src = _hostingEnvironment.WebRootPath + "/pdf/"+ Constants.ContratoMotoMas;
                        break;
                    default:
                        src = _hostingEnvironment.WebRootPath + "/pdf/"+ Constants.ContratoElectro;
                        break;
                }
            }
            else
            {
                switch (contrato.marca_exclusiva_bien)
                {
                    case "KIA":
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoKia;
                        break;
                    case "HYUNDAI":
                        src = _hostingEnvironment.WebRootPath + "/pdf/"+ Constants.ContratoAutoKoreana;
                        break;
                    case "VOLKSWAGEN":
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoColWager;
                        break;

                    default:
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoAuto;
                        break;
                }
            }
            PdfWriter pdfwriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfwriter);
            pdfwriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            _utilities.FillPdf(fields, contrato);

            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;
            return File(stream, "application/pdf", "[Mi Contrato] " + DateTime.Now.ToString("yyyy-MM-dd-") + Constants.ContratoPDF + ".pdf");
        }

        public IActionResult EmailContract(int id)
        {
            MemoryStream stream = new MemoryStream();
            Contrato contrato = _context.Contratos.SingleOrDefault(x => x.IdContrato == id);
            ConfirmacionContrato confirmacionContrato = _context.ConfirmacionContratos.SingleOrDefault(x => x.IdContrato == id);
            if(confirmacionContrato == null)
            {
                confirmacionContrato = new ConfirmacionContrato()
                {
                    IdContrato = contrato.IdContrato,
                    Guuid = Guid.NewGuid().ToString(),
                    IsAccepted = false,
                    IsIdUploaded = false,
                    IsPaid = false
                };
            }            
            string src = "";
            if (contrato.id_compania.Equals(Constants.GuuidElectro))
            {
                switch (contrato.marca_exclusiva_bien)
                {
                    case "YAMAHA":
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoMotoMas;
                        break;
                    default:
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoElectro;
                        break;
                }

            }
            else
            {
                switch (contrato.marca_exclusiva_bien)
                {
                    case "KIA":
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoKia;
                        break;
                    case "HYUNDAI":
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoAutoKoreana;
                        break;
                    case "VOLKSWAGEN":
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoColWager;
                        break;

                    default:
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoAuto;
                        break;
                }
            }
            //string src = _hostingEnvironment.WebRootPath + "/pdf/autofinanciera_contrato_v.1.1_20180717.pdf";
            PdfWriter pdfwriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfwriter);
            pdfwriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            _utilities.FillPdf(fields, contrato);



            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;
            EmailService emailService = new EmailService(_emailConfiguration);
            EmailMessage emailMessage = new EmailMessage();
            CanonicalUrlService canonicalUrlService = new CanonicalUrlService(_canonicalUrlConfiguration);
            
            string srcTemplate = "";
            if (contrato.id_compania.Equals(Constants.GuuidElectro))
            {

                emailMessage.FromAddresses = new List<EmailAddress>()
                {
                    new EmailAddress{Name = "Mi Contrato Electroplan", Address = "tienda@autofinanciera.com.co" }
                };
                    emailMessage.ToAddresses = new List<EmailAddress>()
                {
                    new EmailAddress{Name = contrato.primer_nombre + " " + contrato.primer_apellido, Address = contrato.email_suscriptor }
                };
                emailMessage.Subject = "[ELECTROPLAN] Mi Contrato - Aceptación condiciones del contrato";
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
                emailMessage.FromAddresses = new List<EmailAddress>()
                {
                    new EmailAddress{Name = "Mi Contrato Autofinanciera", Address = "tienda@autofinanciera.com.co" }
                };
                    emailMessage.ToAddresses = new List<EmailAddress>()
                {
                    new EmailAddress{Name = contrato.primer_nombre + " " + contrato.primer_apellido, Address = contrato.email_suscriptor }
                };
                emailMessage.Subject = "[AUTOFINANCIERA] Mi Contrato - Aceptación condiciones del contrato";
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

            emailMessage.Content = String.Format(
                _utilities.GetTemplate(srcTemplate),
                canonicalUrlService.GetCanonicalUrl() + "ContratoDigital/confirmarcorreo/?guuid=" + confirmacionContrato.Guuid + "&id=" + confirmacionContrato.Id);

            try
            {
                emailService.Send(emailMessage, stream, Constants.ContratoPDF);
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
            if (contrato.id_compania.Equals(Constants.GuuidElectro))
            {
                src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ReciboElectro;
            }
            else
            {
                src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ReciboAuto;
            }
            PdfWriter pdfwriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfwriter);
            pdfwriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            _utilities.FillRecibo(fields, contrato);
            
            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;

            EmailService emailService = new EmailService(_emailConfiguration);
            EmailMessage emailMessage = new EmailMessage();            
            

            string srcTemplate = "";
            if (contrato.id_compania.Equals(Constants.GuuidElectro))
            {
                emailMessage.FromAddresses = new List<EmailAddress>()
                {
                    new EmailAddress{Name = "Mi Contrato Electroplan", Address = "tienda@autofinanciera.com.co" }
                };
                    emailMessage.ToAddresses = new List<EmailAddress>()
                {
                    new EmailAddress{Name = contrato.primer_nombre + " " + contrato.primer_apellido, Address = contrato.email_suscriptor }
                };
                emailMessage.Subject = "[ELECTROPLAN] Mi Contrato - Recibo de pago";
                switch (contrato.marca_exclusiva_bien)
                {
                    case "YAMAHA":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaMotoMas.html";
                        break;
                    case "AUTECO - BAJAJ":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaBajaj.html";
                        break;
                    case "AUTECO - KAWASAKI":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaKawasaki.html";
                        break;
                    case "AUTECO - KTM":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaKtm.html";
                        break;
                    default:
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaElectroplan.html";
                        break;
                }
            }
            else
            {
                emailMessage.FromAddresses = new List<EmailAddress>()
                {
                    new EmailAddress{Name = "Mi Contrato Autofinanciera", Address = "tienda@autofinanciera.com.co" }
                };
                    emailMessage.ToAddresses = new List<EmailAddress>()
                {
                    new EmailAddress{Name = contrato.primer_nombre + " " + contrato.primer_apellido, Address = contrato.email_suscriptor }
                };
                emailMessage.Subject = "[AUTOFINANCIERA] Mi Contrato - Recibo de pago";
                switch (contrato.marca_exclusiva_bien)
                {
                    case "KIA":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaKiaPlan.html";
                        break;
                    case "HYUNDAI":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaAutokoreana.html";
                        break;
                    case "VOLKSWAGEN":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaAutofinanciera.html";
                        break;
                    default:
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaAutofinanciera.html";
                        break;
                }
            }
            if(contrato.ConfirmacionContratos != null)
            {
                emailMessage.Content = String.Format(_utilities.GetTemplate(srcTemplate), String.Format("{0:dd 'de' MM 'del' yyyy}", contrato.ConfirmacionContratos.FechaAceptacion));
            }
            else
            {
                emailMessage.Content = String.Format(_utilities.GetTemplate(srcTemplate), "Aún no ha sido confirmado");
            }
            

            try
            {
                emailService.Send(emailMessage, stream, Constants.ReciboPagoPDF);
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
            ConfirmacionContrato confirmacionContrato = _context.ConfirmacionContratos.SingleOrDefault(x => x.Id == id);
            //ConfirmacionContrato confirmacionContrato = await _context.ConfirmacionContratos.SingleOrDefaultAsync(x => x.Id == id);
            //WebserviceController webservice = new WebserviceController(_context,_emailConfiguration,_hostingEnvironment, _utilities, _userManager);
            //string referenciaPago = webservice.GenerarReferenciaPago(confirmacionContrato.Contrato.id_compania, confirmacionContrato.Contrato.documento_identidad_suscriptor.ToString(), confirmacionContrato.Contrato.valor_primer_pago, confirmacionContrato.IdContrato).Result.Value;
            //dynamic json = JsonConvert.DeserializeObject<dynamic>(referenciaPago);
            if (confirmacionContrato.Guuid.Equals(guuid) && confirmacionContrato.IsAccepted.Equals(false))
            {
                confirmacionContrato.IsAccepted = true;
                confirmacionContrato.FechaAceptacion = DateTime.Now;
                confirmacionContrato.FechaReferenciaPago = DateTime.Now;
                //confirmacionContrato.ReferenciaPago = json.First.ReferenciaPago; //referenciaPago;                

                await _context.SaveChangesAsync();
                ViewData["IsConfirmed"] = true;

                MemoryStream stream = new MemoryStream();

                Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == confirmacionContrato.IdContrato);
                string src = "";
                if (contrato.id_compania.Equals(Constants.GuuidElectro))
                {
                    src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ReciboElectro;

                }
                else
                {
                    src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ReciboAuto;
                }
                PdfWriter pdfwriter = new PdfWriter(stream);
                PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfwriter);
                pdfwriter.SetCloseStream(false);

                PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
                IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();
                
                _utilities.FillRecibo(fields, contrato);
                
                pdfForm.FlattenFields();
                pdf.Close();
                stream.Flush();
                stream.Position = 0;

                EmailService emailService = new EmailService(_emailConfiguration);
                EmailMessage emailMessage = new EmailMessage();                
                

                string srcTemplate = "";
                if (contrato.id_compania.Equals(Constants.GuuidElectro))
                {
                    emailMessage.FromAddresses = new List<EmailAddress>()
                    {
                        new EmailAddress{Name = "Mi Contrato Electroplan", Address = "tienda@autofinanciera.com.co" }
                    };
                        emailMessage.ToAddresses = new List<EmailAddress>()
                    {
                        new EmailAddress{Name = contrato.primer_nombre + " " + contrato.primer_apellido, Address = contrato.email_suscriptor }
                    };
                    emailMessage.Subject = "[ELECTROPLAN] Mi Contrato - Factura Digital PDF";
                    switch (contrato.marca_exclusiva_bien)
                    {
                        case "YAMAHA":
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaMotoMas.html";
                            break;
                        case "AUTECO - BAJAJ":
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaBajaj.html";
                            break;
                        case "AUTECO - KAWASAKI":
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaKawasaki.html";
                            break;
                        case "AUTECO - KTM":
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaKtm.html";
                            break;
                        default:
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaElectroplan.html";
                            break;
                    }
                }
                else
                {
                    emailMessage.FromAddresses = new List<EmailAddress>()
                    {
                        new EmailAddress{Name = "Mi Contrato Autofinanciera", Address = "tienda@autofinanciera.com.co" }
                    };
                        emailMessage.ToAddresses = new List<EmailAddress>()
                    {
                        new EmailAddress{Name = contrato.primer_nombre + " " + contrato.primer_apellido, Address = contrato.email_suscriptor }
                    };
                    emailMessage.Subject = "[AUTOFINANCIERA] Mi Contrato - Factura Digital PDF";
                    switch (contrato.marca_exclusiva_bien)
                    {
                        case "KIA":
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaKiaPlan.html";
                            break;
                        case "HYUNDAI":
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaAutokoreana.html";
                            break;
                        case "VOLKSWAGEN":
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaAutofinanciera.html";
                            break;
                        default:
                            srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/Factura/FacturaAutofinanciera.html";
                            break;
                    }
                }
                if(contrato.ConfirmacionContratos != null)
                {
                    if(contrato.ConfirmacionContratos.FechaAceptacion > new DateTime())
                    {
                        emailMessage.Content = String.Format(_utilities.GetTemplate(srcTemplate), String.Format("{0:dd-MM-yyyy}", contrato.ConfirmacionContratos.FechaAceptacion));
                    }
                    
                }
                else
                {
                    emailMessage.Content = String.Format(_utilities.GetTemplate(srcTemplate), "Aún no ha sido confirmado");
                }
                
                emailService.Send(emailMessage, stream, Constants.ReciboPagoPDF);   

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
            if (contrato.id_compania.Equals(Constants.GuuidElectro))
            {
                src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ReciboElectro;

            }
            else
            {
                src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ReciboAuto;
            }
            PdfWriter pdfwriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfwriter);
            pdfwriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            _utilities.FillRecibo(fields, contrato);

            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;
            return File(stream, "application/pdf", "[Mi Contrato] " + DateTime.Now.ToString("yyyy-MM-dd-") + Constants.ReciboPagoPDF + ".pdf");
        }

        public async Task<IActionResult> GenerateReference(int id)
        {
            Contrato contrato = _context.Contratos.SingleOrDefault(x => x.IdContrato == id);
            Status status = new Status(_context);
            ViewData["TipoIdentificacionSuscriptor"] = status.GetStatusName(int.Parse(contrato.tipo_documento_identidad_suscriptor));
            return View(contrato);            
        }

        [HttpPost]
        public async Task<IActionResult> GenerateReference(IFormCollection form)
        {
            Contrato contrato = _context.Contratos.SingleOrDefault(x => x.IdContrato == int.Parse(form["idcontrato"]));
            if(contrato != null)
            {
                WebserviceController webservice = new WebserviceController(_context, _emailConfiguration, _hostingEnvironment, _utilities, _userManager);
                string referenciaPago = webservice.GenerarReferenciaPago(contrato.id_compania, contrato.documento_identidad_suscriptor.ToString(), double.Parse(form["abono"]), contrato.IdContrato).Result.Value;
                dynamic json = JsonConvert.DeserializeObject<dynamic>(referenciaPago);

                RecibosPago reciboPago = new RecibosPago()
                {
                    Monto = int.Parse(form["abono"]),
                    IdContrato = contrato.IdContrato,
                    FechaEmision = DateTime.Now,
                    ReferenciaSiicon = json.First.ReferenciaPago
                };
                _context.RecibosPago.Add(reciboPago);

                await _context.SaveChangesAsync();
                return RedirectToAction("Details", new { id = contrato.IdContrato });
            }
            else
            {
                return RedirectToAction("Details", new { id = contrato.IdContrato, error = 56 });
            }
            
        }

        public IActionResult Find(int errorid)
        {
            if (errorid == 1)
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


            if (!String.IsNullOrEmpty(nombre))
            {

                // Search Query Using FullText-Search Index
                var splitted = nombre.ToUpper().Split(' ');
                string searchQuery = "";
                for (int i = 0; i < splitted.Count(); i++)
                {
                    searchQuery += $"\"*" + splitted[i] + $"*\"";
                    if (i < splitted.Count() - 1)
                    {
                        searchQuery += " OR ";
                    }
                }
                return View(await _context.Contratos.FromSql($"SELECT * FROM Contratos WHERE CONTAINS(primer_nombre, {searchQuery}) OR  CONTAINS(primer_apellido, {searchQuery}) OR CONTAINS(segundo_nombre, {searchQuery}) OR  CONTAINS(segundo_apellido, {searchQuery}) OR  numero_de_contrato = {numeroContrato} OR documento_identidad_suscriptor = {numeroDocumento}")
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

        public IActionResult UploadId(int id)
        {
            //Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == id);
            UploadId upload = new UploadId();
            upload.IdContrato = id;
            return View(upload);
        }

        [HttpPost]
        public async Task<IActionResult> UploadId(UploadId upload)
        {
            //int.TryParse(s: form["IdContrato"], result: out int idContrato);

            //Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == upload.IdContrato);
            //var anverso = upload.Anverso;
            DocumentoIdentidad documentoIdentidad = _context.DocumentoIdentidad.SingleOrDefault(x => x.IdContrato == upload.IdContrato);
            ConfirmacionContrato confirmarContrato = _context.ConfirmacionContratos.SingleOrDefault(x => x.IdContrato == upload.IdContrato);
            if(documentoIdentidad != null)
            {                
                documentoIdentidad.FechaAdjunto = DateTime.Now;
                documentoIdentidad.IsRemoteUploadEnabled = false;
            }
            else
            {
                documentoIdentidad = new DocumentoIdentidad
                {
                    IdContrato = upload.IdContrato,
                    FechaAdjunto = DateTime.Now,
                    IsRemoteUploadEnabled = false
                };
            }

           
            if (upload.Anverso != null || upload.Anverso.ContentType.ToLower().StartsWith("image/"))
            {
                using (MemoryStream stream = new MemoryStream())
                {
                    upload.Anverso.OpenReadStream().CopyTo(stream);
                    documentoIdentidad.Anverso = Convert.ToBase64String(stream.ToArray());
                }
            }
            if (upload.Reverso != null || upload.Reverso.ContentType.ToLower().StartsWith("image/"))
            {
                using (MemoryStream stream = new MemoryStream())
                {
                    upload.Reverso.OpenReadStream().CopyTo(stream);
                    documentoIdentidad.Reverso = Convert.ToBase64String(stream.ToArray());
                }
            }
            if(documentoIdentidad.IdDocumentoIdentidad <= 0 )
            {
                await _context.DocumentoIdentidad.AddAsync(documentoIdentidad);
            }
            if( !string.IsNullOrEmpty(documentoIdentidad.Anverso) && !string.IsNullOrEmpty(documentoIdentidad.Reverso))
            {
                confirmarContrato.IsIdUploaded = true;
                await _context.SaveChangesAsync();
            }
            
            return RedirectToAction("Details", "ContratoDigital", new { id = documentoIdentidad.IdContrato, status = 10 });
        }

        public async Task<IActionResult> RequestRemoteUpload(int idContrato)
        {
            DocumentoIdentidad documentoIdentidad = await _context.DocumentoIdentidad.SingleOrDefaultAsync(x => x.IdContrato == idContrato);
            Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == idContrato);
            
            if(documentoIdentidad != null)
            {
                documentoIdentidad.IsRemoteUploadEnabled = true;
                documentoIdentidad.Guuid = Guid.NewGuid().ToString();
                await _context.SaveChangesAsync();
            }
            else
            {
                documentoIdentidad = new DocumentoIdentidad();
                documentoIdentidad.IsRemoteUploadEnabled = true;
                documentoIdentidad.Guuid = Guid.NewGuid().ToString();
                documentoIdentidad.IdContrato = contrato.IdContrato;
                await _context.DocumentoIdentidad.AddAsync(documentoIdentidad);
                await _context.SaveChangesAsync();
            }
            
            
            EmailService emailService = new EmailService(_emailConfiguration);
            EmailMessage emailMessage = new EmailMessage();
            CanonicalUrlService canonicalUrlService = new CanonicalUrlService(_canonicalUrlConfiguration);
            

            string srcTemplate = "";
            if (contrato.id_compania.Equals(Constants.GuuidElectro))
            {
                emailMessage.FromAddresses = new List<EmailAddress>()
                {
                    new EmailAddress{Name = "Mi Contrato Electroplan", Address = "tienda@autofinanciera.com.co" }
                 };
                    emailMessage.ToAddresses = new List<EmailAddress>()
                {
                    new EmailAddress{Name = contrato.primer_nombre + " " + contrato.primer_apellido, Address = contrato.email_suscriptor }
                };
                emailMessage.Subject = "[ELECTROPLAN] Mi Contrato - Diligenciar documento de identidad";
                switch (contrato.marca_exclusiva_bien)
                {
                    case "YAMAHA":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/DocumentoRemoto/DocumentoMotoMas.html";
                        break;
                    case "AUTECO - BAJAJ":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/DocumentoRemoto/DocumentoBajaj.html";
                        break;
                    case "AUTECO - KAWASAKI":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/DocumentoRemoto/DocumentoKawasaki.html";
                        break;
                    case "AUTECO - KTM":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/DocumentoRemoto/DocumentoKtm.html";
                        break;
                    default:
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/DocumentoRemoto/DocumentoElectroplan.html";
                        break;
                }
            }
            else
            {
                emailMessage.FromAddresses = new List<EmailAddress>()
                {
                    new EmailAddress{Name = "Mi Contrato Autofinanciera", Address = "tienda@autofinanciera.com.co" }
                 };
                    emailMessage.ToAddresses = new List<EmailAddress>()
                {
                    new EmailAddress{Name = contrato.primer_nombre + " " + contrato.primer_apellido, Address = contrato.email_suscriptor }
                };
                emailMessage.Subject = "[AUTOFINANCIERA] Mi Contrato - Diligenciar documento de identidad";
                switch (contrato.marca_exclusiva_bien)
                {
                    case "KIA":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/DocumentoRemoto/DocumentoKiaPlan.html";
                        break;
                    case "HYUNDAI":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/DocumentoRemoto/DocumentoAutokoreana.html";
                        break;
                    case "VOLKSWAGEN":
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/DocumentoRemoto/DocumentoAutofinanciera.html";
                        break;
                    default:
                        srcTemplate = _hostingEnvironment.WebRootPath + "/emailtemplates/DocumentoRemoto/DocumentoAutofinanciera.html";
                        break;
                }
            }

            emailMessage.Content = String.Format(
                _utilities.GetTemplate(srcTemplate),
               canonicalUrlService.GetCanonicalUrl() + "ContratoDigital/RemoteUpload/?guuid=" + documentoIdentidad.Guuid + "&id=" + documentoIdentidad.IdDocumentoIdentidad);


            try
            {
                emailService.Send(emailMessage);
                TempData["EmailResult"] = "Success";
            }
            catch (Exception ex)
            {
                TempData["EmailResult"] = "Ha ocurrido un error: " + ex.Message;
            }
            TempData.Keep("EmailResult");

            return RedirectToAction("Details", "ContratoDigital", new { id = documentoIdentidad.IdContrato, status = 10 });
        }

        [AllowAnonymous]
        public async Task<IActionResult> RemoteUpload(string guuid, int id)
        {
            DocumentoIdentidad documentoIdentidad = await _context.DocumentoIdentidad.SingleOrDefaultAsync(x => x.IdDocumentoIdentidad == id);
            if (documentoIdentidad.Guuid.Equals(guuid) && documentoIdentidad.IsRemoteUploadEnabled)
            {
                ViewData["IsRemoteUploadAllowed"] = true;
                UploadId upload = new UploadId();
                upload.IdContrato = documentoIdentidad.IdContrato;
                ViewData["DocumentoIdentidad"] = documentoIdentidad;
                return View(upload);
            }
            ViewData["IsRemoteUploadAllowed"] = false;
            return View();            
        }        

        [AllowAnonymous][HttpPost]
        public async Task<IActionResult> RemoteUpload(UploadId upload)
        {

            DocumentoIdentidad documentoIdentidad = await _context.DocumentoIdentidad.SingleOrDefaultAsync(x => x.IdContrato == upload.IdContrato);
            ConfirmacionContrato confirmarContrato = _context.ConfirmacionContratos.SingleOrDefault(x => x.IdContrato == upload.IdContrato);
            /*DocumentoIdentidad documentoIdentidad = new DocumentoIdentidad
            {
                IdContrato = upload.IdContrato,
                FechaAdjunto = DateTime.Now,
                IsRemoteUploadEnabled = false
            };*/
            if (upload.Anverso != null || upload.Anverso.ContentType.ToLower().StartsWith("image/"))
            {
                using (MemoryStream stream = new MemoryStream())
                {
                    upload.Anverso.OpenReadStream().CopyTo(stream);
                    documentoIdentidad.Anverso = Convert.ToBase64String(stream.ToArray());
                }
            }
            if (upload.Reverso != null || upload.Reverso.ContentType.ToLower().StartsWith("image/"))
            {
                using (MemoryStream stream = new MemoryStream())
                {
                    upload.Reverso.OpenReadStream().CopyTo(stream);
                    documentoIdentidad.Reverso = Convert.ToBase64String(stream.ToArray());
                }
            }
            //await _context.DocumentoIdentidad.AddAsync(documentoIdentidad);
            documentoIdentidad.FechaAdjunto = DateTime.Now;
            documentoIdentidad.IsRemoteUploadEnabled = false;
            if (!string.IsNullOrEmpty(documentoIdentidad.Anverso) && !string.IsNullOrEmpty(documentoIdentidad.Reverso))
            {
                confirmarContrato.IsIdUploaded = true;
                await _context.SaveChangesAsync();
            }
            
            return RedirectToAction("ConfirmRemoteUpload", "ContratoDigital", new { status = 100 });
            
        }

        [AllowAnonymous]
        public IActionResult ConfirmRemoteUpload(string status)
        {
            return View();
        }

        public async Task<IActionResult> ListByStatus()
        {
            List<Contrato> contratos = await  _context.Contratos.Where(x => 
            x.ConfirmacionContratos.IsAccepted == false ||
            x.ConfirmacionContratos.IsPaid == false ||
            x.ConfirmacionContratos.IsIdUploaded == false ||
            x.ConfirmacionContratos.IsVerified == false
            ).ToListAsync();
            return View(contratos);
        }

        public async Task<IActionResult> ListClosed()
        {
            List<Contrato> contratos = await _context.Contratos.Where(x =>
           x.ConfirmacionContratos.IsAccepted == true &&
           x.ConfirmacionContratos.IsPaid == true &&
           x.ConfirmacionContratos.IsIdUploaded == true &&
           x.ConfirmacionContratos.IsVerified == true
            ).ToListAsync();
            return View(contratos);
        }

        public IActionResult YamahaMotomas()
        {
            return View();
        }

        [HttpPost]        
        public IActionResult YamahaMotomas(IFormCollection form)
        {
            MemoryStream stream = new MemoryStream();

            string src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ContratoMotoMas;
            PdfWriter pdfwriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfwriter);
            pdfwriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            Contrato contrato = _utilities.FillContrato(form);
            _utilities.FillPdf(fields, contrato);

            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;
            return File(stream, "application/pdf", "AlgunaCosa.pdf");
        }

        /*public async Task<IActionResult> RegisterSiicon(int id)
        {
            Status status = new Status(_context);
            var contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == id);
            PersonaSiicon personaSiicon = new PersonaSiicon();
            personaSiicon.TipoPersonaId = 2;
            personaSiicon.CiudadConstitucionId = _utilities.PadWithZeroes( status.GetCiudadSiiconId( int.Parse(contrato.procedencia_documento_identidad_suscriptor)).ToString(), 5);
            personaSiicon.FechaConstitucion = String.Format("{0:MM/dd/yyyy}",contrato.fecha_suscripcion_contrato);
            personaSiicon.PrimerNombre = contrato.primer_nombre;
            personaSiicon.SegundoNombre = contrato.segundo_nombre;
            personaSiicon.PrimerApellido = contrato.primer_apellido;
            personaSiicon.SegundoApellido = contrato.segundo_apellido;
            personaSiicon.RazonSocial = contrato.nombre_razon_social_representante_legal;
            personaSiicon.TipoDocumentoIdentidadId = int.Parse(contrato.tipo_documento_identidad_suscriptor);
            personaSiicon.NumeroDocumento = contrato.documento_identidad_suscriptor.ToString();
            personaSiicon.CiudadExpedicionId = _utilities.PadWithZeroes(status.GetCiudadSiiconId(int.Parse(contrato.procedencia_documento_identidad_suscriptor)).ToString(), 5);
            personaSiicon.FechaNacimiento = String.Format("{0:MM/dd/yyyy}",contrato.fecha_nacimiento_suscriptor);
            personaSiicon.CiudadNacimientoId = _utilities.PadWithZeroes(status.GetCiudadSiiconId(int.Parse(contrato.ciudad_suscriptor)).ToString(), 5);
            personaSiicon.SexoId = int.Parse(contrato.sexo_suscriptor);
            personaSiicon.EstadoCivilId = int.Parse(contrato.estado_civil_suscriptor);
            personaSiicon.Email = contrato.email_suscriptor;
            personaSiicon.DireccionNotifiacion = contrato.direccion_domicilio_suscriptor;
            personaSiicon.BarrioNotifiacion = contrato.direccion_domicilio_suscriptor;
            personaSiicon.TelefonoNotifiacion = contrato.telefono_suscriptor;
            personaSiicon.CelularNotificacion = contrato.celular_suscriptor;
            personaSiicon.DepartamentoNotificacionId = int.Parse(status.GetDepartamentoSiiconID( int.Parse(contrato.departamento_suscriptor)));
            personaSiicon.CiudadNotificacionId = _utilities.PadWithZeroes(status.GetCiudadSiiconId(int.Parse(contrato.ciudad_suscriptor)).ToString(), 5);
            personaSiicon.EmpresaLabora = contrato.empresa_empleadora_suscriptor;
            personaSiicon.CargoLabora = contrato.cargo_suscriptor;
            personaSiicon.DireccionLabora = contrato.direccion_empleo_suscriptor;
            personaSiicon.BarrioLabora = contrato.direccion_empleo_suscriptor;
            personaSiicon.TelefonoLabora = contrato.telefono_empleo_suscriptor;
            personaSiicon.CelularOficina = contrato.celular_empleo_suscriptor;
            personaSiicon.DepartamentoLaboraId = int.Parse(status.GetDepartamentoSiiconID(int.Parse(contrato.departamento_empleo_suscriptor)));
            personaSiicon.CiudadLaboraId =_utilities.PadWithZeroes(status.GetCiudadSiiconId(int.Parse(contrato.ciudad_empleo_suscriptor)).ToString(), 5);
            personaSiicon.IngresoMensual = (int)contrato.ingresos_mensuales_suscriptor;
            personaSiicon.EgresoMensual = (int)contrato.egresos_mensuales_suscriptor;
            personaSiicon.Profesion = contrato.profesion_suscriptor;
            personaSiicon.TerceroId = Constants.GuuidUsuarioSiicon;
            WebserviceController service = new WebserviceController(_context, _emailConfiguration, _hostingEnvironment, _utilities);
            string result = service.CreatePersonaSiicon(personaSiicon).Result.Value;
            ViewData["ResultWS"] = result;

            //return RedirectToAction("Details", "ContratoDigital", new { id });
            return View();
        }*/


        #region
        // _utilities Local Methods
        void GetStatusList()
        {
            ViewData["TipoIdentidad"] = _context.Estados.Where(x => x.TipoEstado.IdTipoEstado == (int)Constants.Estados.TipoIdentificacion);
            ViewData["Sexo"] = _context.Estados.Where(x => x.TipoEstado.IdTipoEstado == (int)Constants.Estados.Sexo);
            ViewData["EstadoCivil"] = _context.Estados.Where(x => x.TipoEstado.IdTipoEstado == (int)Constants.Estados.EstadoCivil);
            ViewData["Departamento"] = _context.Estados.Where(x => x.TipoEstado.IdTipoEstado == (int)Constants.Estados.Departamento);
        }
        #endregion
    }
}