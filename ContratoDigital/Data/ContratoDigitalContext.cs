using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ContratoDigital.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Proxies;




namespace ContratoDigital.Data
{
    public class ContratoDigitalContext : DbContext
    {
        public ContratoDigitalContext(DbContextOptions<ContratoDigitalContext> options) : base(options){}

        public DbSet<Ciudades> Ciudades { get; set; }
        public DbSet<ConfirmacionContrato> ConfirmacionContratos { get; set; }
        public DbSet<ConfirmacionProspecto> ConfirmacionProspectos { get; set; }
        public DbSet<Contrato> Contratos { get; set; }
        public DbSet<DocumentoIdentidad> DocumentoIdentidad { get; set; }
        public DbSet<Estado> Estados { get; set; }
        public DbSet<Prospecto> Prospectos { get; set; }        
        public DbSet<TipoEstado> TipoEstados { get; set; }
        public DbSet<UploadId> UploadId { get; set; }
        public DbSet<RecibosPago> RecibosPago { get; set; }
        public DbSet<Pagos> Pagos { get; set; }
        
    }
}
