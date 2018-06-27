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

namespace ContratoDigital.Controllers
{
    public class ContratoDigitalController : Controller
    {
        /// <summary>
        ///  Constructor de la clase, que coloca los recursos web estáticos en el alcance de la aplicación .net.
        ///  e inicializa la base de datos
        /// </summary>
        private readonly ContratoDigitalContext _context;
        private readonly IHostingEnvironment _hostingEnvironment;
        public ContratoDigitalController(IHostingEnvironment hostingEnvironment, ContratoDigitalContext context)
        {
            _hostingEnvironment = hostingEnvironment;
            _context = context;
        }

        public IActionResult Index()
        {
            return View();
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
            _context.Add(contrato);
            await _context.SaveChangesAsync();
            return RedirectToAction("Details", "ContratoDigital", new { id = contrato.IdContrato });
        }

        public async Task<IActionResult> Details(int id)
        {
            return View(await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == id));
        }

        public async Task<IActionResult> Generate(int id)
        {
            MemoryStream stream = new MemoryStream();

            string src = _hostingEnvironment.WebRootPath + "/pdf/electroplan_yamaha_motomas_contrato_v1.1_20180601.pdf";
            PdfWriter pdfwriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfwriter);
            pdfwriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            //Contrato contrato = Utilities.FillContrato(form);
            Contrato contrato = await _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == id);
            Utilities.FillPdf(fields, contrato);

            

            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;
            return File(stream, "application/pdf", "AlgunaCosa.pdf");
        }

        public async Task<IActionResult> Pay(int id)
        {
            MemoryStream stream = new MemoryStream();

            if (string.IsNullOrWhiteSpace(_hostingEnvironment.WebRootPath))
            {
                _hostingEnvironment.WebRootPath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot");
            }
            string src = _hostingEnvironment.WebRootPath + "/pdf/recibopago.pdf";
            PdfWriter pdfwriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfwriter);
            pdfwriter.SetCloseStream(false);

            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();

            //Contrato contrato = Utilities.FillContrato(form);
            Contrato contrato = await  _context.Contratos.SingleOrDefaultAsync(x => x.IdContrato == id);
            //Utilities.FillPdf(fields, contrato);

            PdfFormField toSet;

            // Número de contrato
            fields.TryGetValue("CodigoBarras", out toSet);
            //toSet.SetValue(Utilities.GenerateCode128("4157709998014350802000000172097016433900019830909620180630"));
            //toSet.SetValue(Utilities.GenerateCode128("4157709998014350802000000180625000393900000010009620180628"));
            toSet.SetValue(Utilities.GenerateCode128("415" + Constants.ConvenioElectro + "8020" + "0000018062500039" + "3900" + "00001000" + "96" + "20180628"));

            fields.TryGetValue("CodigoBarrasPlano", out toSet);
            //toSet.SetValue("(415)7709998014350(8020)0000017209701643(3900)01983090(96)20180630");
            toSet.SetValue("(415)" + Constants.ConvenioElectro + "(8020)" + "0000018062500039" + "(3900)" + "00001000" + "(96)" + "20180628"); //+ "(415)7709998014350(8020)0000018062500039(3900)00001000(96)20180628");
                                                         

            fields.TryGetValue("NombreSuscriptor", out toSet);
            //toSet.SetValue(contrato.primer_nombre + " " +contrato.segundo_nombre + " " + contrato.primer_apellido + " " + contrato.segundo_apellido);
            toSet.SetValue("Juan Pablo Alviar");

            fields.TryGetValue("DireccionSuscriptor", out toSet);
            toSet.SetValue(contrato.direccion_domicilio_suscriptor);

            fields.TryGetValue("TelefonoSuscriptor", out toSet);
            toSet.SetValue(contrato.telefono_suscriptor);

            fields.TryGetValue("CelularSuscriptor", out toSet);
            toSet.SetValue(contrato.celular_suscriptor);

            fields.TryGetValue("CiudadSuscriptor", out toSet);
            toSet.SetValue(contrato.ciudad_suscriptor);

            fields.TryGetValue("DescripcionBien", out toSet);
            //toSet.SetValue(contrato.detalles_bien);
            toSet.SetValue("Kia Stinger 2018");

            fields.TryGetValue("ValorBien", out toSet);
            //toSet.SetValue(String.Format("{0:0,0.00}", contrato.valor_bien));
            toSet.SetValue("$ 120.000.000");

            fields.TryGetValue("CuotaIngreso", out toSet);
            //toSet.SetValue(String.Format("{0:0,0.00}", contrato.cuota_ingreso));

            fields.TryGetValue("IvaCuotaIngreso", out toSet);
            //toSet.SetValue(String.Format("{0:0,0.00}",contrato.iva_cuota_ingreso));

            fields.TryGetValue("TotalCuotaIngreso", out toSet);
            //toSet.SetValue(String.Format("{0:0,0.00}",contrato.total_cuota_ingreso));

            fields.TryGetValue("PrimeraCuotaNeta", out toSet);
            //toSet.SetValue(String.Format("{0:0,0.00}", contrato.primera_cuota_neta));

            fields.TryGetValue("Administracion", out toSet);
            //toSet.SetValue(String.Format("{0:0,0.00}",contrato.administracion));

            fields.TryGetValue("IvaAdministracion", out toSet);
            //toSet.SetValue(String.Format("{0:0,0.00}", contrato.iva_administracion));

            fields.TryGetValue("TotalCuotaBruta", out toSet);
            //toSet.SetValue(String.Format("{0:0,0.00}",contrato.total_cuota_bruta));

            fields.TryGetValue("ValorTotalPrimerPago", out toSet);
            //toSet.SetValue(String.Format("{0:0,0.00}", contrato.valor_primer_pago));
            toSet.SetValue("$ 1000.00");

            fields.TryGetValue("TotalAPagar", out toSet);
            //toSet.SetValue(String.Format("Total a pagar: {0:0,0.00}", contrato.valor_primer_pago));
            toSet.SetValue("$ 1000.00");

            fields.TryGetValue("ReferenciaDePago", out toSet);
            toSet.SetValue("Referencia de pago:  18062500039");

            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;
            //return File(stream, "application/pdf", "AlgunaCosa.pdf");
            return File(stream, "application/pdf", DateTime.Now.ToString("yyyy-MM-dd-") + "ReciboPago.pdf");

            //return View(await _context.Contratos.SingleOrDefaultAsync(x=>x.IdContrato == id));
        }

        public IActionResult Find()
        {
            return View();
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