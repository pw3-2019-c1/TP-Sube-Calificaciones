using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SubeCalificaciones.Models;
using SubeCalificaciones.Services;

namespace SubeCalificaciones.Controllers
{
    public class HomeController : Controller
    {

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
                    var checkedData = Data.CheckProfesor(ua);
                    if (checkedData != null)
                    {
                        Session["ProfesorName"] = (checkedData.Nombre).ToString();
                        Session["ProfesorSurn"] = (checkedData.Apellido).ToString();
                        return Redirect("/Profesor");
                    }
                    else
                    {
                        ua.LoggError = "Nombre o contraseña invalidos.";
                        return View(ua);
                    }
                } else
                {
                    var checkedData = Data.CheckAlumno(ua);
                    if (checkedData != null)
                    {
                        Session["AlumnoName"] = (checkedData.Nombre).ToString();
                        Session["AlumnoSurn"] = (checkedData.Apellido).ToString();
                        return Redirect("/Alumno");
                    }
                    else
                    {
                        ua.LoggError = "Nombre o contraseña invalidos.";
                        return View(ua);
                    }
                }
            }
            else
            {
                return View(ua);
            }

        }

    }
}