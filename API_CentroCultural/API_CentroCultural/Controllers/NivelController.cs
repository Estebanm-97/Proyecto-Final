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
    public class NivelController : ApiController
    {

        [HttpGet]
        [Route("api/ConsultarNivelScrollDown")]
        public List<NivelEnt> ConsultarNivelScrollDown()
        {
            using (var bd = new CCIH_DBEntities())
            {
                var datos = bd.ConsultarNivel().ToList();

                if (datos.Count > 0)
                {
                    List<NivelEnt> res = new List<NivelEnt>();
                    foreach (var item in datos)
                    {
                        res.Add(new NivelEnt
                        {
                            IdNivelCurso = item.IdNivelCurso,
                            Nombre = item.Nombre
                        });
                    }

                    return res;
                }

                return new List<NivelEnt>();
            }
        }

    }
}
