 using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using ContratoDigital.Areas.Identity.Data;
using ContratoDigital.Data;
using ContratoDigital.Models;
using iText.Forms;
using iText.Forms.Fields;
using iText.Kernel.Pdf;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
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
        private readonly ICanonicalUrlConfiguration _canonicalUrlConfiguration;
        private readonly Utilities _utilities;
        private readonly UserManager<ContratoDigitalUser> _userManager;
        public ProspectosController(ContratoDigitalContext context, IHostingEnvironment hostingEnvironment, IEmailConfiguration emailConfiguration, ICanonicalUrlConfiguration canonicalUrlConfiguration, UserManager<ContratoDigitalUser> userManager)
        {
            _context = context;
            _hostingEnvironment = hostingEnvironment;
            _emailConfiguration = emailConfiguration;
            _canonicalUrlConfiguration = canonicalUrlConfiguration;
            _userManager = userManager;
            _utilities = new Utilities(_context, _userManager);
        }

        public async Task<IActionResult> Index()
        {            
            return View(await _context.Prospectos
                .Where(x=> x.ConfirmacionProspecto.UserId == _userManager.GetUserId(User))
                .OrderByDescending(x => x.IdProspecto)
                .ToListAsync());
        }

        public IActionResult Create()
        {
            List<Estado> estadosList = _context.Estados.Where(x=>x.TipoEstado.IdTipoEstado == (int)Constants.Estados.TipoIdentificacion).ToList();
            ViewData["TipoIdentidadList"] = estadosList;
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Create(IFormCollection form)
        {
            Prospecto prospecto = _utilities.FillProspecto(form);
            _context.Prospectos.Add(prospecto);
            await _context.SaveChangesAsync();
            ConfirmacionProspecto confirmacionProspecto = new ConfirmacionProspecto()
            {
                IdProspecto = prospecto.IdProspecto,
                Guuid = Guid.NewGuid().ToString(),
                IsConfirmed = false,
                Agencia = int.Parse(form["Agencia"]),
                DescripcionAgencia = form["AgenciaDescripcion"],
                TipoMedio = int.Parse(form["TipoMedio"]),
                DescripcionTipoMedio = form["TipoMedioDescripcion"],
                Medio = int.Parse(form["TipoMedioAgencia"]),
                DescripcionMedio = form["TipoMedioAgenciaDescripcion"],
                TipoCliente = int.Parse(form["TipoCliente"]),
                DescripcionTipoCliente = form["TipoClienteDescripcion"],
                UserId = _userManager.GetUserId(User)
            };            
            _context.ConfirmacionProspectos.Add(confirmacionProspecto);
            await _context.SaveChangesAsync();
            try
            {
               
            }
            catch(Exception ex)
            {
                string value = ex.Message;
            }
            
            EmailService emailService = new EmailService(_emailConfiguration);
            EmailMessage emailMessage = new EmailMessage();
            CanonicalUrlService urlService = new CanonicalUrlService(_canonicalUrlConfiguration);

            emailMessage.FromAddresses = new List<EmailAddress>()
            {
                new EmailAddress{Name = "Mi Contrato Autofinanciera", Address = "tienda@autofinanciera.com.co"}
            };
            emailMessage.ToAddresses = new List<EmailAddress>()
            {
                new EmailAddress{Name = prospecto.PrimerNombre + " " + prospecto.SegundoNombre + " " + prospecto.PrimerApellido + " " + prospecto.SegundoApellido, Address = prospecto.Email }
            };
            

            string src = "";
            if (prospecto.IdCompania.Equals(Constants.GuuidElectro))
            {
                emailMessage.Subject = "[ELECTROPLAN] Mi Contrato - Verificación de correo electrónico";
                switch (prospecto.Marca_exclusiva_bien)
                {
                    case "YAMAHA":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailMotoMas.html";
                        break;
                    case "AUTECO - BAJAJ":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailBajaj.html";
                        break;
                    case "AUTECO - KAWASAKI":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailKawasaki.html";
                        break;
                    case "AUTECO - KTM":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailKtm.html";
                        break;
                    
                    default:
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailElectroplan.html";
                        break;
                }
            }
            else
            {
                emailMessage.Subject = "[AUTOFINANCIERA] Mi Contrato - Verificación de correo electrónico";
                switch (prospecto.Marca_exclusiva_bien)
                {
                    case "KIA":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailKiaPlan.html";
                        break;
                    case "HYUNDAI":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailAutokoreana.html";
                        break;
                    case "VOLKSWAGEN":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailAutofinanciera.html";
                        break;
                    default:
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailAutofinanciera.html";
                        break;
                }
            }

            emailMessage.Content = String.Format(
                _utilities.GetTemplate(src),
                urlService.GetCanonicalUrl() + "Prospectos/confirmarcorreo/?guuid=" + confirmacionProspecto.Guuid + "&id=" + confirmacionProspecto.Id);

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

        public async Task<IActionResult> EmailConfirmacion(int id)
        {
            Prospecto prospecto = await _context.Prospectos.SingleOrDefaultAsync(x => x.IdProspecto == id);
            EmailService emailService = new EmailService(_emailConfiguration);
            EmailMessage emailMessage = new EmailMessage();
            CanonicalUrlService canonicalUrlService = new CanonicalUrlService(_canonicalUrlConfiguration);
            emailMessage.FromAddresses = new List<EmailAddress>()
            {
                new EmailAddress{Name = "Mi Contrato Autofinanciera", Address = "tienda@autofinanciera.com.co"}
            };
            emailMessage.ToAddresses = new List<EmailAddress>()
            {
                new EmailAddress{Name = prospecto.PrimerNombre + " " + prospecto.SegundoNombre + " " + prospecto.PrimerApellido + " " + prospecto.SegundoApellido, Address = prospecto.Email }
            };


            string src = "";
            if (prospecto.IdCompania.Equals(Constants.GuuidElectro))
            {
                emailMessage.Subject = "[ELECTROPLAN] Mi Contrato - Verificación de correo electrónico";
                switch (prospecto.Marca_exclusiva_bien)
                {
                    case "YAMAHA":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailMotoMas.html";
                        break;
                    case "AUTECO - BAJAJ":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailBajaj.html";
                        break;
                    case "AUTECO - KAWASAKI":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailKawasaki.html";
                        break;
                    case "AUTECO - KTM":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailKtm.html";
                        break;

                    default:
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailElectroplan.html";
                        break;
                }
            }
            else
            {
                emailMessage.Subject = "[AUTOFINANCIERA] Mi Contrato - Verificación de correo electrónico";
                switch (prospecto.Marca_exclusiva_bien)
                {
                    case "KIA":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailKiaPlan.html";
                        break;
                    case "HYUNDAI":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailAutokoreana.html";
                        break;
                    case "VOLKSWAGEN":
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailAutofinanciera.html";
                        break;
                    default:
                        src = _hostingEnvironment.WebRootPath + "/emailtemplates/ConfirmacionCorreo/ConfirmacionEmailAutofinanciera.html";
                        break;
                }
            }

            emailMessage.Content = String.Format(
                _utilities.GetTemplate(src),
                canonicalUrlService.GetCanonicalUrl() + "Prospectos/confirmarcorreo/?guuid=" + prospecto.ConfirmacionProspecto.Guuid + "&id=" + prospecto.ConfirmacionProspecto.Id);
            

            try
            {
                emailService.Send(emailMessage);
                TempData["EmailResult"] = "Success";
            }
            catch (Exception ex)
            {
                TempData["EmailResult"] = "Ha ocurrido un error: " + ex.Message;
            }
            TempData.Keep("EmailREsult");
            return RedirectToAction("Details", "Prospectos", new { id = prospecto.IdProspecto });
        }

        public async Task<IActionResult> Details(int id)
        {
            var prospectos = await _context.Prospectos.SingleOrDefaultAsync(x => x.IdProspecto == id);
            Status status = new Status(_context);
            ViewData["TipoIdDescripcion"] = status.GetStatusName(prospectos.TipoDocumentoIdentidad);
            return View(prospectos);
        }

        public async Task<IActionResult> Edit(int id)
        {
            List<Estado> estadosList = _context.Estados.Where(x => x.TipoEstado.IdTipoEstado == (int)Constants.Estados.TipoIdentificacion).ToList();
            ViewData["TipoIdentidadList"] = estadosList;
            return View(await _context.Prospectos.SingleOrDefaultAsync(x=>x.IdProspecto == id));
        }

        [HttpPost]
        public async Task<IActionResult> Edit(IFormCollection form)
        {
            Prospecto prospecto = _context.Prospectos.SingleOrDefault(x => x.IdProspecto == int.Parse(form["IdProspecto"]));
            prospecto.ConfirmacionProspecto.Agencia = int.Parse(form["Agencia"]);
            prospecto.ConfirmacionProspecto.DescripcionAgencia = form["AgenciaDescripcion"];
            prospecto.ConfirmacionProspecto.TipoMedio = int.Parse(form["TipoMedio"]);
            prospecto.ConfirmacionProspecto.DescripcionTipoMedio = form["TipoMedioDescripcion"];
            prospecto.ConfirmacionProspecto.Medio = int.Parse(form["TipoMedioAgencia"]);
            prospecto.ConfirmacionProspecto.DescripcionMedio = form["TipoMedioAgenciaDescripcion"];
            prospecto.ConfirmacionProspecto.TipoCliente = int.Parse(form["TipoCliente"]);
            prospecto.ConfirmacionProspecto.DescripcionTipoCliente = form["TipoClienteDescripcion"];
            prospecto.ConfirmacionProspecto.UserId = _userManager.GetUserId(User);            
            prospecto = _utilities.UpdateProspecto(form, prospecto);
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

        public async Task<IActionResult> FindAll()
        {
            bool isAdmin = _userManager.IsInRoleAsync(_userManager.Users.SingleOrDefault(x => x.Id == _userManager.GetUserId(User)), "Administrador").Result;
            if (!isAdmin)
            {
                return RedirectToAction("AccessDenied", "Identity/Account");
            }
            return View(await _context.Prospectos
                .OrderByDescending(x => x.IdProspecto).ToListAsync());
        }

        [HttpPost]
        public async Task<IActionResult> Find(IFormCollection form)
        {
            ViewData["NumeroDocumento"] = form["NumeroDocumento"];
            ViewData["Nombre"] = form["Nombre"];

            int.TryParse(form["NumeroDocumento"], out int numeroDocumento);
            string nombre = form["Nombre"];
            if(!String.IsNullOrEmpty(nombre))
            {
                var splitted = nombre.ToUpper().Split(' ');
                string searchQuery = "";
                for(int i = 0; i< splitted.Count(); i++)
                {
                    searchQuery += $"\"*" + splitted[i] + "*\"";
                    if(i<splitted.Count()-1)
                    {
                        searchQuery += " OR ";
                    }
                }
                return View(await _context.Prospectos.FromSql($"SELECT * FROM  Prospectos WHERE CONTAINS(PrimerNombre,{searchQuery} ) OR CONTAINS(SegundoNombre, {searchQuery}) OR CONTAINS(PrimerApellido, {searchQuery}) OR CONTAINS(SegundoApellido, {searchQuery}) OR NumeroDocumento =  {numeroDocumento}")
                    .OrderByDescending(x => x.IdProspecto).ToListAsync());
            }
            else
            {
                return View(await _context.Prospectos.Where(x =>
                x.NumeroDocumento == numeroDocumento)
                    .OrderByDescending(x => x.IdProspecto).ToListAsync());
            }
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
            if (prospecto.IdCompania.Equals(Constants.GuuidElectro))
            {
                srcPdf = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.CotizacionElectro;
            }
            else
            {
                srcPdf = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.CotizacionAuto;
            }

            PdfWriter pdfWriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(srcPdf), pdfWriter);
            pdfWriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            _utilities.FillPdf(fields, prospecto);

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
            if (prospecto.IdCompania.Equals(Constants.GuuidElectro))
            {
                srcPdf = _hostingEnvironment.WebRootPath + "/pdf/"+ Constants.CotizacionElectro;
            }
            else
            {
                srcPdf = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.CotizacionAuto;
            }
                

            PdfWriter pdfWriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(srcPdf), pdfWriter);
            pdfWriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            _utilities.FillPdf(fields, prospecto);

            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;
            EmailService emailService = new EmailService(_emailConfiguration);
            EmailMessage emailMessage = new EmailMessage();
            emailMessage.FromAddresses = new List<EmailAddress>()
            {
                new EmailAddress{Name = "Mi Contrato Autofinanciera", Address = "tienda@autofinanciera.com.co"}
            };
            emailMessage.ToAddresses = new List<EmailAddress>()
            {
                new EmailAddress{Name = prospecto.PrimerNombre + " " + prospecto.SegundoNombre + " " + prospecto.PrimerApellido + " " + prospecto.SegundoApellido, Address = prospecto.Email }
            };            

            string src = "";
            if (prospecto.IdCompania.Equals(Constants.GuuidElectro))
            {
                emailMessage.Subject = "[ELECTROPLAN] Mi Contrato - Cotización plan de ahorro programado";
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
                emailMessage.Subject = "[AUTOFINANCIERA] Mi Contrato - Cotización plan de ahorro programado";
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

            emailMessage.Content = String.Format(_utilities.GetTemplate(src));
            try
            {
                emailService.Send(emailMessage, stream, Constants.CotizacionPDF);
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