using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class TipoEstado
    {
        [Key]
        public int IdTipoEstado { get; set; }
        public string Descripcion { get; set; }

        public virtual ICollection<Estado> Estados { get; set; }
        public virtual ICollection<Ciudades> Ciudades { get; set; }
    }
}
