using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class Persona
    {
        [Key]
        public int IdPersona { get; set; }        
        public string PrimerNombre { get; set; }
        public string SegundoNombre { get; set; }
        public string PrimerApellido { get; set; }
        public string SegundoApellido { get; set; }
        public int TipoIdentificacion { get; set; }
        public int NumeroIdentificacion { get; set; }
        public string ProcedenciaIdentificacion { get; set; }
        public DateTime FechaNacimiento { get; set; }

    }
}
