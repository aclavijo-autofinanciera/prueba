using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class Pagos
    {
        [Key]
        public int IdPago { get; set; }
        public double Monto { get; set; }
        public int IdContrato { get; set; }
        public DateTime FechaPago { get; set; }
        public string ReferenciaSiicon { get; set; }

        public virtual Contrato Contrato { get; set; }
    }
}
