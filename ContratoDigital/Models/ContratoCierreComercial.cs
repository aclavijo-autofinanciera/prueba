using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class ContratoCierreComercial
    {
        public string PrimerNombre { get; set; }
        public string SegundoNombre { get; set; }
        public string PrimerApellido { get; set; }
        public string SegundoApellido { get; set; }
        public int TipoDocumentoIdentidadId { get; set; }
        public string NumeroDocumento { get; set; }
        public int Contrato { get; set; }
        public int CodTipoBien { get; set; }
        public int TipoMedioId { get; set; }
        public int MedioId { get; set; }
        public int CodAgencia { get; set; }
        public int CodAsesor { get; set; }
        public string FechaAdhesion { get; set; }
        public int ValorBien { get; set; }
        public int TotalValorAPagar { get; set; }
        public int CodConcesionario { get; set; }
        public int CodMarca { get; set; }
        public string FechaCierre { get; set; }
        public string CompaniaId { get; set; }
        public string TerceroId { get; set; }        
    }
}
