using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SubeCalificaciones.Models;
using SubeCalificaciones.Services.PreguntaS;

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
        public ActionResult AdminPreguntas()
        {
            if (!CheckSession())
            {
                return RedirectToAction("Ingresar", "Home");
            }
            else
            {
                List<Pregunta> preguntas = PreguntaService.GetPreguntas();
                return View(preguntas);
            }
        }
        public ActionResult  ModificarPregunta(int idPregunta)
        {
            if (!CheckSession())
            {
                return RedirectToAction("Ingresar", "Home");
            }
            else
            {
                Pregunta pregunta = PreguntaService.GetPregunta(idPregunta);
                return View(pregunta);
            }
        }
        public ActionResult EvaluarRespuestas(int idPregunta, int filtro)
        {
            if (!CheckSession())
            {
                return RedirectToAction("Ingresar", "Home");
            }
            else
            {
                Pregunta pregunta = PreguntaService.GetPregunta(idPregunta);
                ViewBag.pregunta = pregunta;
                List<RespuestaAlumno> respuestas = PreguntaService.GetRespuestas(idPregunta, filtro);
                return View(respuestas);
            }
        }
        public ActionResult EliminarPregunta(int idPregunta)
        {
            if (!CheckSession())
            {
                return RedirectToAction("Ingresar", "Home");
            }
            else
            {
                PreguntaService.DeletePregunta(idPregunta);
                return RedirectToAction("AdminPreguntas", "Profesor");
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