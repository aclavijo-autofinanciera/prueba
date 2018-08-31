using System;
using ContratoDigital.Areas.Identity.Data;
using ContratoDigital.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

[assembly: HostingStartup(typeof(ContratoDigital.Areas.Identity.IdentityHostingStartup))]
namespace ContratoDigital.Areas.Identity
{
    public class IdentityHostingStartup : IHostingStartup
    {
        public void Configure(IWebHostBuilder builder)
        {
            builder.ConfigureServices((context, services) => {
                services.AddDbContext<UsuariosContext>(options =>
                options.UseSqlServer(context.Configuration.GetConnectionString("UsuariosContextConnection")));
                //options.UseSqlServer("Data Source=localhost;Initial Catalog=Usuarios;Integrated Security=True"));
                //context.Configuration.GetConnectionString("UsuariosContextConnection")));

                services.AddDefaultIdentity<ContratoDigitalUser>(options =>
                {
                    options.Password.RequireDigit = false;
                    options.Password.RequiredLength = 6;
                    options.Password.RequiredUniqueChars = 0;
                    options.Password.RequireLowercase = false;
                    options.Password.RequireNonAlphanumeric = false;
                    options.Password.RequireUppercase = false;
                    options.SignIn.RequireConfirmedEmail = false;
                    options.SignIn.RequireConfirmedPhoneNumber = false;

                })
                    .AddRoles<IdentityRole>()
                    .AddRoleManager<RoleManager<IdentityRole>>()
                    .AddEntityFrameworkStores<UsuariosContext>();
                    
            });
        }
    }
}