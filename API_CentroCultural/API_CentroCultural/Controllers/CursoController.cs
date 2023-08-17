using API_CentroCultural.Entities;
using API_CentroCultural.Models;
using CCIH.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace API_CentroCultural.Controllers
{
    public class CursoController : ApiController
    {

        [HttpGet]
        [Route("api/ConsultarCursosScrollDown")]
        public List<CrusosEnt> ConsultarCursosScrollDown()
        {
            using (var bd = new CCIH_DBEntities())
            {
                var datos = bd.ConsultarCursos().ToList();

                if (datos.Count > 0)
                {
                    List<CrusosEnt> res = new List<CrusosEnt>();
                    foreach (var item in datos)
                    {
                        res.Add(new CrusosEnt
                        {
                            IdCurso = item.IdCurso,
                            Nombre = item.Nombre
                        });
                    }

                    return res;
                }

                return new List<CrusosEnt>();
            }
        }

    }
}
