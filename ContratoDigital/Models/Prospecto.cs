using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class Prospecto
    {
        [Key]
        public int IdProspecto { get; set; }
        public string PrimerNombre { get; set; }
        public string SegundoNombre { get; set; }
        public string PrimerApellido { get; set; }
        public string SegundoApellido { get; set; }
        public int TipoDocumentoIdentidad { get; set; }
        public int NumeroDocumento { get; set; }
        public string Telefono { get; set; }
        public string Celular { get; set; }
        public string Email { get; set; }
        public int Referencia { get; set; }
        public string DescripcionDelBien { get; set; }
        public double ValorDelBien { get; set; }
        public double CuotaDeIngreso { get; set; }
        public double IvaCuotaIngreso { get; set; }
        public double TotalCuotaIngreso { get; set; }
        public double PrimeraCuotaNeta { get; set; }
        public double Administracion { get; set; }
        public double IvaAdministracion { get; set; }
        public double TotalCuotaBruta { get; set; }
        public double ValorTotalPrimerPago { get; set; }

        public virtual ICollection<Contrato> Contratos { get; set; }
        public virtual ICollection<ConfirmacionProspecto> ConfirmacionProspecto {get; set;}
    }
}
