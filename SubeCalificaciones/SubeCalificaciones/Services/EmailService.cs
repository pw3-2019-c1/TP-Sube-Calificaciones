using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
using SubeCalificaciones.Models;

namespace SubeCalificaciones.Services
{
    public class EmailService
    {
        protected static TP_20191CEntities db = new TP_20191CEntities();

        public static List<Clase> ListarClase()
        {
            List<Clase> clases = (from c in db.Clases select c).ToList();
            return clases;
        }

        public static void SendEmail(Email email)
        {
            var body = "<p>Email de: {0} ({1})</p><p>Mensaje:</p><p>{2}</p>";
            var message = new MailMessage();
            foreach (string e in email.DestinatarioEmail) {
                message.To.Add(e);
            }
           // message.To.Add(new MailAddress("srsofia014@gmail.com")); 
            message.From = new MailAddress(email.RemitenteEmail); 
            message.Subject = email.Asunto;
            message.Body = string.Format(body, email.Remitente, email.RemitenteEmail, email.Contenido);
            message.IsBodyHtml = true;

            using (var smtp = new SmtpClient())
            {
                var credential = new NetworkCredential
                {
                    UserName = "testunlam2019@gmail.com",  // replace with valid value
                    Password = "test2019"  // replace with valid value
                };
                smtp.Credentials = credential;
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Send(message);
            }
        }
    }
}