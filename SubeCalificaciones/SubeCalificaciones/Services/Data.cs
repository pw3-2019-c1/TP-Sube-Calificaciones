using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SubeCalificaciones.Models;

namespace SubeCalificaciones.Services
{
    public class Data
    {
        protected static TP_20191CEntities1 db = new TP_20191CEntities1();

        public static Profesor CheckProfesor(UsuarioAnonimo ua)
        {
            using (db)
            {
                var userDetails = db.Profesors.Where(u => u.Email == ua.InputEmail && u.Password == ua.InputPassword).FirstOrDefault();
                //return (userDetails != null) ? true : false;
                return userDetails;
            }
        }

        public static Alumno CheckAlumno(UsuarioAnonimo ua)
        {
            using (db)
            {
                var userDetails = db.Alumnoes.Where(u => u.Email == ua.InputEmail && u.Password == ua.InputPassword).FirstOrDefault();
                //return (userDetails != null) ? true : false;
                return userDetails;
            }
        }
    }
}