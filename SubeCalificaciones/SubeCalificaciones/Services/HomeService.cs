using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SubeCalificaciones.Models;

namespace SubeCalificaciones.Services
{
    public class HomeService
    {
        private static TP_20191CEntities db;

        public static List<Alumno> GetAlumnosRanking()
        {
            using (db = new TP_20191CEntities())
            {
                return (from a in db.Alumnoes
                        orderby a.PuntosTotales descending
                        select a).Take(5).ToList();
            }
        }

        public static List<Pregunta> GetLastQuestions()
        {
            using (db = new TP_20191CEntities())
            {
                return (from p in db.Preguntas
                        join ra in db.RespuestaAlumnoes
                        on p.IdPregunta equals ra.IdPregunta
                        orderby p.Nro descending
                        where ra.IdResultadoEvaluacion != null
                        select p).Distinct().OrderByDescending(p => p.Nro).Take(2).ToList();
            }
        }
        public static List<RespuestaAlumno> GetQuestionRanking(int idPregunta)
        {
            using (db = new TP_20191CEntities())
            {
                var query = (from ra in db.RespuestaAlumnoes.Include("Alumno")
                        orderby ra.Puntos descending, ra.MejorRespuesta descending
                        where ra.IdPregunta == idPregunta
                        select ra).Take(10);
                return query.ToList();
            }
        }

        public static List<Pregunta> GetUnansweredQuestions(int idAlumno)
        {
            using (db = new TP_20191CEntities())
            {
                return (from p in db.Preguntas.Include("Clase").Include("Tema")
                        join ra in db.RespuestaAlumnoes
                        on p.IdPregunta equals ra.IdPregunta
                        into agroup
                        from bgroup in agroup.DefaultIfEmpty()
                        where p.FechaDisponibleHasta > DateTime.Now
                        && bgroup.IdRespuestaAlumno == null
                        orderby p.Nro descending
                        select p).ToList();
            }
        }
    }
}