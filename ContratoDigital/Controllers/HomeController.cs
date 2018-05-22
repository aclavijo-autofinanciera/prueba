using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using ContratoDigital.Models;
using Microsoft.AspNetCore.Http;

using iText.Forms;
using iText.Forms.Fields;
using iText.Kernel.Pdf;

namespace ContratoDigital.Controllers
{
    public class HomeController : Controller
    {
        private readonly IHostingEnvironment _hostingEnvironment;
        public HomeController(IHostingEnvironment hostingEnvironment)
        {
            _hostingEnvironment = hostingEnvironment;
        }

        public IActionResult Index()
        {
            return View();
        }
        public IActionResult ContratoDigital()
        {
            return View();
        }

        [HttpPost]
        public IActionResult ContratoDigital(IFormCollection form)
        {
            MemoryStream stream = new MemoryStream();

            string src = _hostingEnvironment.WebRootPath + "/pdf/Electroplan_MotoPlus_Contrato.pdf";
            string dest = _hostingEnvironment.WebRootPath + "/pdf/unused.pdf";
            PdfWriter pdfwriter = new PdfWriter(stream);
            PdfDocument pdf = new PdfDocument(new PdfReader(src), pdfwriter);
            pdfwriter.SetCloseStream(false);
            
            PdfAcroForm pdfForm = PdfAcroForm.GetAcroForm(pdf, true);
            IDictionary<String, PdfFormField> fields = pdfForm.GetFormFields();
            //PdfFormField toSet;
            fields.TryGetValue("numero_de_contrato", out PdfFormField toSet);
            toSet.SetValue("Alguna cosa");
            pdfForm.FlattenFields();
            pdf.Close();
            stream.Flush();
            stream.Position = 0;
            return File(stream, "application/pdf", "AlgunaCosa.pdf");



            string contrato = form["numero_contrato"];
            return View();
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
