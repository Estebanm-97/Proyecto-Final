using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CCIH.Entities.Administracion
{
    public class MatriculaEnt
    {
        public string Cedula { get; set; }
        public int IdCurso { get; set; }
        public int IdModalidad { get; set; }
        public int IdNivel { get; set; }
        public int IdHorario { get; set; }
        public Decimal Monto { get; set; }
        public DateTime FechaMatricula { get; set; }
        public int DiaPago { get; set; }
        public string Comentario { get; set; }
        public int IdEstatus { get; set; }


    }
}