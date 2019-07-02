using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SubeCalificaciones.Services
{
    public class PreguntaService
    {
        protected static TP_20191CEntities db = new TP_20191CEntities();

        public static Pregunta GetLastPregunta()
        {
            return db.Pregunta.Find(db.Pregunta.Max(p => p.IdPregunta));
        }

        public static int ValidarExistencia(Pregunta p)
        {
            var PreguntaExistente = ( from Pregunta in db.Pregunta
                                      where Pregunta.Nro == p.Nro && Pregunta.IdClase == p.IdClase 
                                      select Pregunta).Count();

            return PreguntaExistente;
        }
        public static int ValidarFechaHasta(Pregunta p)
        {
            //return Convert.ToDateTime(p.FechaDisponibleDesde).Date.CompareTo(p.FechaDisponibleHasta);
            return DateTime.Compare(Convert.ToDateTime(p.FechaDisponibleDesde).Date, Convert.ToDateTime(p.FechaDisponibleHasta).Date);
        }
        public static void CrearPregunta(Pregunta p)
        {
            db.Pregunta.Add(p);
            db.SaveChanges();
        }
    }
}