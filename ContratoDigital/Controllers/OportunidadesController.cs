using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ContratoDigital.Models;
using Microsoft.AspNetCore.Mvc;

namespace ContratoDigital.Controllers
{
    public class OportunidadesController : Controller
    {
        public OportunidadesController()
        {

        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult CargaMasiva()
        {
            return View();
        }

        [HttpPost]
        public IActionResult CargaMasiva(PlainText _plaintext)
        {
            return  View();
        }


    }
}