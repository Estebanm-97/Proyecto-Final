//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace API_CentroCultural.Models
{
    using System;
    
    public partial class ConsultarPreMatricula_Result
    {
        public long IdPrematricula { get; set; }
        public string CorreoElectronico { get; set; }
        public string Telefono { get; set; }
        public Nullable<System.DateTime> Fecha { get; set; }
        public string Nombre { get; set; }
        public string Apellido1 { get; set; }
        public string Apellido2 { get; set; }
        public string Curso { get; set; }
        public string Modalidad { get; set; }
        public string Nivel { get; set; }
        public string Estatus { get; set; }
    }
}