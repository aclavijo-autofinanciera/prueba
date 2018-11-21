using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class PersonaSiicon
    {
        public string PrimerNombre { get; set; }
        public string SegundoNombre { get; set; }
        public string PrimerApellido { get; set; }
        public string SegundoApellido { get; set; }
        public int TipoDocumentoIdentidad { get; set; }
        public string NumeroDocumento { get; set; }
        public string CiudadExpedicionId { get; set; }
        public string FechaNacimiento { get; set; }
        public string CiudadNacimientoID { get; set; }
        public int SexoId { get; set; }
        public int EstadoCivilId { get; set; }
        public string Email { get; set; }
        public string DireccionNotificacion { get; set; }
        public string BarrioNotificacion { get; set; }
        public string  TelefonoNotificacion {get;set;}
        public string CelularNotificacion { get; set; }
        public string DepartamentoNotificacionId { get; set; }
        public string CiudadNotificacionId { get; set; }
        public string EmpresaLabora { get; set; }
        public string CargoLabora { get; set; }
        public string DireccionLabora { get; set; }
        public string BarrioLabora { get; set; }
        public string TelefonoLabora { get; set; }
        public string CelularOficina { get; set; }
        public string DepartamentoLaboraId { get; set; }
        public string CiudadLaboraId { get; set; }
        public int IngresoMensual { get; set; }
        public int EgresoMensual { get; set; }
        public string Profesion { get; set; }
        public string TerceroId { get; set; }

        
        /*[Key]
        /*public int TipoIdentificacionRepreLegalId { get; set; } // EXCEL ANEXO
        public int TipoPersonaId { get; set; } //, EXCEL ANEXO        
        public string NumeroIdentificacionRepreLegal { get; set; } //, (TEXTO)
        public string CiudadConstitucionId { get; set; } //, EXCEL ANEXO
        public string FechaConstitucion { get; set; } //, (TEXTO = MM / DD / AAAA) Si aplica
        public string PrimerNombre { get; set; } //, (TEXTO) Solo persona natural
        public string SegundoNombre { get; set; } // , (TEXTO) Solo persona natural
        public string PrimerApellido { get; set; } //, (TEXTO) Solo persona natural
        public string SegundoApellido { get; set; } //, (TEXTO) Solo persona natural
        public string RazonSocial { get; set; } // , (TEXTO) Solo persona jurídica
        public int TipoDocumentoIdentidadId { get; set; } //, EXCEL ANEXO
        public string NumeroDocumento { get; set; } // , (TEXTO)
        public string DigitoVerificacion { get; set; } //, (TEXTO) Solo persona jurídica
        public string CiudadExpedicionId { get; set; } //, EXCEL ANEXO
        public string FechaNacimiento { get; set; } //, (TEXTO = MM / DD / AAAA) Si aplica
        public string CiudadNacimientoId { get; set; } //, EXCEL ANEXO
        public int SexoId { get; set; } //, EXCEL ANEXO
        public int EstadoCivilId { get; set; } //, EXCEL ANEXO
        public string Email { get; set; } //, (TEXTO)
        public string DireccionNotifiacion { get; set; } //, (TEXTO)
        public string BarrioNotifiacion { get; set; } //, (TEXTO)
        public string TelefonoNotifiacion { get; set; } //, (TEXTO)
        public string CelularNotificacion { get; set; } //, (TEXTO)
        public int DepartamentoNotificacionId { get; set; } //, EXCEL ANEXO
        public string CiudadNotificacionId { get; set; } //, EXCEL ANEXO
        public string EmpresaLabora { get; set; } //, (TEXTO)
        public string CargoLabora { get; set; } //, (TEXTO)
        public string DireccionLabora { get; set; } //, (TEXTO)
        public string BarrioLabora { get; set; } //, (TEXTO)
        public string TelefonoLabora { get; set; } //, (TEXTO) Solo números
        public string CelularOficina { get; set; } //, (TEXTO) Solo números
        public int DepartamentoLaboraId { get; set; } //, EXCEL ANEXO
        public string CiudadLaboraId { get; set; } //, EXCEL ANEXO
        public int IngresoMensual { get; set; } //, (TEXTO) Solo números
        public int EgresoMensual { get; set; } //, (TEXTO) Solo números
        public string Profesion { get; set; } //, (TEXTO)
        public string TerceroId { get; set; } //*/
    }
}
