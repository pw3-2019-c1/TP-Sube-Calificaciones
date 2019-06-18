using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SubeCalificaciones.Models
{
    public class UsuarioAnonimo
    {
        [Required(ErrorMessage = "El email es requerido.")]
        public string InputEmail { get; set; }

        [DataType(DataType.Password)]
        [Required(ErrorMessage = "La contraseña es requerida.")]
        public string InputPassword { get; set; }
        public bool IsProfesor { get; set; }
        public string LoggError { get; set; }
    }
}