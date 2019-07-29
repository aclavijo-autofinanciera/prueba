using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class AuditoriaProspectos
    {
        [Key]
        public int IdAuditoria { get; set; }
        public int IdProspecto { get; set; }
        public string TipoDeMovimiento { get; set; }
        public string DatosPrevios { get; set; }
        public string DatosNuevos { get; set; }
        public DateTime FechaRegistro { get; set; }
        public string UsuarioRegistrante { get; set; }
        public string IPRegistro { get; set; }
    }
}
