using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;

namespace ContratoDigital.Areas.Identity.Data
{
    // Add profile data for application users by adding properties to the ContratoDigitalUser class
    public class ContratoDigitalUser : IdentityUser
    {
        [PersonalData]
        public string Nombre { get; set; }

        [PersonalData]
        public string Apellido { get; set; }

        [PersonalData]
        public int Agencia { get; set; }

        [PersonalData]
        public string DescripcionAgencia { get; set; }

        [PersonalData]
        public string IdSiicon { get; set; }

        [PersonalData]
        public int Asesor { get; set; }

        [PersonalData]
        public string Cedula { get; set; }

        //[PersonalData]
        //public bool IsBlocked { get; set; }


    }
}
