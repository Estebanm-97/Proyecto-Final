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
    public class GrupoController : ApiController
    {

        [HttpGet]
        [Route("api/ConsultarGruposScrollDown")]
        public List<GrupoEnt> ConsultarGruposScrollDown()
        {
            using (var bd = new CCIH_DBEntities())
            {
                var datos = bd.ConsultarGrupos().ToList();

                if (datos.Count > 0)
                {
                    List<GrupoEnt> res = new List<GrupoEnt>();
                    foreach (var item in datos)
                    {
                        res.Add(new GrupoEnt
                        {
                            IdGrupo = item.IdGrupo
                        });
                    }

                    return res;
                }

                return new List<GrupoEnt>();
            }
        }


    }
}
