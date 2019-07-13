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
                Alumno al = (from a in db.Alumnoes where a.IdAlumno == SuperIdAlumno select a).FirstOrDefault();
                return al;
            }
        }
        public static List<Alumno> GetAlumnosRankin() {
            using (db = new TP_20191CEntities())
            {
                List<Alumno> alRankinList = (from a in db.Alumnoes orderby a.PuntosTotales descending select a).Take(5).ToList();
                return alRankinList;
            }
        }

        public static List<Pregunta> RankinOld()
        {
            using (db = new TP_20191CEntities())
            {
                return (from p in db.Preguntas
                        where p.FechaDisponibleHasta < new DateTime(2019, 4, 30)
                        //where p.FechaDisponibleHasta < DateTime.Now
                        orderby p.Nro descending
                        select p).Take(2).ToList();

                //return (from r in db.RespuestaAlumnoes
                //        join p in db.Preguntas
                //        on r.IdRespuestaAlumno equals p.IdPregunta
                //        orderby p.Nro descending
                //        where p.FechaDisponibleHasta != null && p.FechaDisponibleHasta < DateTime.Now
                //        select new LastRankPregunta()
                //        {
                //            NroPregunta = p.Nro,
                //            TipoPregunta = p.Pregunta1
                //        }).Take(2).ToList();
            }
        }
        public static List<LastRankAlumno> RankinOldAlumnos(int idLastRank)
        {
            using (db = new TP_20191CEntities())
            {
                return (from a in db.Alumnoes
                        join r in db.RespuestaAlumnoes
                        on a.IdAlumno equals r.IdAlumno
                        orderby r.Puntos descending, r.MejorRespuesta descending
                        where r.IdPregunta == idLastRank
                        select new LastRankAlumno()
                        {
                            Nombre = a.Nombre,
                            Apellido = a.Apellido,
                            Puntos = r.Puntos,
                            MejorRespuesta = r.MejorRespuesta
                        }).Take(10).ToList();
            }
        }

        public static List<QuestionNotResp> NotResponseQuest(int actualAlumno)
        {
            using (db = new TP_20191CEntities())
            {
                var PregNoResp = (from p in db.Preguntas
                                  join r in db.RespuestaAlumnoes
                                    on p.IdPregunta equals r.IdRespuestaAlumno
                                  where (p.RespuestaAlumnoes).Count() == 0 && r.IdAlumno == actualAlumno
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