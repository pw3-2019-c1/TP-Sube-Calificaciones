using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SubeCalificaciones.Services;

namespace SubeCalificaciones.Controllers
{
    public class ProfesorController : Controller
    {
        // GET: Profesor
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Logout()
        {
            Session.Abandon();
            return RedirectToAction("Ingresar", "Home");
        }
        public ActionResult AcercaDe()
        {
            return View();
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