using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SubeCalificaciones.Models;

namespace SubeCalificaciones.Controllers
{
    public class ProfesorController : Controller
    {
        public bool CheckSession()
        {
            return (!string.IsNullOrEmpty(Session["UserSession"] as string)) ? true : false;
        }
        // GET: Profesor
        public ActionResult Index()
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