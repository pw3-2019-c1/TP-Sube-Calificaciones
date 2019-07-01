﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SubeCalificaciones.Models;
using SubeCalificaciones.Services.PreguntaS;
using SubeCalificaciones.Services;

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

        public ActionResult EvaluarRespuestas(int idPregunta, int filtro)
        {
            if (!CheckSession())
            {
                return RedirectToAction("Ingresar", "Home");
            }
            else
            {
                Pregunta pregunta = PreguntaService.GetPregunta(idPregunta);
                List<RespuestaAlumno> respuestas = PreguntaService.GetRespuestas(idPregunta, filtro);
                ViewBag.pregunta = pregunta;
                ViewBag.PuedeElegirMejorRespuesta = PreguntaService.PuedeElegirMejorRespuesta(idPregunta);
                return View(respuestas);
            }
        }

        public ActionResult CorregirRespuesta(int idRespuesta, int resultadoEvaluacion)
        {
            if (!CheckSession())
            {
                return RedirectToAction("Ingresar", "Home");
            }
            else
            {
                int idProfesor = Convert.ToInt32(Session["UserSession"]);
                PreguntaService.UpdateRespuesta(idRespuesta, resultadoEvaluacion, idProfesor);
                RespuestaAlumno resp = PreguntaService.GetRespuesta(idRespuesta);
                return RedirectToAction("EvaluarRespuestas", new { idPregunta = resp.IdPregunta, filtro = -1 });
            }
        }

        public ActionResult ElegirMejorRespuesta(int idRespuesta)
        {
            if (!CheckSession())
            {
                return RedirectToAction("Ingresar", "Home");
            }
            else
            {
                PreguntaService.ElegirMejorRespuesta(idRespuesta);
                RespuestaAlumno resp = PreguntaService.GetRespuesta(idRespuesta);
                return RedirectToAction("EvaluarRespuestas", new { idPregunta = resp.IdPregunta, filtro = -1 });
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
	    public ActionResult CrearPregunta()
        {
            ViewBag.nro = PreguntaService.GetLastPregunta().IdPregunta + 1;
            List<Clase> ListaClase = ClaseService.ListarClase();
            ViewBag.clases = ListaClase;

            List<Tema> ListaTema = TemaService.ListarTema();
            ViewBag.temas = ListaTema;

            return View();
        }
        [HttpPost]
        public ActionResult CrearPregunta(Pregunta pregunta)
        {
            //validar que  dos clases tengan no el mismo número de pregunta
            var PreguntaExistente = PreguntaService.ValidarExistencia(pregunta);
            var fechaValida = PreguntaService.ValidarFechaHasta(pregunta);
            if (ModelState.IsValid)
            {
                if (PreguntaExistente > 0)
                {
                    ModelState.AddModelError("", "Ya existe una pregunta con este número de Pregunta");
                }
                //la fecha hasta es menor a la fecha desde
                if (fechaValida > 0)
                {
                    ModelState.AddModelError("", "El campo Hasta debe ser mayor al campo Desde");
                }
            }
            if (ModelState.IsValid)
            {
                pregunta.FechaHoraCreacion = DateTime.Now;
                PreguntaService.CrearPregunta(pregunta);
                return RedirectToAction("Index");
            }

            ViewBag.nro = PreguntaService.GetLastPregunta().IdPregunta + 1;
            List<Clase> ListaClase = ClaseService.ListarClase();
            ViewBag.clases = ListaClase;

            List<Tema> ListaTema = TemaService.ListarTema();
            ViewBag.temas = ListaTema;

            return View("CrearPregunta");
        }
    }
}