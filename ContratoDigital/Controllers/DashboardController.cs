using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using ContratoDigital.Areas.Identity.Data;
using ContratoDigital.Data;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace ContratoDigital.Controllers
{
    [Authorize]    
    public class DashboardController : Controller
    {
        private readonly ContratoDigitalContext _context;
        private readonly UserManager<ContratoDigitalUser> _userManager;
        private readonly IHostingEnvironment _hostingEnvironment;
        private readonly IEmailConfiguration _emailConfiguration;
        private readonly Utilities _utilities;
        private readonly ICanonicalUrlConfiguration _canonicalUrlConfiguration;
        public DashboardController(IHostingEnvironment hostingEnvironment, ContratoDigitalContext context, IEmailConfiguration emailConfiguration, Utilities utilities, UserManager<ContratoDigitalUser> userManager, ICanonicalUrlConfiguration canonicalUrlConfiguration)
        {
            _hostingEnvironment = hostingEnvironment;
            _context = context;
            _emailConfiguration = emailConfiguration;
            _userManager = userManager;
            _utilities = utilities;
            _canonicalUrlConfiguration = canonicalUrlConfiguration;

        }

        /// <summary>
        /// Vista principal del dashboard.
        /// </summary>
        /// <returns></returns>
        public IActionResult Index()
        {                        
            bool isAdmin = _userManager.IsInRoleAsync(_userManager.Users.SingleOrDefault(x => x.Id == _userManager.GetUserId(User)), "Administrador").Result;         
            if (!isAdmin)
            {                
                return RedirectToAction("AccessDenied", "Home");
            }
            return View();
        }

        #region Users
        /// <summary>
        /// listado principal de todos los usuarios registrados en el sistema
        /// </summary>
        /// <returns></returns>
        public IActionResult Users()
        {
            bool isAdmin = _userManager.IsInRoleAsync(_userManager.Users.SingleOrDefault(x => x.Id == _userManager.GetUserId(User)), "Administrador").Result;
            if (!isAdmin)
            {
                return RedirectToAction("AccessDenied", "Home");
            }
            return View();
        }

        /// <summary>
        /// Acción de añadir un usuario. En esta se utiliza el SIICON de base para la comprobación
        /// </summary>
        /// <returns></returns>
        public IActionResult AddUser()
        {
            bool isAdmin = _userManager.IsInRoleAsync(_userManager.Users.SingleOrDefault(x => x.Id == _userManager.GetUserId(User)), "Administrador").Result;
            if (!isAdmin)
            {
                return RedirectToAction("AccessDenied", "Home");
            }
            return View(new ContratoDigitalUser());
        }

        /// <summary>
        /// Método Post para la creación de los usuarios en el aplicativo basados en la permisología del Siicon
        /// </summary>
        /// <param name="form"></param>
        /// <returns></returns>
        [HttpPost]
        public async Task<IActionResult> AddUser(IFormCollection form)
        {
            bool isAdmin = _userManager.IsInRoleAsync(_userManager.Users.SingleOrDefault(x => x.Id == _userManager.GetUserId(User)), "Administrador").Result;
            if (!isAdmin)
            {
                return RedirectToAction("AccessDenied", "Home");
            }
            var user = new ContratoDigitalUser();
            user.UserName = form["UserName"];
            user.Email = form["Email"];
            user.EmailConfirmed = true;

            user.Nombre = form["Nombre"];
            user.Apellido = form["Apellido"];
            int.TryParse(s: form["Agencia"], result:  out int agencia);            
            user.Cedula = form["Cedula"];
            string userPwd = form["Password"];
            user.Agencia = agencia;
            user.DescripcionAgencia = form["DescripcionAgencia"];

            WebserviceController service = new WebserviceController(_context, _emailConfiguration,_hostingEnvironment, _utilities, _userManager, _canonicalUrlConfiguration);
            string resultSiicon = service.GetSiiconUserId(user.Cedula).Result.Value;            
            string resultAsesor = service.GetAsesorId(user.Cedula).Result.Value;

            string first = resultSiicon;
            string second = resultAsesor;

            if (!String.IsNullOrEmpty(resultSiicon) && resultSiicon != "[]")
            {
                dynamic jsonSiicon = JsonConvert.DeserializeObject<dynamic>(resultSiicon);
                user.IdSiicon = jsonSiicon.First.TerceroId;
            }
            else
            {
                user.IdSiicon = ""; 
            }
            if(!String.IsNullOrEmpty(resultAsesor) && resultAsesor!="[]")
            {
                dynamic jsonAsesor = JsonConvert.DeserializeObject<dynamic>(resultAsesor);
                user.Asesor = jsonAsesor.First.CodAsesor;
            }
            else
            {
                user.Asesor = 0;
            }

            if(user.Asesor.Equals(0) && String.IsNullOrEmpty(user.IdSiicon))
            {
                ViewData["Error"] = "El usuario no pudo ser creado por que no tiene un usuario o número de asesor asignado en el SIICON";
                return View(user);                
            }

            IdentityResult chkUser = await _userManager.CreateAsync(user, userPwd);
            if (chkUser.Succeeded)
            {
                var result = await _userManager.AddToRoleAsync(user, form["Rol"]);
            }
            return RedirectToAction("UserDetails", "Dashboard", new { id = user.UserName });
        }

        /// <summary>
        /// Vista detalle del usuario.
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public IActionResult UserDetails(string id)
        {
            bool isAdmin = _userManager.IsInRoleAsync(_userManager.Users.SingleOrDefault(x => x.Id == _userManager.GetUserId(User)), "Administrador").Result;
            if (!isAdmin)
            {
                return RedirectToAction("AccessDenied", "Home");
            }
            ContratoDigitalUser user = _userManager.FindByNameAsync(id).Result;
            if(user != null)
            {
                return View(user);
            }
            else
            {
                ViewData["Error"] = "El usuario no existe";
                return View(new ContratoDigitalUser());
            }
            
        }
        #endregion


    }
}