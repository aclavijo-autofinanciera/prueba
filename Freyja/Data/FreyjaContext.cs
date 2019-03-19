using Freyja.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Freyja.Data
{
    public class FreyjaContext :DbContext
    {
        public FreyjaContext(DbContextOptions<FreyjaContext> options) : base(options){ }
        public DbSet<PagoTuCompra> PagoTuCompra { get; set; }
        
    }
}
