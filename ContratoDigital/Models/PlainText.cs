using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class PlainText
    {
        [Key]        
        public int IdPlainText { get; set; }
        [NotMapped]
        public IFormFile PlainTextFile { get; set; }
    }
}
