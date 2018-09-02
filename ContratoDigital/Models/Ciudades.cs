using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class Ciudades
    {
        [Key]
        public int IdCiudad { get; set; }
        public int IdTipoEstado { get; set; }
        public int IdSiicon { get; set; }
        public int IdDepartamentoSiicon { get; set; }
        public string Descripcion { get; set; }

        //public virtual TipoEstado TipoEstado {get;set;}

    }
}
