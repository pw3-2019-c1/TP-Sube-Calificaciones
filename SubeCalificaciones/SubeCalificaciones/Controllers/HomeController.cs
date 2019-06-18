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
                    return RedirectToAction("Index","Profesor");
                } else
                {
                    return RedirectToAction("Index", "Alumno");
                }
            }
            else
            {
                return View(ua);
            }

        }

    }
}