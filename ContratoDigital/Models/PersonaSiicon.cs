using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class PersonaSiicon
    {
        [Key]
        public int TipoIdentificacionRepreLegalId { get; set; } // EXCEL ANEXO
        public int TipoPersonaId { get; set; } //, EXCEL ANEXO        
        public string NumeroIdentificacionRepreLegal { get; set; } //, (TEXTO)
        public int CiudadConstitucionId { get; set; } //, EXCEL ANEXO
        public string FechaConstitucion { get; set; } //, (TEXTO = MM / DD / AAAA) Si aplica
        public string PrimerNombre { get; set; } //, (TEXTO) Solo persona natural
        public string SegundoNombre { get; set; } // , (TEXTO) Solo persona natural
        public string PrimerApellido { get; set; } //, (TEXTO) Solo persona natural
        public string SegundoApellido { get; set; } //, (TEXTO) Solo persona natural
        public string RazonSocial { get; set; } // , (TEXTO) Solo persona jurídica
        public int TipoDocumentoIdentidadId { get; set; } //, EXCEL ANEXO
        public string NumeroDocumento { get; set; } // , (TEXTO)
        public string DigitoVerificacion { get; set; } //, (TEXTO) Solo persona jurídica
        public int CiudadExpedicionId { get; set; } //, EXCEL ANEXO
        public string FechaNacimiento { get; set; } //, (TEXTO = MM / DD / AAAA) Si aplica
        public int CiudadNacimientoId { get; set; } //, EXCEL ANEXO
        public int SexoId { get; set; } //, EXCEL ANEXO
        public int EstadoCivilId { get; set; } //, EXCEL ANEXO
        public string Email { get; set; } //, (TEXTO)
        public string DireccionNotifiacion { get; set; } //, (TEXTO)
        public string BarrioNotifiacion { get; set; } //, (TEXTO)
        public string TelefonoNotifiacion { get; set; } //, (TEXTO)
        public string CelularNotificacion { get; set; } //, (TEXTO)
        public int DepartamentoNotificacionId { get; set; } //, EXCEL ANEXO
        public int CiudadNotificacionId { get; set; } //, EXCEL ANEXO
        public string EmpresaLabora { get; set; } //, (TEXTO)
        public string CargoLabora { get; set; } //, (TEXTO)
        public string DireccionLabora { get; set; } //, (TEXTO)
        public string BarrioLabora { get; set; } //, (TEXTO)
        public string TelefonoLabora { get; set; } //, (TEXTO) Solo números
        public string CelularOficina { get; set; } //, (TEXTO) Solo números
        public int DepartamentoLaboraId { get; set; } //, EXCEL ANEXO
        public int CiudadLaboraId { get; set; } //, EXCEL ANEXO
        public int IngresoMensual { get; set; } //, (TEXTO) Solo números
        public int EgresoMensual { get; set; } //, (TEXTO) Solo números
        public string Profesion { get; set; } //, (TEXTO)
        public string TerceroId { get; set; } //
    }
}
