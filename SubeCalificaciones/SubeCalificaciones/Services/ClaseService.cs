using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SubeCalificaciones.Services
{
    public class ClaseService
    {
        protected static TP_20191CEntities db = new TP_20191CEntities();

        public static List<Clase> ListarClase()
        {
            List<Clase> clases = (from c in db.Clase select c).ToList();
            return clases;
        }

    }
}