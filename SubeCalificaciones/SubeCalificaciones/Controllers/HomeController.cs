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
        public bool CheckSession()
        {
            return (!string.IsNullOrEmpty(Session["UserSession"] as string)) ? true : false;
        }

        public ActionResult Ingresar()
        {
            if (CheckSession())
            {
                return RedirectToAction("Inicio", "Home");
            }
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
                        ua.LogError = "Datos invalidos, intente nuevamente.";
                    }
                    else
                    {
                        Session["UserSession"] = (profesorDetails.IdProfesor).ToString();
                        Session["UserName"] = profesorDetails.Nombre + " " + profesorDetails.Apellido;
                        Session["UserType"] = "Profesor";
                        return Redirect("/Home/Inicio");
                    }
                } else
                {
                    Alumno alumnoDetails = CheckUserToLog.GetAlumno(ua);
                    if (alumnoDetails == null)
                    {
                        ua.LogError = "Datos invalidos, intente nuevamente.";
                    }
                    else
                    {
                        Session["UserSession"] = (alumnoDetails.IdAlumno).ToString();
                        Session["UserName"] = alumnoDetails.Nombre + " " + alumnoDetails.Apellido;
                        Session["UserType"] = "Alumno";
                        return Redirect("/Home/Inicio");
                    }
                }
            }
            return View(ua);
        }

        public ActionResult Inicio()
        {
            if (!CheckSession())
            {
                return RedirectToAction("Ingresar", "Home");
            }

            ViewBag.AlRankinList = HomeService.GetAlumnosRanking();
            var LastQuest = HomeService.GetLastQuestions();
            ViewBag.LastQuestionsRanking = new List<List<RespuestaAlumno>>()
                {
                    HomeService.GetQuestionRanking(LastQuest[0].IdPregunta),
                    HomeService.GetQuestionRanking(LastQuest[1].IdPregunta)
                };
            ViewBag.LastQuestionsTitle = new List<string>()
                {
                    LastQuest[0].Nro + " - " + LastQuest[0].Pregunta1,
                    LastQuest[1].Nro + " - " + LastQuest[1].Pregunta1
                };

            ViewBag.NoRespList = HomeService.GetUnansweredQuestions(Convert.ToInt32(Session["UserSession"]));
            return View();
        }

        public ActionResult Logout()
        {
            Session.Abandon();
            return RedirectToAction("Ingresar", "Home");
        }

    }
}