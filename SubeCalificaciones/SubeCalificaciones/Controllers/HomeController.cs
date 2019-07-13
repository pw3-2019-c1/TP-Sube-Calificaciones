using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SubeCalificaciones.Models;
using System.Security.Cryptography;
using System.Text;
using SubeCalificaciones.Services.Home;

namespace SubeCalificaciones.Controllers
{
    public class HomeController : Controller
    {
        //public static string GetSHA1(string str)
        //{
        //    SHA1 sha1 = SHA1.Create();
        //    ASCIIEncoding encoding = new ASCIIEncoding();
        //    StringBuilder sb = new StringBuilder();
        //    byte[] stream = sha1.ComputeHash(encoding.GetBytes(str));
        //    for (int i = 0; i < stream.Length; i++) sb.AppendFormat("{0:x2}", stream[i]);
        //    return sb.ToString();
        //}
        public ActionResult Ingresar()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Ingresar(UsuarioAnonimo ua)
        {
            if (ModelState.IsValid)
            {
                if (ua.IsProfesor == true)
                {
                    Profesor profesorDetails = CheckUserToLog.GetProfesor(ua);
                    if (profesorDetails == null)
                    {
                        ua.LoggError = "Datos invalidos, intente nuevamente.";
                    }
                    else
                    {
                        //string UserToHash = (profesorDetails.IdProfesor).ToString();
                        //string UserHashed = GetSHA1(UserToHash);
                        //Session["UserSession"] = UserHashed;
                        Session["UserSession"] = (profesorDetails.IdProfesor).ToString();
                        Session["UserName"] = profesorDetails.Nombre + " " + profesorDetails.Apellido;
                        return Redirect("/Profesor");
                    }
                } else
                {
                    Alumno alumnoDetails = CheckUserToLog.GetAlumno(ua);
                    if (alumnoDetails == null)
                    {
                        ua.LoggError = "Datos invalidos, intente nuevamente.";
                    }
                    else
                    {
                        //string UserToHash = (alumnoDetails.IdAlumno).ToString();
                        //string UserHashed = GetSHA1(UserToHash);
                        //Session["UserSession"] = UserHashed;
                        Session["UserSession"] = (alumnoDetails.IdAlumno).ToString();
                        Session["UserName"] = alumnoDetails.Nombre + " " + alumnoDetails.Apellido;
                        return Redirect("/Alumno");
                    }
                }
            }
            return View(ua);

        }

    }
}