using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class PagoManual
    {
        [Key]
        public int IdPagoManual { get; set; }
        public int IdContrato { get; set; }
        public int IdTipoPago { get; set; }
        public string TipoPago { get; set; }
        public double Monto { get; set; }
        public int IdCuentaBancaria { get; set; }
        public string CuentaBancaria { get; set; }
        public string Referencia { get; set; }
        public DateTime FechaPago { get; set; }  
        public string Numero { get; set; }
        public int IdConcesionario { get; set; }
        public string Concesionario { get; set; }

        public virtual Contrato Contrato { get; set; }
    }
}
