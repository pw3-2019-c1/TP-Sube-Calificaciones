using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SubeCalificaciones.Models
{
    public class DashboardViewModel
    {
            public int NroPregunta { get; set; }
            public string TipoPregunta { get; set; }
            public string AlumnoNombre { get; set; }
            public string AlumnoApe { get; set; }
            public long? PtosRsta { get; set; }
            public int QuestionId { get; set; }
            public string Question { get; set; }

    }
}