using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital.Models
{
    public class ConfirmacionProspecto
    {
        [Key]
        public int Id { get; set; }
        public int IdProspecto { get; set; }
        public string Guuid { get; set; }
        public bool IsConfirmed { get; set; }

        public virtual Prospecto Prospecto { get; set; }
        
    }
}
