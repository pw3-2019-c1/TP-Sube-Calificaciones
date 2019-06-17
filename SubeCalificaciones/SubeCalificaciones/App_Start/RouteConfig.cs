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
                name: "Alumno",
                url: "{controller}/{action}/{extra}",
                defaults: new { controller = "Alumno", action = "Index", extra = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Profesor",
                url: "{controller}/{action}/{extra}",
                defaults: new { controller = "Profesor", action = "Index", extra = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}",
                defaults: new { controller = "Home", action = "Ingresar" }
            );
        }
    }
}
