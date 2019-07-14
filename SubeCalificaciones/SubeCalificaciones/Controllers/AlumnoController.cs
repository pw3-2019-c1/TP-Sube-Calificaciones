using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SubeCalificaciones.Models;
using SubeCalificaciones.Services;
using SubeCalificaciones.Services.AlumnoS;
using SubeCalificaciones.Services.PreguntaS;

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
            return (!string.IsNullOrEmpty(Session["UserSession"] as string)) ? true : false;
        }
        public ActionResult Index()
        {
            //if (!CheckSession())
            //{
            //    return RedirectToAction("Ingresar", "Home");
            //}
            //else
            //{
            //int alID = Convert.ToInt32(Session["UserSession"]);
            int alID = 1;
                //if (CheckSession())
                //{
                    ViewBag.AlRankinList = Data.GetAlumnosRankin();
                    
                    var LastQuest = Data.RankinOld();
                    ViewBag.LastQuestionsRanking = new List<List<RespuestaAlumno>>()
                    {
                        Data.RankinOldAlumnos(LastQuest[0].Nro),
                        Data.RankinOldAlumnos(LastQuest[1].Nro)
                    };
                    ViewBag.LastQuestionsTitle = new List<string>()
                    {
                        LastQuest[0].Nro + " - " + LastQuest[0].Pregunta1,
                        LastQuest[1].Nro + " - " + LastQuest[1].Pregunta1
                    };

                    //Questions not responded by Alumno
                    ViewBag.NoRespList = PreguntaService.GetPreguntasAlumnoSinResponder(alID);


            return View();
                //} else
                //{
                //    return RedirectToAction("Ingresar", "Home");
                //}
            //}
        }

        public ActionResult Preguntas(string filtro)
        {
            //if (!CheckSession())
            //{
            //    return RedirectToAction("Ingresar", "Home");
            //}
            //else
            //{
            //int idAlumno = Convert.ToInt32(Session["UserSession"]);
            int idAlumno = 1;
            List <PreguntaAlumno> preguntas = PreguntaService.GetPreguntasAlumno(FiltrosPreguntas[filtro], idAlumno);
           
            return View(preguntas);
            //}
        }
        public ActionResult VerRespuesta(int? idPregunta)
        {
            //if (!CheckSession())
            //{
            //    return RedirectToAction("Ingresar", "Home");
            //}
            //else
            //{
            //int idAlumno = Convert.ToInt32(Session["UserSession"]);
            if (idPregunta == null)
            {
                return RedirectToAction("Preguntas");
            }

            int idAlumno = 1;
                PreguntaAlumno respuesta = PreguntaService.GetRespuesta(idPregunta, idAlumno);
                return View(respuesta);
            //}
        }
        public ActionResult ResponderPregunta(int? idPregunta)
        {
            //if (!CheckSession())
            //{
            //    return RedirectToAction("Ingresar", "Home");
            //}
            //else
            //{
            if (idPregunta == null)
            {
                return RedirectToAction("Preguntas");
            }

            //Pregunta pregunta = PreguntaService.GetPregunta(idPregunta);
            ViewBag.PreguntaAResponder = PreguntaService.GetPregunta(idPregunta);
            return View();
            //}
        }
        [HttpPost]
        public ActionResult ResponderPregunta(int? idPregunta, RespuestaAlumno ra)
        {
            //if (!CheckSession())
            //{
            //    return RedirectToAction("Ingresar", "Home");
            //}
            //else
            //{
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
            //}
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