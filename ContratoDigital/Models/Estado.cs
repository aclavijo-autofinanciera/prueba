using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class Estado
    {
        [Key]
        public int IdEstado { get; set; }
        public int IdTipoEstado { get; set; }
        public int IdSiicon { get; set; }
        public string Descripcion { get; set; }

        public virtual TipoEstado TipoEstado { get; set; }
    }
}
