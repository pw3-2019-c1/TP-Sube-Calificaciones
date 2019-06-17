//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SubeCalificaciones.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class RespuestaAlumno
    {
        public int IdRespuestaAlumno { get; set; }
        public int IdPregunta { get; set; }
        public int IdAlumno { get; set; }
        public System.DateTime FechaHoraRespuesta { get; set; }
        public string Respuesta { get; set; }
        public int Orden { get; set; }
        public Nullable<int> IdProfesorEvaluador { get; set; }
        public Nullable<System.DateTime> FechaHoraEvaluacion { get; set; }
        public Nullable<int> IdResultadoEvaluacion { get; set; }
        public Nullable<int> RespuestasCorrectasHastaElMomento { get; set; }
        public Nullable<long> Puntos { get; set; }
        public bool MejorRespuesta { get; set; }
    
        public virtual Alumno Alumno { get; set; }
        public virtual Pregunta Pregunta { get; set; }
        public virtual Profesor Profesor { get; set; }
        public virtual ResultadoEvaluacion ResultadoEvaluacion { get; set; }
    }
}
