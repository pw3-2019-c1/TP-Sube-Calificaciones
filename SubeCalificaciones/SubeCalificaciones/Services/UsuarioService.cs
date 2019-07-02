using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SubeCalificaciones.Models;

namespace SubeCalificaciones.Services
{
    public class UsuarioService
    {
        protected static TP_20191CEntities db = new TP_20191CEntities();

        public static Profesor CheckProfesor(UsuarioAnonimo ua)
        {
            using (db)
            {
                var userDetails = db.Profesor.Where(u => u.Email == ua.InputEmail && u.Password == ua.InputPassword).FirstOrDefault();
                //return (userDetails != null) ? true : false;
                return userDetails;
            }
        }

        public static Alumno CheckAlumno(UsuarioAnonimo ua)
        {
            using (db)
            {
                var userDetails = db.Alumno.Where(u => u.Email == ua.InputEmail && u.Password == ua.InputPassword).FirstOrDefault();
                //return (userDetails != null) ? true : false;
                return userDetails;
            }
        }
    }
}