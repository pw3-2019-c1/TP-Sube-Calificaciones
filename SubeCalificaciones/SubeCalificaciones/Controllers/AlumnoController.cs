using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SubeCalificaciones.Models;
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
            //    int alID = Convert.ToInt32(Session["UserSession"]);
            //    if (CheckSession())
            //    {
                    int idAlumno = 1;// for test <----------------------------------
                    //Data.SetAlumnoId(alID);
                    Data.SetAlumnoId(idAlumno);// for test <----------------------------------
                    Alumno al = Data.GetAlumno();
                    ViewBag.alNombre = al.Nombre;
                    ViewBag.alApellido = al.Apellido;
                    //Top 5 Rank
                    ViewBag.AlRankinList = Data.GetAlumnosRankin();
                    //Old Rank
                    var LastQuest = Data.RankinOld();
                    //Old Rank questions 1
                    ViewBag.FirstLQTitle = LastQuest[0].TipoPregunta;
                    ViewBag.FirstLQNr = LastQuest[0].NroPregunta;
                    var firstLastQuest = LastQuest[0].NroPregunta;
                    ViewBag.FirstLQAlumnos = Data.RankinOldAlumnos(firstLastQuest);
                    //Old Rank questions 2
                    ViewBag.SecondLQTitle = LastQuest[1].TipoPregunta;
                    ViewBag.SecondLQNr = LastQuest[1].NroPregunta;
                    var secondLastQuest = LastQuest[1].NroPregunta;
                    ViewBag.SecondLQAlumnos = Data.RankinOldAlumnos(secondLastQuest);
                    //Questions not responded by Alumno
                    //ViewBag.NoRespList = Data.NotResponseQuest(alID);
                    ViewBag.NoRespList = Data.NotResponseQuest(idAlumno);// for test <----------------------------------

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
        public ActionResult ResponderPregunta(int idPregunta)
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
        [HttpPost]
        public ActionResult ResponderPregunta()
        {
            if (!CheckSession())
            {
                return RedirectToAction("Ingresar", "Home");
            }
            else
            {
                return RedirectToAction("Preguntas");
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