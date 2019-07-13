using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
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

        public static List<PreguntaAlumno> GetPreguntasAlumno(int filtro, int idAlumno)
        {
            using (db = new TP_20191CEntities())
            {
                var query = from p in db.Preguntas.Include("Clase").Include("Tema")
                            join ra in db.RespuestaAlumnoes.Include("ResultadoEvaluacion")
                            on p.IdPregunta equals ra.IdPregunta
                            into agroup from bgroup in (from ra in agroup where ra.IdAlumno == idAlumno select ra).DefaultIfEmpty()
                            where p.FechaDisponibleDesde < DateTime.Now
                            orderby p.Nro descending
                            select new PreguntaAlumno
                            {
                                IdPregunta = p.IdPregunta,
                                Nro = p.Nro,
                                Pregunta1 = p.Pregunta1,
                                FechaDisponibleDesde = p.FechaDisponibleDesde,
                                FechaDisponibleHasta = p.FechaDisponibleHasta,
                                Clase = p.Clase,
                                Tema = p.Tema,
                                IdResultadoEvaluacion = bgroup.IdResultadoEvaluacion,
                                ResultadoEvaluacion = bgroup.ResultadoEvaluacion,
                                Orden = bgroup.Orden,
                                Puntos = bgroup.Puntos,
                                MejorRespuesta = (bgroup.MejorRespuesta == null ? false : bgroup.MejorRespuesta)
                            };

                if(filtro >= 0)
                {
                    query = from p in db.Preguntas.Include("Clase").Include("Tema")
                            join ra in db.RespuestaAlumnoes.Include("ResultadoEvaluacion")
                            on p.IdPregunta equals ra.IdPregunta
                            where ra.IdAlumno == idAlumno
                            orderby p.Nro descending
                            select new PreguntaAlumno
                            {
                                IdPregunta = p.IdPregunta,
                                Nro = p.Nro,
                                Pregunta1 = p.Pregunta1,
                                FechaDisponibleDesde = p.FechaDisponibleDesde,
                                FechaDisponibleHasta = p.FechaDisponibleHasta,
                                Clase = p.Clase,
                                Tema = p.Tema,
                                IdResultadoEvaluacion = ra.IdResultadoEvaluacion,
                                ResultadoEvaluacion = ra.ResultadoEvaluacion,
                                Orden = ra.Orden,
                                Puntos = ra.Puntos,
                                MejorRespuesta = (ra.MejorRespuesta == null ? false : ra.MejorRespuesta)
                            };
                    if(filtro == 0)
                    {
                        query = query.Where(ra => ra.IdResultadoEvaluacion == null);
                    }
                    else
                    {
                        query = query.Where(ra => ra.IdResultadoEvaluacion == filtro);
                    }
                }
                List<PreguntaAlumno> preguntasList = query.ToList();
                return preguntasList;
            }
        }

        public static List<Pregunta> GetPreguntasAlumnoSinResponder(int idAlumno)
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



        public static Pregunta GetPregunta(int? idPregunta)
        {
            using (db = new TP_20191CEntities())
            {
                Pregunta pregunta = (from p in db.Preguntas.Include("Clase").Include("Tema").Include("RespuestaAlumnoes") where p.IdPregunta == idPregunta select p).FirstOrDefault();
                return pregunta;
            }
        }

        public static PreguntaAlumno GetRespuesta(int? idPregunta, int idAlumno)
        {
            using (db = new TP_20191CEntities())
            {
                PreguntaAlumno respuesta = (from ra in db.RespuestaAlumnoes.Include("Alumno").Include("ResultadoEvaluacion")
                                            join p in db.Preguntas.Include("Clase").Include("Tema") on ra.IdPregunta equals p.IdPregunta
                                            where ra.IdPregunta == idPregunta && ra.IdAlumno == idAlumno
                                            select new PreguntaAlumno
                                            {
                                                IdPregunta = p.IdPregunta,
                                                Nro = p.Nro,
                                                Pregunta1 = p.Pregunta1,
                                                FechaDisponibleDesde = p.FechaDisponibleDesde,
                                                FechaDisponibleHasta = p.FechaDisponibleHasta,
                                                Clase = p.Clase,
                                                Tema = p.Tema,
                                                IdResultadoEvaluacion = ra.IdResultadoEvaluacion,
                                                ResultadoEvaluacion = ra.ResultadoEvaluacion,
                                                Orden = ra.Orden,
                                                Puntos = ra.Puntos,
                                                MejorRespuesta = ra.MejorRespuesta,
                                                Respuesta = ra.Respuesta
                                            }).FirstOrDefault();
                return respuesta;
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

        public static int GetOrdenPregunta(int idPregunta)
        {
            using (db = new TP_20191CEntities())
            {
                return Convert.ToInt32((from ra in db.RespuestaAlumnoes
                                        where ra.IdPregunta == idPregunta
                                        orderby ra.Orden descending
                                        select ra.Orden).FirstOrDefault());
            }
        }

        public static void AddRespuesta(RespuestaAlumno ra, int? idPregunta, int idAlumno)
        {
            using (db = new TP_20191CEntities())
            {
                ra.IdAlumno = idAlumno;
                ra.IdPregunta = Convert.ToInt32(idPregunta);
                ra.FechaHoraRespuesta = DateTime.Now;
                ra.Orden = Convert.ToInt32((from Ra in db.RespuestaAlumnoes
                                            where Ra.IdPregunta == idPregunta
                                            orderby Ra.Orden descending
                                            select Ra.Orden).FirstOrDefault()) + 1;
                ra.MejorRespuesta = false;
                var final = ra;
                db.RespuestaAlumnoes.Add(ra);
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
                List<RespuestaAlumno> respuestasList = query.ToList();
                return respuestasList;
            }
        }

        public static Boolean PuedeElegirMejorRespuesta(int idPregunta)
        {
            using (db = new TP_20191CEntities())
            {
                Boolean existeRespuestaSinCorregir = (from r in db.RespuestaAlumnoes where r.IdPregunta == idPregunta && r.IdResultadoEvaluacion == null select r).Any();
                Boolean existeMejorRespuesta = (from r in db.RespuestaAlumnoes where r.IdPregunta == idPregunta && r.MejorRespuesta == true select r).Any();
                return (!existeRespuestaSinCorregir && !existeMejorRespuesta);
            }
        }

        public static void ElegirMejorRespuesta(int idRespuesta)
        {
            using (db = new TP_20191CEntities())
            {
                RespuestaAlumno respuesta = (from r in db.RespuestaAlumnoes.Include("Alumno") where r.IdRespuestaAlumno == idRespuesta select r).FirstOrDefault();
                respuesta.MejorRespuesta = true;

                long puntos = CalcularPuntosMejorRespuesta(respuesta);
                respuesta.Puntos = puntos;

                db.SaveChanges();
                // Actualiza datos en la tabla Alumnos
                ActualizarPuntosTotales(respuesta.IdAlumno, puntos);
                ActualizarCantidadDeRespuestas(respuesta.IdAlumno, 4); // Se utiliza 4 para mejor respuesta
            }
        }

        public static RespuestaAlumno GetRespuesta(int idRespuesta)
        {
            using (db = new TP_20191CEntities())
            {
                RespuestaAlumno respuesta = (from r in db.RespuestaAlumnoes.Include("Profesor").Include("ResultadoEvaluacion") where r.IdRespuestaAlumno == idRespuesta select r).FirstOrDefault();
                return respuesta;
            }
        }

        public static void CorregirRespuesta(int idRespuesta, int resultadoEvaluacion, int idProfesor)
        {
            using (db = new TP_20191CEntities())
            {
                RespuestaAlumno respuesta = (from r in db.RespuestaAlumnoes.Include("Profesor").Include("ResultadoEvaluacion").Include("Alumno") where r.IdRespuestaAlumno == idRespuesta select r).FirstOrDefault();

                int cantidadRespuestasCorrectas = (from r in db.RespuestaAlumnoes where r.IdPregunta == respuesta.IdPregunta && r.IdResultadoEvaluacion == 1 select r).Count();

                // Setea 1, 2 o 3 en evaluación, profesor que corrigió, cantRespuestasCorrectas y FechaHoraEvaluacion
                respuesta.IdResultadoEvaluacion = resultadoEvaluacion;
                respuesta.IdProfesorEvaluador = idProfesor;
                respuesta.RespuestasCorrectasHastaElMomento = cantidadRespuestasCorrectas;
                respuesta.FechaHoraEvaluacion = DateTime.Now;

                long puntos = 0;
                if (resultadoEvaluacion != 3) // Si no es incorrecta
                {
                    puntos = CalcularPuntosDeRespuesta(respuesta);
                }
                respuesta.Puntos = puntos;

                db.SaveChanges();

                // Actualiza datos en la tabla Alumnos
                ActualizarPuntosTotales(respuesta.IdAlumno, puntos);
                ActualizarCantidadDeRespuestas(respuesta.IdAlumno, resultadoEvaluacion);

            }
        }

        public static long CalcularPuntosDeRespuesta(RespuestaAlumno respuesta)
        {
            long puntajeMax = int.Parse(WebConfigurationManager.AppSettings["PuntajeMaximoPorRespuestaCorrecta"]);
            long cupo = int.Parse(WebConfigurationManager.AppSettings["CupoMaximoRespuestasCorrectas"]);
            long puntajeMinimo = puntajeMax / cupo;
            long puntajeRespuesta = puntajeMax - (puntajeMinimo * respuesta.RespuestasCorrectasHastaElMomento.Value);

            if(respuesta.IdResultadoEvaluacion == 2) // Regular
            {
                puntajeMinimo /= 2;
                puntajeRespuesta /= 2;
            }

            if (puntajeRespuesta <= puntajeMinimo) {
                return puntajeMinimo;
            }

            return puntajeRespuesta;
        }
        public static long CalcularPuntosMejorRespuesta(RespuestaAlumno respuesta)
        {
            long puntajeMax = int.Parse(WebConfigurationManager.AppSettings["PuntajeMaximoPorRespuestaCorrecta"]);
            long cupo = int.Parse(WebConfigurationManager.AppSettings["CupoMaximoRespuestasCorrectas"]);
            long puntajeRespuesta = respuesta.Puntos.Value + (puntajeMax / 2);

            return puntajeRespuesta;
        }
        public static void ActualizarPuntosTotales(int idAlumno, long puntos)
        {
            using (db = new TP_20191CEntities())
            {
                Alumno alumno = (from a in db.Alumnoes where a.IdAlumno == idAlumno select a).FirstOrDefault();

                alumno.PuntosTotales += puntos;

                db.SaveChanges();
            }
        }
        public static void ActualizarCantidadDeRespuestas(int idAlumno, int idResultadoEvaluacion)
        {
            using (db = new TP_20191CEntities())
            {
                Alumno alumno = (from a in db.Alumnoes where a.IdAlumno == idAlumno select a).FirstOrDefault();

                if (idResultadoEvaluacion == 1) // Correcta
                {
                    alumno.CantidadRespuestasCorrectas++;
                }
                if (idResultadoEvaluacion == 2) // Regular
                {
                    alumno.CantidadRespuestasRegular++;
                }
                if (idResultadoEvaluacion == 3) // Mal
                {
                    alumno.CantidadRespuestasMal++;
                }
                if (idResultadoEvaluacion == 4) // Mejor respuesta
                {
                    alumno.CantidadMejorRespuesta++;
                }
                db.SaveChanges();
            }
        }

        public static int ValidarExistencia(Pregunta p)
        {
            using (db = new TP_20191CEntities())
            {
                var PreguntaExistente = (from Pregunta in db.Preguntas
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
                return db.Preguntas.Find(db.Preguntas.Max(p => p.IdPregunta));
            }
        }
        public static void CrearPregunta(Pregunta p)
        {
            using (db = new TP_20191CEntities())
            {
                db.Preguntas.Add(p);
                db.SaveChanges();
            }
        }
    }
}