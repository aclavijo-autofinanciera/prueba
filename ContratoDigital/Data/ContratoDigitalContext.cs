﻿using System;
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

        public DbSet<Contrato> Contratos { get; set; }
        public DbSet<Prospecto> Prospectos { get; set; }

      
        
    }
}