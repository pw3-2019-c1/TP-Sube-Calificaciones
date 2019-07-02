using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SubeCalificaciones.Models
{
    public class LastRankPregunta
    {
        public int NroPregunta { get; set; }
        public string TipoPregunta { get; set; }
    }
    public class LastRankAlumno
    {
        public string AlumnoNombre { get; set; }
        public string AlumnoApe { get; set; }
        public long? PtosRsta { get; set; }
    }
    public class QuestionNotResp
    {
        public int QuestionId { get; set; }
        public string Question { get; set; }
    }
}