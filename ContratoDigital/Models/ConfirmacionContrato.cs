using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class ConfirmacionContrato
    {
        [Key]
        public int Id { get; set; }
        public int IdContrato { get; set; }
        public string Guuid { get; set; }
        public bool IsIdUploaded { get; set; }
        public bool IsAccepted { get; set; }
        public bool IsPaid { get; set; }
        public bool IsVerified { get; set; }
        public DateTime FechaVerificacion { get; set; }
        public DateTime FechaAceptacion { get; set; }
        public DateTime FechaPago { get; set; }

        public virtual Contrato Contrato { get; set; }
    }
}
