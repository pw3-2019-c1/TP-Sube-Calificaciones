using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SubeCalificaciones.Models
{
    public class Email
    {
        public string Remitente { get; set; }
        public string RemitenteEmail { get; set; }
        public List<string> DestinatarioEmail { get; set; }
        public string Asunto { get; set; }
        public string Contenido { get; set; }

        public Email()
        {
            this.DestinatarioEmail = new List<string>();
        }
        public Email(string remitente, string remitenteEmail, List<string> destinatarioEmail, string asunto, string contenido) {
            this.Remitente = remitente;
            this.RemitenteEmail = remitenteEmail;
            this.DestinatarioEmail = destinatarioEmail;
            this.Asunto = asunto;
            this.Contenido = contenido;
        }
    }
}