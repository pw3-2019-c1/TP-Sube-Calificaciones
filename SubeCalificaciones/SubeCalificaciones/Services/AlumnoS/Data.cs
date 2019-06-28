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
    }
}