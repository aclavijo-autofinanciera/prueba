using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class RecibosPago
    {
        [Key]
        public int IdRecibo { get; set; }
        public double Monto { get; set; }
        public int IdContrato { get; set; }
        public DateTime FechaEmision {get;set;}
        public string ReferenciaSiicon { get; set; }

        public virtual Contrato Contrato { get; set; }
    }
}
