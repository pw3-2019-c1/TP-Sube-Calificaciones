using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SubeCalificaciones.Models;

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
                    using (TP_20191CEntities1 db = new TP_20191CEntities1())
                    {
                        var userDetails = db.Profesors.Where(u => u.Email == ua.InputEmail && u.Password == ua.InputPassword).FirstOrDefault();

                        if (userDetails == null)
                        {
                            ua.LoggError = "Nombre o contraseña invalidos.";
                            return View(ua);
                        }
                        else
                        {
                            Session["ProfesorName"] = (userDetails.Nombre).ToString();
                            Session["ProfesorSurn"] = (userDetails.Apellido).ToString();
                            return Redirect("/Profesor");
                        }
                    }
                } else
                {
                    using (TP_20191CEntities1 db = new TP_20191CEntities1())
                    {
                        var userDetails = db.Alumnoes.Where(u => u.Email == ua.InputEmail && u.Password == ua.InputPassword).FirstOrDefault();

                        if (userDetails == null)
                        {
                            ua.LoggError = "Nombre o contraseña invalidos.";
                            return View(ua);
                        }
                        else
                        {
                            Session["AlumnoName"] = userDetails.Nombre;
                            Session["AlumnoSurn"] = userDetails.Apellido;
                            return Redirect("/Alumno");
                        }
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