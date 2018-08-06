using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using static System.Net.Mime.MediaTypeNames;

namespace ContratoDigital.Models
{
    public class UploadId
    {

        [Key]
        public int IdUpload { get; set; }
        public int IdContrato { get; set; }
        [NotMapped]
        public IFormFile Anverso { get; set; }
        [NotMapped]
        public IFormFile Reverso { get; set; }
    }
}
