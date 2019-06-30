using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SubeCalificaciones.Services
{
    public class TemaService
    {
        protected static TP_20191CEntities db = new TP_20191CEntities();

        public static List<Tema> ListarTema()
        {
            List<Tema> temas = (from c in db.Tema select c).ToList();
            return temas;
        }
    }
}