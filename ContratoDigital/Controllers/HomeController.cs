using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;

using ContratoDigital.Models;

using iText.Forms;
using iText.Forms.Fields;
using iText.Kernel.Pdf;
using ContratoDigital.Data;
using Microsoft.AspNetCore.Authorization;
using ContratoDigital.Areas.Identity.Data;
using Microsoft.AspNetCore.Identity;

namespace ContratoDigital.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        /// <summary>
        ///  Constructor de la clase, que coloca los recursos web estáticos en el alcance de la aplicación .net.
        ///  e inicializa la base de datos
        /// </summary>
        private readonly IHostingEnvironment _hostingEnvironment;        
        
        private readonly ContratoDigitalContext _context;        
        private readonly RoleManager<IdentityRole> _roleManager;        
        private readonly UserManager<ContratoDigitalUser> _userManager;
        

        public HomeController(IHostingEnvironment hostingEnvironment, ContratoDigitalContext context, RoleManager<IdentityRole> roleManager, UserManager<ContratoDigitalUser> userManager)
        {
            _hostingEnvironment = hostingEnvironment;
            _context = context;            
            _roleManager = roleManager;
            _userManager = userManager;
        }

        public IActionResult Index()
        {
            return View();
        }

        [Authorize]
        public async Task<IActionResult> About()
        {

            /*IdentityRole role = new IdentityRole();
            role.Name = "Asesor";
            await _roleManager.CreateAsync(role);

            IdentityRole role2 = new IdentityRole();
            role2.Name = "Gerente";
            await _roleManager.CreateAsync(role2);

            IdentityRole role3 = new IdentityRole();
            role3.Name = "Gerente Regional";
            await _roleManager.CreateAsync(role3);*/

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

        
        private async Task CreateRolesAndUsers()
        {
            // Create admin Super User
            //Create Admin Role
            var role = new IdentityRole();
            role.Name = "Asesor";
            await _roleManager.CreateAsync(role);

            var role2 = new IdentityRole();
            role2.Name = "Gerente";
            await _roleManager.CreateAsync(role2);

            var role3 = new IdentityRole();
            role3.Name = "Gerente Regional";
            await _roleManager.CreateAsync(role3);


            try
            {
                


                //bool x = await _roleManager.RoleExistsAsync("Administrador");
                //var user = new ContratoDigitalUser();
                //user.UserName = "Madrid";
                //user.Email = "juanpabloalviar@gmail.com";
                //user.EmailConfirmed = true;
                //string userPwd = "SanLorenzo2018$";
                //IdentityResult chkUser = await _userManager.CreateAsync(user, userPwd);
                //if (chkUser.Succeeded)
                //{
                //    var result1 = await _userManager.AddToRoleAsync(user, "Administrador");
                //}
                //ViewData["Message"] = "USuario Creado.";
                /*if (!x)
                {
                    //Create Admin Role
                    /*var role = new IdentityRole();
                    role.Name = "Administrador";
                    await _roleManager.CreateAsync(role);*/


                /*var user = new ContratoDigitalUser();
                user.UserName = "Madrid";
                user.Email = "juanpabloalviar@gmail.com";
                string userPwd = "SanLorenzo2018$";
                IdentityResult chkUser = await _userManager.CreateAsync(user, userPwd);
                if (chkUser.Succeeded)
                {
                    var result1 = await _userManager.AddToRoleAsync(user, "Administrador");
                }
            }*/

            }
            catch (Exception ex)
            {
                var perol = ex.Message;
                ViewData["Message"] = ex.Message;
            }





        }
    }
}
