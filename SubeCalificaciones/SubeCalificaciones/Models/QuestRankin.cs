using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SubeCalificaciones.Models
{
    public class LastRankAlumno
    {
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public long? Puntos { get; set; }
        public bool? MejorRespuesta { get; set; }
    }
    public class QuestionNotResp
    {
        public int QuestionId { get; set; }
        public string Question { get; set; }
    }
}