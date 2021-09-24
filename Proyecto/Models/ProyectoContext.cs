using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.EntityFrameworkCore;

namespace WebApiProyecto.Models
{
    public class ProyectoContext:DbContext
    {

        public DbSet<Clientes> Cliente { get; set; }
        public DbSet<Contacto> Contacto { get; set; }
        public DbSet<Ingresar> Ingreso { get; set; }
        public DbSet<Evento> Evento { get; set; }

     
        public ProyectoContext(DbContextOptions<ProyectoContext> options)
            : base(options)
        {
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Clientes>().ToTable("Clientes");
            modelBuilder.Entity<Contacto>().ToTable("Contacto");
            modelBuilder.Entity<Ingresar>().ToTable("Ingresar");
            modelBuilder.Entity<Evento>().ToTable("Evento");
        }
    }
}
