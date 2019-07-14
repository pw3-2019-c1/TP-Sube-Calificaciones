using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SubeCalificaciones.Models;

namespace SubeCalificaciones.Services.AlumnoS
{
    public class Data
    {
        private static TP_20191CEntities db;
        private static int SuperIdAlumno;
        public static void SetAlumnoId(int id)
        {
            SuperIdAlumno = id;
        }
        public static Alumno GetAlumno()
        {
            using(db = new TP_20191CEntities())
            {
                return (from a in db.Alumnoes
                        where a.IdAlumno == SuperIdAlumno
                        select a).FirstOrDefault();
            }
        }
        public static List<Alumno> GetAlumnosRankin() {
            using (db = new TP_20191CEntities())
            {
                return (from a in db.Alumnoes
                        orderby a.PuntosTotales descending
                        select a).Take(5).ToList();
            }
        }

        public static List<Pregunta> RankinOld()
        {
            using (db = new TP_20191CEntities())
            {
                var query = (from p in db.Preguntas
                        join ra in db.RespuestaAlumnoes
                        on p.IdPregunta equals ra.IdPregunta
                        orderby p.Nro descending
                        where ra.IdResultadoEvaluacion != null
                        select p).Distinct().OrderByDescending(p => p.Nro).Take(2);

                return query.ToList();
            }
        }
        public static List<RespuestaAlumno> RankinOldAlumnos(int idPregunta)
        {
            using (db = new TP_20191CEntities())
            {
                return (from ra in db.RespuestaAlumnoes.Include("Alumno")
                        orderby ra.Puntos descending, ra.MejorRespuesta descending
                        where ra.IdPregunta == idPregunta
                        select ra).Take(10).ToList();
            }
        }
    }
}