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
                List<Pregunta> preguntasList = (from p in db.Pregunta.Include("Clase").Include("Tema") orderby p.Nro descending select p).ToList();
                return preguntasList;
            }
        }

        public static Pregunta GetPregunta(int idPregunta)
        {
            using (db = new TP_20191CEntities())
            {
                Pregunta pregunta = (from p in db.Pregunta.Include("Clase").Include("Tema").Include("RespuestaAlumnoes") where p.IdPregunta == idPregunta select p).FirstOrDefault();
                return pregunta;
            }
        }
        public static void AddPregunta(Pregunta preguntaNueva)
        {
            using (db = new TP_20191CEntities())
            {
                db.Pregunta.Add(preguntaNueva);
                db.SaveChanges();
            }
        }
        public static void DeletePregunta(int idPregunta)
        {
            using (db = new TP_20191CEntities())
            {
                Pregunta pregunta = (from p in db.Pregunta where p.IdPregunta == idPregunta select p).FirstOrDefault();
                db.Pregunta.Remove(pregunta);
                db.SaveChanges();
            }
        }

        public static void UpdatePregunta(Pregunta preguntaActualizada)
        {
            using (db = new TP_20191CEntities())
            {
                Pregunta preguntaOld = (from p in db.Pregunta where p.IdPregunta == preguntaActualizada.IdPregunta select p).FirstOrDefault();
                preguntaOld = preguntaActualizada; // Probar si esto funciona o si hay que pasar uno por uno.
                db.SaveChanges();
            }
        }
        public static List<RespuestaAlumno> GetRespuestas(int idPregunta, int filtro)
        {
            using (db = new TP_20191CEntities())
            {
                var query = from r in db.RespuestaAlumno.Include("Alumno").Include("ResultadoEvaluacion") where r.IdPregunta == idPregunta select r;
                if (filtro > 0) {
                    query = query.Where(r => r.ResultadoEvaluacion.IdResultadoEvaluacion == filtro);
                }
                else if (filtro == 0)
                {
                    query = query.Where(r => r.ResultadoEvaluacion == null);
                }
                query = query.OrderBy(r => r.FechaHoraRespuesta);
                List<RespuestaAlumno> respuestasList = query.ToList();
                return respuestasList;
            }
        }
		
		public static Boolean PuedeElegirMejorRespuesta(int idPregunta)
        {
            using (db = new TP_20191CEntities())
            {
                Boolean existeRespuestaSinCorregir = (from r in db.RespuestaAlumno where r.IdPregunta == idPregunta && r.IdResultadoEvaluacion == null select r).Any();
                Boolean existeMejorRespuesta = (from r in db.RespuestaAlumno where r.IdPregunta == idPregunta && r.MejorRespuesta == true select r).Any();
                return (!existeRespuestaSinCorregir && !existeMejorRespuesta);
            }
        }

        public static void ElegirMejorRespuesta(int idRespuesta)
        {
            using (db = new TP_20191CEntities())
            {
                RespuestaAlumno respuesta = (from r in db.RespuestaAlumno where r.IdRespuestaAlumno == idRespuesta select r).FirstOrDefault();
                respuesta.MejorRespuesta = true;
                db.SaveChanges();
            }
        }

        public static RespuestaAlumno GetRespuesta(int idRespuesta)
        {
            using (db = new TP_20191CEntities())
            {
                RespuestaAlumno respuesta = (from r in db.RespuestaAlumno.Include("Profesor").Include("ResultadoEvaluacion") where r.IdRespuestaAlumno == idRespuesta select r).FirstOrDefault();
                return respuesta;
            }
        }
        public static void CorregirRespuesta(int idRespuesta, int resultadoEvaluacion, int idProfesor)
        {
            using (db = new TP_20191CEntities())
            {
                RespuestaAlumno respuesta = (from r in db.RespuestaAlumno.Include("Profesor").Include("ResultadoEvaluacion") where r.IdRespuestaAlumno == idRespuesta select r).FirstOrDefault();

                int cantidadRespuestasCorrectas = (from r in db.RespuestaAlumno where r.IdPregunta == respuesta.IdPregunta && r.IdResultadoEvaluacion == 1 select r).Count();
                
                // Setea 1, 2 o 3 en evaluación, profesor que corrigió, cantRespuestasCorrectas y FechaHoraEvaluacion
                respuesta.IdResultadoEvaluacion = resultadoEvaluacion; 
                respuesta.IdProfesorEvaluador = idProfesor;
                respuesta.RespuestasCorrectasHastaElMomento = cantidadRespuestasCorrectas;
                respuesta.FechaHoraEvaluacion = DateTime.Now;

                db.SaveChanges();
            }
        }
		
		public static int ValidarExistencia(Pregunta p)
        {
            using (db = new TP_20191CEntities())
            {
                var PreguntaExistente = (from Pregunta in db.Pregunta
                                         where Pregunta.Nro == p.Nro && Pregunta.IdClase == p.IdClase
                                         select Pregunta).Count();

                return PreguntaExistente;
            }
        }
        public static int ValidarFechaHasta(Pregunta p)
        {
            //return Convert.ToDateTime(p.FechaDisponibleDesde).Date.CompareTo(p.FechaDisponibleHasta);
            return DateTime.Compare(Convert.ToDateTime(p.FechaDisponibleDesde).Date, Convert.ToDateTime(p.FechaDisponibleHasta).Date);
        }
        public static Pregunta GetLastPregunta()
        {
            using (db = new TP_20191CEntities())
            {
                return db.Pregunta.Find(db.Pregunta.Max(p => p.IdPregunta));
            }
        }
        public static void CrearPregunta(Pregunta p)
        {
            using (db = new TP_20191CEntities())
            {
                db.Pregunta.Add(p);
                db.SaveChanges();
            }
        }
    }
}