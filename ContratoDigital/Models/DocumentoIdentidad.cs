using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class DocumentoIdentidad
    {
        [Key]
        public int IdDocumentoIdentidad { get; set; }
        public int IdContrato { get; set; }
        public string Guuid { get; set; }
        public string Anverso { get; set; }
        public string Reverso { get; set; }        
        public bool IsRemoteUploadEnabled { get; set; }
        public DateTime FechaAdjunto { get; set; }



        public virtual Contrato Contrato {get;set;}


    }
}
