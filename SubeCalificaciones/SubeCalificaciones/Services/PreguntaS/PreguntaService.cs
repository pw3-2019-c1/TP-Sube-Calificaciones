using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SubeCalificaciones.Models;

namespace SubeCalificaciones.Services.PreguntaS
{
    public class PreguntaService
    {
        private static TP_20191CEntities db;

        public static List<Pregunta> GetPreguntas() {
            using (db = new TP_20191CEntities())
            {
                List<Pregunta> preguntasList = (from p in db.Preguntas.Include("Clase").Include("Tema") orderby p.Nro descending select p).ToList();
                return preguntasList;
            }
        }

        public static Pregunta GetPregunta(int idPregunta)
        {
            using (db = new TP_20191CEntities())
            {
                Pregunta pregunta = (from p in db.Preguntas.Include("Clase").Include("Tema").Include("RespuestaAlumnoes") where p.IdPregunta == idPregunta select p).FirstOrDefault();
                return pregunta;
            }
        }
        public static void AddPregunta(Pregunta preguntaNueva)
        {
            using (db = new TP_20191CEntities())
            {
                db.Preguntas.Add(preguntaNueva);
                db.SaveChanges();
            }
        }
        public static void DeletePregunta(int idPregunta)
        {
            using (db = new TP_20191CEntities())
            {
                Pregunta pregunta = (from p in db.Preguntas where p.IdPregunta == idPregunta select p).FirstOrDefault();
                db.Preguntas.Remove(pregunta);
                db.SaveChanges();
            }
        }

        public static void UpdatePregunta(Pregunta preguntaActualizada)
        {
            using (db = new TP_20191CEntities())
            {
                Pregunta preguntaOld = (from p in db.Preguntas where p.IdPregunta == preguntaActualizada.IdPregunta select p).FirstOrDefault();
                preguntaOld = preguntaActualizada; // Probar si esto funciona o si hay que pasar uno por uno.
                db.SaveChanges();
            }
        }
        public static List<RespuestaAlumno> GetRespuestas(int idPregunta, int filtro)
        {
            using (db = new TP_20191CEntities())
            {
                var query = from r in db.RespuestaAlumnoes.Include("Alumno").Include("ResultadoEvaluacion") where r.IdPregunta == idPregunta select r;
                if (filtro > 0) {
                    query = query.Where(r => r.ResultadoEvaluacion.IdResultadoEvaluacion == filtro);
                }
                else if (filtro == 0)
                {
                    query = query.Where(r => r.ResultadoEvaluacion == null);
                }
                query = query.OrderBy(r => r.FechaHoraRespuesta);
                List<RespuestaAlumno> respuestasList = query.ToList(); ;
                return respuestasList;
            }
        }
    }
}