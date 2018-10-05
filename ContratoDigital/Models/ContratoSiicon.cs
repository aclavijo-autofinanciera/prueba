using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class ContratoSiicon
    {
        public int Contrato { get; set; }
        public int Persona1Id { get; set; }
        public int Persona2Id { get; set; }
        public string FechaAdhesion{get;set;}
        public int CodAgencia { get; set; }
        public int CodAsesor { get; set; }
        public int CodConvenio { get; set; }
        public int CodConcesionario { get; set; }
        public int TipoMedioId { get; set; }
        public int MedioId { get; set; }
        public int MedioFechaID { get; set; }
        public int CodTipoBien { get; set; }
        public int BienId { get; set; }
        public int ValorBien { get; set; }
        public int CodMarca { get; set; }
        public int TipoBienParametroId { get; set; }
        public float PorcentajeInscripcion { get; set; }
        public float PorcentajeAdministracion { get; set; }
        public int DescuentoId { get; set; }
        public float PorcentajeDescuento { get; set; }
        public int MontoInscripcion { get; set; }
        public int MontoInscripcionIVA { get; set; }
        public int plazo { get; set; }
        public int MontoAdministracion { get; set; }
        public int MontoAdministracionIVA { get; set; }
        public int CuotaNeta { get; set; }
        public string SuscriptorReferente { get; set; }
        public int TipoventaID { get; set; }
        public string FechaCierre { get; set; }
        public string CompañiaID { get; set; }
        public string TerceroId { get; set; }

    }
}
