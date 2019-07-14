using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SubeCalificaciones.Models;
using SubeCalificaciones.Services;

namespace SubeCalificaciones.Controllers
{
    public class AlumnoController : Controller
    {
        public readonly Dictionary<string, int> FiltrosPreguntas = new Dictionary<string, int>() {
            { "Todas", -1 },
            { "SinCorregir", 0 },
            { "Correctas", 1 },
            { "Regular", 2 },
            { "Mal", 3 }
        };

        public bool CheckSession()
        {
            var y = Session["UserSession"];
            var x = Session["UserType"];
            return (Session["UserSession"] != null && Session["UserType"].ToString() == "Alumno") ? true : false;
        }

        public ActionResult Index()
        {
            if (CheckSession())
            {
                return RedirectToAction("Inicio", "Home");                
            }
            else
            {
                return RedirectToAction("Ingresar", "Home");
            }
        }

        public ActionResult Preguntas(string filtro)
        {
            if (!CheckSession())
            {
                return RedirectToAction("Ingresar", "Home");
            }
            else
            {
                int idAlumno = Convert.ToInt32(Session["UserSession"]);
                List <PreguntaAlumno> preguntas = PreguntaService.GetPreguntasAlumno(FiltrosPreguntas[filtro], idAlumno);
           
            return View(preguntas);
            }
        }
        public ActionResult VerRespuesta(int? idPregunta)
        {
            if (!CheckSession())
            {
                return RedirectToAction("Ingresar", "Home");
            }
            else
            {
                int idAlumno = Convert.ToInt32(Session["UserSession"]);
                if (idPregunta == null)
            {
                return RedirectToAction("Preguntas");
            }
                PreguntaAlumno respuesta = PreguntaService.GetRespuesta(idPregunta, idAlumno);
                return View(respuesta);
            }
        }
        public ActionResult ResponderPregunta(int? idPregunta)
        {
            if (!CheckSession())
            {
                return RedirectToAction("Ingresar", "Home");
            }
            else
            {
                if (idPregunta == null)
                {
                    return RedirectToAction("Preguntas");
                }

                ViewBag.PreguntaAResponder = PreguntaService.GetPregunta(idPregunta);
                return View();
            }
        }
        [HttpPost]
        public ActionResult ResponderPregunta(int? idPregunta, RespuestaAlumno ra)
        {
            if (!CheckSession())
            {
                return RedirectToAction("Ingresar", "Home");
            }
            else
            {
                if (ModelState.IsValid)
                {
                    int idAlumno = 2;
                    PreguntaService.AddRespuesta(ra, idPregunta, idAlumno);
                    return RedirectToAction("Preguntas");
                }
                else
                {
                    ViewBag.PreguntaAResponder = PreguntaService.GetPregunta(idPregunta);
                    return View(ra);
                }
            }
        }
        public ActionResult AcercaDe()
        {
            if (!CheckSession())
            {
                return RedirectToAction("Ingresar", "Home");
            }
            return View();
        }

        public ActionResult Logout()
        {
            Session.Abandon();
            return RedirectToAction("Ingresar", "Home");
        }

    }
}