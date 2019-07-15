using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace SubeCalificaciones
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Preguntas",
                url: "Alumno/Preguntas/{filtro}",
                defaults: new { controller = "Alumno", action = "Preguntas", filtro = "Todas" }
            );

            routes.MapRoute(
                name: "ResponderPregunta",
                url: "Alumno/ResponderPregunta/{idPregunta}",
                defaults: new { controller = "Alumno", action = "ResponderPregunta", idPregunta = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "VerRespuesta",
                url: "Alumno/VerRespuesta/{idPregunta}",
                defaults: new { controller = "Alumno", action = "VerRespuesta", idPregunta = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Alumno",
                url: "Alumno/{action}/{extra}",
                defaults: new { controller = "Alumno", action = "Index", extra = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Profesor",
                url: "Profesor/{action}/{extra}",
                defaults: new { controller = "Profesor", action = "Index", extra = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Error",
                url: "Error/{code}",
                defaults: new { controller = "Error", action = "Index", code = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}",
                defaults: new { controller = "Home", action = "Inicio" }
            );
        }
    }
}
