using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace ContratoDigital.Controllers
{
    public class ContratoDigitalController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}