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
                var Alumnos = db.Alumno;
                Alumno al = (from a in Alumnos where a.IdAlumno == SuperIdAlumno select a).FirstOrDefault();
                return al;
            }
        }
        public static List<Alumno> GetAlumnosRankin() {
            using (db = new TP_20191CEntities())
            {
                var Alumnos = db.Alumno;
                List<Alumno> alRankinList = (from a in Alumnos orderby a.PuntosTotales descending select a).Take(5).ToList();
                return alRankinList;
            }
        }

        public static List<LastRankPregunta> RankinOld()
        {
            using (db = new TP_20191CEntities())
            {
                var Preguntas = db.Pregunta;
                var Respuestas = db.RespuestaAlumno;
                DateTime FechaActual = new DateTime(2019,4,30) ;
                //var FechaActual = DateTime.Now;
                
                var LastTwoQuest = (from r in Respuestas
                                    join p in Preguntas
                                    on r.IdRespuestaAlumno equals p.IdPregunta
                                    orderby p.Nro descending
                                    where p.FechaDisponibleHasta < FechaActual
                                    select new LastRankPregunta()
                                    {
                                        NroPregunta = p.Nro,
                                        TipoPregunta = p.Pregunta1
                                    }).Take(2).ToList();
                
                return LastTwoQuest;
            }
        }
        public static List<LastRankAlumno> RankinOldAlumnos(int idLastRank)
        {
            using (db = new TP_20191CEntities())
            {
                var Respuestas = db.RespuestaAlumno;
                var Alumnos = db.Alumno;

                var TopTenAlumnos = (from a in Alumnos
                                   join r in Respuestas
                                   on a.IdAlumno equals r.IdAlumno
                                   orderby r.Puntos descending
                                   where r.IdPregunta == idLastRank
                                   select new LastRankAlumno()
                                   {
                                       AlumnoNombre = a.Nombre,
                                       AlumnoApe = a.Apellido,
                                       PtosRsta = r.Puntos
                                   }).Take(10).ToList();

                return TopTenAlumnos;
            }
        }

        public static List<QuestionNotResp> NotResponseQuest(int actualAlumno)
        {
            using (db = new TP_20191CEntities())
            {
                var Preguntas = db.Pregunta;
                var Respuestas = db.RespuestaAlumno;
                var Alumnos = db.Alumno;

                var PregNoResp = (from p in Preguntas
                                  join r in Respuestas
                                    on p.IdPregunta equals r.IdRespuestaAlumno
                                  where (p.RespuestaAlumno).Count() == 0 && r.IdAlumno == actualAlumno
                                  select new QuestionNotResp()
                                  {
                                      QuestionId = p.IdPregunta,
                                      Question = p.Pregunta1
                                  }).ToList();

                return PregNoResp;
            }
        }
    }
}