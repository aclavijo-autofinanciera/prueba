using System;
using System.Collections.Generic;
using System.Linq;
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
        public DashboardController(IHostingEnvironment hostingEnvironment, ContratoDigitalContext context, IEmailConfiguration emailConfiguration, UserManager<ContratoDigitalUser> userManager)
        {
            _hostingEnvironment = hostingEnvironment;
            _context = context;
            _emailConfiguration = emailConfiguration;
            _userManager = userManager;           

        }

        
        public IActionResult Index()
        {
            var name = User.Identity.Name;
            bool isAdmin = _userManager.IsInRoleAsync(_userManager.Users.SingleOrDefault(x => x.Id == _userManager.GetUserId(User)), "Administrador").Result;
            if (!isAdmin)
            {
                RedirectToAction("/Identity/Account/AccessDenied");
            }
            return View();
        }

        #region Users
        public IActionResult Users()
        {
            return View();
        }

        public IActionResult AddUser()
        {
            return View(new ContratoDigitalUser());
        }

        [HttpPost]
        public async Task<IActionResult> AddUser(IFormCollection form)
        {
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

            WebserviceController service = new WebserviceController(_context);
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

        public IActionResult UserDetails(string id)
        {
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