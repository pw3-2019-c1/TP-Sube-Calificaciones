using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SubeCalificaciones.Models;
using SubeCalificaciones.Services.AlumnoS;

namespace SubeCalificaciones.Controllers
{
    public class AlumnoController : Controller
    {
        public bool CheckSession()
        {
            return (!string.IsNullOrEmpty(Session["UserSession"] as string)) ? true : false;
        }
        // GET: Alumno
        public ActionResult Index()
        {
            if (!CheckSession())
            {
                return RedirectToAction("Ingresar", "Home");
            }
            else
            {
                int alID = Convert.ToInt32(Session["UserSession"]);
                Data.SetAlumnoId(alID);
                Alumno al = Data.GetAlumno();
                ViewBag.alNombre = al.Nombre;
                ViewBag.alApellido = al.Apellido;

                List<Alumno> alRankinList = Data.GetAlumnosRankin();
                return View(alRankinList);
            }
        }
        public ActionResult AcercaDe()
        {
            if (!CheckSession())
            {
                return RedirectToAction("Ingresar", "Home");
            }
            else
            {
                return View();
            }
        }
        public ActionResult Logout()
        {
            Session.Abandon();
            return RedirectToAction("Ingresar", "Home");
        }
    }
}