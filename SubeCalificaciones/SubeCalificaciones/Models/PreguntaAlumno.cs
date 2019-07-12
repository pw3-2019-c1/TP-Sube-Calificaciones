using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SubeCalificaciones.Models
{
    public class PreguntaAlumno
    {
        public PreguntaAlumno()
        {
            this.CurrentDate = DateTime.Now;
        }

        public System.DateTime CurrentDate { get; private set; }
        public int IdPregunta { get; set; }
        public int Nro { get; set; }
        public int IdClase { get; set; }
        public int IdTema { get; set; }
        public Nullable<System.DateTime> FechaDisponibleDesde { get; set; }
        public Nullable<System.DateTime> FechaDisponibleHasta { get; set; }
        public string Pregunta1 { get; set; }
        public int IdProfesorCreacion { get; set; }
        public System.DateTime FechaHoraCreacion { get; set; }
        public Nullable<int> IdProfesorModificacion { get; set; }
        public Nullable<System.DateTime> FechaHoraModificacion { get; set; }
        public virtual Clase Clase { get; set; }
        public virtual Tema Tema { get; set; }

        public Nullable<int> IdResultadoEvaluacion { get; set; }
        public virtual ResultadoEvaluacion ResultadoEvaluacion { get; set; }
        public int IdAlumno { get; set; }
        public virtual Alumno Alumno { get; set; }
        public int Orden { get; set; }
        public Nullable<long> Puntos { get; set; }
        public bool MejorRespuesta { get; set; }
        public string Respuesta { get; set; }
    }
}