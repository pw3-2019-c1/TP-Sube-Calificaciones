using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SubeCalificaciones.Models;

namespace SubeCalificaciones.Services.Home
{
    public class CheckUserToLog
    {
        private static TP_20191CEntities db;

        public static Profesor GetProfesor(UsuarioAnonimo ua)
        {
            using(db = new TP_20191CEntities())
            {
                Profesor profesorDetails = (from p in db.Profesors where p.Email == ua.InputEmail && p.Password == ua.InputPassword select p).First();
                return profesorDetails;
            }
        }
        public static Alumno GetAlumno(UsuarioAnonimo ua)
        {
            using (db = new TP_20191CEntities())
            {
                Alumno alumnoDetails = (from a in db.Alumnoes where a.Email == ua.InputEmail && a.Password == ua.InputPassword select a).First();
                return alumnoDetails;
            }
        }
    }
}