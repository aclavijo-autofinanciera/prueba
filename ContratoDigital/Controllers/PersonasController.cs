using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

using ContratoDigital.Data;
using Microsoft.AspNetCore.Hosting;

namespace ContratoDigital.Controllers
{
    public class PersonasController : Controller
    {
        /// <summary>
        ///  Constructor de la clase, que coloca los recursos web estáticos en el alcance de la aplicación .net.
        ///  e inicializa la base de datos
        /// </summary>
        private readonly IHostingEnvironment _hostingEnvironment;
        private readonly ContratoDigitalContext _context;
        public PersonasController(IHostingEnvironment hostingEnvironment, ContratoDigitalContext context)
        {
            _hostingEnvironment = hostingEnvironment;
            _context = context;
        }


        public IActionResult Index()
        {
            /*List<Persona> personas = new List<Persona>();
            using (var db = new ContratoDigitalContext())
            {
                personas = db.Personas.ToList();
            }*/
            return View();
        }

        public IActionResult Create()
        {
            return View();
        }

        public IActionResult Find()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Find(IFormCollection form)
        {
            return View();
        }


    }
}