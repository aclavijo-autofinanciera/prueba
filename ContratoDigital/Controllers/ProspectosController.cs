 using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ContratoDigital.Data;
using ContratoDigital.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

using SiiconWebService;

namespace ContratoDigital.Controllers
{
    [Authorize]
    public class ProspectosController : Controller
    {
        ServiceClient service = new ServiceClient();

        /// <summary>
        ///  Constructor de la clase, que coloca los recursos web estáticos en el alcance de la aplicación .net.
        ///  e inicializa la base de datos
        /// </summary>
        private readonly ContratoDigitalContext _context;
        private readonly IHostingEnvironment _hostingEnvironment;
        private readonly IEmailConfiguration _emailConfiguration;
        public ProspectosController(ContratoDigitalContext context, IHostingEnvironment hostingEnvironment, IEmailConfiguration emailConfiguration)
        {
            _context = context;
            _hostingEnvironment = hostingEnvironment;
            _emailConfiguration = emailConfiguration;
        }

        public async Task<IActionResult> Index()
        {            
            return View(await _context.Prospectos
                .OrderByDescending(x => x.IdProspecto)
                .Take(10).ToListAsync());
        }

        public IActionResult Create()
        {            
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Create(IFormCollection form)
        {
            Prospecto prospecto = Utilities.FillProspecto(form);
            _context.Prospectos.Add(prospecto);
            await _context.SaveChangesAsync();
            ConfirmacionProspecto confirmacionProspecto = new ConfirmacionProspecto()
            {
                IdProspecto = prospecto.IdProspecto,
                Guuid = Guid.NewGuid().ToString(),
                IsConfirmed = false
            };            
            _context.ConfirmacionProspectos.Add(confirmacionProspecto);
            try
            {
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
                new EmailAddress{Name = "Test Administrative", Address = "tienda@autofinanciera.com.co"}
            };
            emailMessage.ToAddresses = new List<EmailAddress>()
            {
                new EmailAddress{Name = prospecto.PrimerNombre + " " + prospecto.SegundoNombre + " " + prospecto.PrimerApellido + " " + prospecto.SegundoApellido, Address = prospecto.Email }
            };
            emailMessage.Subject = "[AutoFinanciera] Confirmación de Email";
                        
#if DEBUG
            emailMessage.Content = String.Format(
                Utilities.GetTemplate(_hostingEnvironment.WebRootPath + "/emailtemplates/EmailProspecto.html"),
                Utilities.GetTemplate(_hostingEnvironment.WebRootPath + "/css/foundationemail.min.css"),
                "http://localhost:53036/Prospectos/confirmarcorreo/?guuid=" + confirmacionProspecto.Guuid + "&id=" + confirmacionProspecto.Id);
#endif
#if RELEASE
            emailMessage.Content = String.Format(
                Utilities.GetTemplate(_hostingEnvironment.WebRootPath + "/emailtemplates/EmailProspecto.html"),
                Utilities.GetTemplate(_hostingEnvironment.WebRootPath + "/css/foundationemail.min.css"),
                "http://tienda.autofinanciera.com.co/Prospectos/confirmarcorreo/?guuid==" + confirmacionProspecto.Guuid + "&id=" + confirmacionProspecto.Id); 
           
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
            TempData.Keep("EmailREsult");
            return RedirectToAction("Details", "Prospectos", new { id = prospecto.IdProspecto });            
        }

        [AllowAnonymous]
        public async Task<IActionResult> ConfirmarCorreo(string guuid, int id)
        {
            ConfirmacionProspecto confirmacionProspecto = await _context.ConfirmacionProspectos.SingleOrDefaultAsync(x => x.Id == id);
            if(confirmacionProspecto.Guuid == guuid)
            {
                confirmacionProspecto.IsConfirmed = true;
                confirmacionProspecto.FechaConfirmacion = DateTime.Now;
                await _context.SaveChangesAsync();
                ViewData["IsConfirmed"] = true;
            }
            else
            {
                ViewData["IsConfirmed"] = false;
            }
            return View();
        }

        public async Task<IActionResult> Details(int id)
        {               
            return View(await _context.Prospectos.SingleOrDefaultAsync(x => x.IdProspecto == id));
        }

        public async Task<IActionResult> Edit(int id)
        {
            return View(await _context.Prospectos.SingleOrDefaultAsync(x=>x.IdProspecto == id));
        }

        [HttpPost]
        public async Task<IActionResult> Edit(IFormCollection form)
        {
            Prospecto prospecto = _context.Prospectos.SingleOrDefault(x => x.IdProspecto == int.Parse(form["IdProspecto"]));
            prospecto = Utilities.UpdateProspecto(form, prospecto);
            await _context.SaveChangesAsync();
            return RedirectToAction("Details","Prospectos", new {id = prospecto.IdProspecto });
        }

        public IActionResult Find(int errorid)
        {
            if(errorid == 1)
            {
                ViewData["NoEncontrado"] = "El prospecto no ha sido encontrado. Intenté nuevamente.";
            }
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Find(IFormCollection form)
        {
            ViewData["NumeroDocumento"] = form["NumeroDocumento"];
            ViewData["Nombre"] = form["Nombre"];

            int.TryParse(form["NumeroDocumento"], out int numeroDocumento);
            string nombre = form["Nombre"];

            

            if ( numeroDocumento > 0 && !String.IsNullOrEmpty(nombre) )
            {
                return View(await _context.Prospectos.Where(
                    x =>
                    x.NumeroDocumento == numeroDocumento ||
                    x.PrimerNombre.Contains(nombre.ToUpper()) ||
                    x.PrimerApellido.Contains(nombre.ToUpper()))
                    .ToListAsync()
                );
            }
            else if( numeroDocumento > 0 && String.IsNullOrEmpty(nombre) )
            {
                return View(await _context.Prospectos.Where(
                    x =>
                    x.NumeroDocumento == numeroDocumento)                    
                    .ToListAsync()
                );
            }
            else if(numeroDocumento == 0 && !string.IsNullOrEmpty(nombre) )
            {
                return View(await _context.Prospectos.Where(
                    x =>
                    x.PrimerNombre.Contains(nombre.ToUpper()) ||
                    x.PrimerApellido.Contains(nombre.ToUpper()))
                    .ToListAsync()
                );
            }
            return View();
            
        }

        public IActionResult CargaMasiva()
        {
            return View();
        }

        public IActionResult CheckWebservice()
        {
            //  Autofinanciera 26e0e553-8bb9-41b2-869a-1fddaf06e900
            // Electroplan 6831062e-c994-4686-a989-1964b1200cbc
            // GUID usuario SIICOn 85250b4a-e393-4b0a-b787-51edb8172118
            ViewData["SeleccionarCompanias"] = service.SelecccionarCompañiasAsync().Result;
            ViewData["SeleccionarAgencias"] = service.SelecccionarAgenciasAsync().Result;
            ViewData["SeleccionarMarcas"] = service.SelecccionarMarcasAsync().Result;
            ViewData["SeleccionarTiposBienesCompania"] = service.SelecccionarTiposBienesCompañiaAsync(Constants.GuuidAuto).Result;
            ViewData["SeleccionarPorcentajeAdministracionCompania"] = service.SelecccionarPorcAdministracionCompañiaAsync(Constants.GuuidAuto).Result;
            ViewData["SeleccionarPorcentajeInscripcionCompania"] = service.SelecccionarPorcInscripcionCompañiaAsync(Constants.GuuidAuto).Result;
            ViewData["SeleccionarBienesCompania"] = service.SelecccionarBienesCompañiaAsync(Constants.GuuidAuto, 17, 30).Result;
            ViewData["SeleccionarBienesParametrosCompania"] = service.SeleccionarBienParametrosAsync(Constants.GuuidAuto, 17, 111000000, 0).Result;

            DateTime fecha = new DateTime();
            fecha.AddYears(2018);
            fecha.AddDays(28);
            fecha.AddMonths(6);
            ViewData["ReferenciaPago"] = service.GenerarReferenciaPagoAsync(Constants.GuuidAuto, "1013668411", 1000, 10, Constants.GuuidUsuarioSiicon).Result;
            return View();
        }

        public async Task<IActionResult> Generate(int id)
        {
            Prospecto prospecto = await _context.Prospectos.SingleOrDefaultAsync(x => x.IdProspecto == id);
            MemoryStream stream = new MemoryStream();
            string srcPdf = "";
            if (prospecto.ValorDelBien <= 24999999)
            {
                srcPdf = _hostingEnvironment.WebRootPath + "/pdf/cotizacion-electro-v-1.0-20180803.pdf";
            }
            else
            {
                srcPdf = _hostingEnvironment.WebRootPath + "/pdf/cotizacion-auto-v-1.0-20180803.pdf";
            }

            PdfWriter pdfWriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(srcPdf), pdfWriter);
            pdfWriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            Utilities.FillPdf(fields, prospecto);

            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;
            return File(stream, "application/pdf", prospecto.IdProspecto + "-" + DateTime.Now.ToString("yyyy-MM-dd-")  + "Cotizacion.pdf");
        }

        public async Task<IActionResult> EmailCotizacion(int id)
        {
            MemoryStream stream = new MemoryStream();
            Prospecto prospecto = await _context.Prospectos.SingleOrDefaultAsync(x => x.IdProspecto == id);
            string srcPdf = "";
            if (prospecto.ValorDelBien <= 24999999)
            {
                srcPdf = _hostingEnvironment.WebRootPath + "/pdf/cotizacion-electro-v-1.0-20180803.pdf";
            }
            else
            {
                srcPdf = _hostingEnvironment.WebRootPath + "/pdf/cotizacion-auto-v-1.0-20180803.pdf";
            }
                

            PdfWriter pdfWriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(srcPdf), pdfWriter);
            pdfWriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            Utilities.FillPdf(fields, prospecto);

            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;
            EmailService emailService = new EmailService(_emailConfiguration);
            EmailMessage emailMessage = new EmailMessage();
            emailMessage.FromAddresses = new List<EmailAddress>()
            {
                new EmailAddress{Name = "Test Administrative", Address = "tienda@autofinanciera.com.co"}
            };
            emailMessage.ToAddresses = new List<EmailAddress>()
            {
                new EmailAddress{Name = prospecto.PrimerNombre + " " + prospecto.SegundoNombre + " " + prospecto.PrimerApellido + " " + prospecto.SegundoApellido, Address = prospecto.Email }
            };
            emailMessage.Subject = "Cotización PDF Autofinanciera";

            string src = "";
            if (prospecto.ValorDelBien <= 24999999)
            {
                switch (prospecto.Marca_exclusiva_bien)
                {
                    case "YAMAHA":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/Cotizacion/CotizacionMotoMas.html";
                        break;
                    case "AUTECO - BAJAJ":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/Cotizacion/CotizacionBajaj.html";
                        break;
                    case "AUTECO - KAWASAKI":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/Cotizacion/CotizacionKawasaki.html";
                        break;
                    case "AUTECO - KTM":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/Cotizacion/CotizacionKtm.html";
                        break;

                    default:
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/Cotizacion/CotizacionElectroplan.html";
                        break;
                }
            }
            else
            {
                switch (prospecto.Marca_exclusiva_bien)
                {
                    case "KIA":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/Cotizacion/CotizacionKiaPlan.html";
                        break;
                    case "HYUNDAI":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/Cotizacion/CotizacionAutokoreana.html";
                        break;
                    case "VOLKSWAGEN":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/Cotizacion/CotizacionAutofinanciera.html";
                        break;
                    default:
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/Cotizacion/CotizacionAutofinanciera.html";
                        break;
                }
            }

            emailMessage.Content = String.Format(Utilities.GetTemplate(src));
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
            return RedirectToAction("Details", "Prospectos", new { id = prospecto.IdProspecto });

        }
    }
}