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
        public string ReferenciaPago { get; set; }
        public bool IsIdUploaded { get; set; }
        public bool IsAccepted { get; set; }
        public bool IsPaid { get; set; }
        public bool IsVerified { get; set; }
        public bool IsRegistered { get; set; }
        public DateTime FechaVerificacion { get; set; }
        public DateTime FechaAceptacion { get; set; }
        public DateTime FechaPago { get; set; }
        public DateTime FechaReferenciaPago { get; set; }
        public DateTime FechaRegistro { get; set; }

        public int TipoMedio { get; set; }
        public string DescripcionTipoMedio { get; set; }
        public int Medio { get; set; }
        public string DescripcionMedio { get; set; }
        public int TipoCliente { get; set; }
        public string DescripcionTipoCliente { get; set; }
        public int Agencia { get; set; }
        public string DescripcionAgencia { get; set; }
        public int Asesor { get; set; }
        public string UserId { get; set; }
        public int IdContratoSiicon { get; set; }

        // ID de registro de personas en el Siicon
        public int IdSuscriptor { get; set; }
        public int IdSuscriptorConjunto { get; set; }
        public int IdRepresentanteLegal { get; set; }
        public int IdRepresentanteLegalConjunto { get; set; }

        public virtual Contrato Contrato { get; set; }
    }
}
