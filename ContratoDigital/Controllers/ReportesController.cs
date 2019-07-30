using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using ContratoDigital.Areas.Identity.Data;
using ContratoDigital.Data;
using ContratoDigital.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

using iText.Forms;
using iText.Forms.Fields;
using iText.Kernel.Pdf;
using Microsoft.AspNetCore.Authorization;
using Newtonsoft.Json;

namespace ContratoDigital.Controllers
{
    public class ReportesController : Controller
    {

        private readonly ContratoDigitalContext _context;
        private readonly UserManager<ContratoDigitalUser> _userManager;
        private readonly IHostingEnvironment _hostingEnvironment;
        private readonly IEmailConfiguration _emailConfiguration;
        private readonly ICanonicalUrlConfiguration _canonicalUrlConfiguration;
        private readonly Utilities _utilities;

        public ReportesController(IHostingEnvironment hostingEnvironment, ContratoDigitalContext context, IEmailConfiguration emailConfiguration, ICanonicalUrlConfiguration canonicalUrlConfiguration, UserManager<ContratoDigitalUser> userManager)
        {
            _hostingEnvironment = hostingEnvironment;
            _context = context;
            _emailConfiguration = emailConfiguration;
            _canonicalUrlConfiguration = canonicalUrlConfiguration;
            _userManager = userManager;
            _utilities = new Utilities(_context, _userManager);
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Prospectos()
        {
            return View();
        }

        public IActionResult Contratos()
        {
            return View();
        }

        public IActionResult ReporteLegal(int id)
        {
            if(id > 0)
            {
                var contrato = _context.Contratos.Find(id);
                return View(contrato);
            }
            return View();
        }

        public async Task<IActionResult> GenerateReporteLegal(int id)
        {
            Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == id);
            MemoryStream stream = new MemoryStream();
            string src = "";
            if(contrato.id_compania.Equals(Constants.GuuidElectro))
            {
                switch(contrato.marca_exclusiva_bien)
                {
                    case "YAMAHA":
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ReporteLegalKia;
                        break;
                    default:
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ReporteLegalKia;
                        break;
                }
            }
            else
            {
                switch(contrato.marca_exclusiva_bien)
                {
                    case "KIA":
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ReporteLegalKia;
                        break;
                    case "VOLKSWAGEN":
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ReporteLegalKia;
                        break;
                    default:
                        src = _hostingEnvironment.WebRootPath + "/pdf/" + Constants.ReporteLegalKia;
                        break;
                }
            }
            PdfWriter pdfWriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfWriter);
            pdfWriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            _utilities.FillReporteLegal(fields, contrato);

            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;            


            return File(stream, "application/pdf", "[Qurii] " + DateTime.Now.ToString("yyyy-MM-dd-") + Constants.ReporteLegalPDF + ".pdf");
        }
           

        public IActionResult ARDNumeroContrato()
        {
            return View();
        }

        [HttpPost]
        public IActionResult ARDNumeroContrato(int _numerodecontrato)
        {
            Contrato contrato = _context.Contratos.SingleOrDefault(x => x.numero_de_contrato == _numerodecontrato);
            Status status = new Status(_context);
            if (contrato.ConfirmacionContratos.Asesor != 0)
            {
                WebserviceController webservice = new WebserviceController(_context, _emailConfiguration, _hostingEnvironment, _utilities, _userManager,_canonicalUrlConfiguration);
                ViewData["NombreAsesor"] = webservice.GetNombreAsesor(contrato.id_compania, int.Parse(contrato.agencia), contrato.ConfirmacionContratos.Asesor).Result.Value;
            }

            ViewData["TipoIdentificacionSuscriptor"] = status.GetStatusName(int.Parse(contrato.tipo_documento_identidad_suscriptor));
            ViewData["ProcedenciaIdentificacion"] = status.GetCiudadName(int.Parse(contrato.procedencia_documento_identidad_suscriptor));
            ViewData["SexoSuscriptor"] = status.GetStatusName(int.Parse(contrato.sexo_suscriptor));
            ViewData["EstadoCivilSuscriptor"] = status.GetStatusName(int.Parse(contrato.estado_civil_suscriptor));
            ViewData["DepartamentoSuscriptor"] = status.GetStatusName(int.Parse(contrato.departamento_suscriptor));
            ViewData["CiudadSuscriptor"] = status.GetCiudadName(int.Parse(contrato.ciudad_suscriptor));
            ViewData["DepartamentoLaboralSuscriptor"] = status.GetStatusName(int.Parse(contrato.departamento_empleo_suscriptor));
            ViewData["CiudadLaboralSuscriptor"] = status.GetCiudadName(int.Parse(contrato.ciudad_empleo_suscriptor));
            if (!string.IsNullOrEmpty(contrato.tipo_documento_representante_legal))
            {
                ViewData["TipoIdentificacionLegal"] = status.GetStatusName(int.Parse(contrato.tipo_documento_representante_legal));
            }

            if (contrato.documento_identidad_suscriptor_conjunto > 0)
            {
                ViewData["TipoIdentificacionSuscriptorConjunto"] = status.GetStatusName(int.Parse(contrato.tipo_identidad_suscriptor_conjunto));
                ViewData["SexoSuscriptorConjunto"] = status.GetStatusName(int.Parse(contrato.sexo_suscriptor_conjunto));
                ViewData["EstadoCivilSuscriptorConjunto"] = status.GetStatusName(int.Parse(contrato.estado_civil_suscriptor_conjunto));
                ViewData["DepartamentoSuscriptorConjunto"] = status.GetStatusName(int.Parse(contrato.departamento_suscriptor_conjunto));
                ViewData["CiudadSuscriptorConjunto"] = status.GetCiudadName(int.Parse(contrato.ciudad_suscriptor_conjunto));
                ViewData["DepartamentoLaboralSuscriptorConjunto"] = status.GetStatusName(int.Parse(contrato.departamento_empleo_suscriptor_conjunto));
                ViewData["CiudadLaboralSuscriptorConjunto"] = status.GetCiudadName(int.Parse(contrato.ciudad_empleo_suscriptor_conjunto));
                if (!string.IsNullOrEmpty(contrato.tipo_identidad_representante_legal_suscriptor_conjunto))
                {
                    ViewData["TipoIdentificacionLegalConjunto"] = status.GetStatusName(int.Parse(contrato.tipo_identidad_representante_legal_suscriptor_conjunto));
                }

            }
            ViewData["Estado"] = status.GetStatusName(contrato.ConfirmacionContratos.IdEstado);
            return View(contrato);
        }

        public IActionResult ARDFechas()
        {
            return View();
        }

        [HttpPost]
        public IActionResult ARDFechas(IFormCollection form)
        {
            return View();
        }

        
    }
}