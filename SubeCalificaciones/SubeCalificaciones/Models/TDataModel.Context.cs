﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SubeCalificaciones.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TP_20191CEntities : DbContext
    {
        public TP_20191CEntities()
            : base("name=TP_20191CEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Alumno> Alumnoes { get; set; }
        public virtual DbSet<Clase> Clases { get; set; }
        public virtual DbSet<Pregunta> Preguntas { get; set; }
        public virtual DbSet<Profesor> Profesors { get; set; }
        public virtual DbSet<RespuestaAlumno> RespuestaAlumnoes { get; set; }
        public virtual DbSet<ResultadoEvaluacion> ResultadoEvaluacions { get; set; }
        public virtual DbSet<Tema> Temas { get; set; }
    }
}
