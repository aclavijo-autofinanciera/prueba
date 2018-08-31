using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class ConfirmacionProspecto
    {
        [Key]
        public int Id { get; set; }
        public int IdProspecto { get; set; }
        public string Guuid { get; set; }
        public bool IsConfirmed { get; set; }
        public DateTime FechaConfirmacion { get; set; }

        public int TipoMedio { get; set; }
        public string DescripcionTipoMedio { get; set; }
        public int Medio { get; set; }
        public string DescripcionMedio { get; set; }
        public int TipoCliente { get; set; }
        public string DescripcionTipoCliente { get; set; }
        public int Agencia { get; set; }
        public string DescripcionAgencia { get; set; }
        public int Asesor { get; set; }
        public string UserId{get;set;}

        public virtual Prospecto Prospecto { get; set; }
        
    }
}
