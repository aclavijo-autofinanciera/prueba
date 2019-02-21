using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class PagoManualSiicon
    {
        public int TipoPagoId { get; set; }
        public DateTime FechaPago { get; set; }
        public int CodCuentaBancaria { get; set; }
        public int monto { get; set; }
        public string Referencia { get; set; }
        public string Numero { get; set; }
        public int CodConcesionario { get; set; }
        public int ContratoId { get; set; }
        public int Contrato { get; set; }
        public string TerceroGeneradorId { get; set; }
        public string CompañiaId { get; set; }
    }
}
