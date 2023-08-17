using API_CentroCultural.Models;
using CCIH.Entities;
using CCIH.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace API_CentroCultural.Controllers
{
    public class ModalidadController : ApiController
    {

        [HttpGet]
        [Route("api/ConsultarModalidadScrollDown")]
        public List<ModalidadEnt> ConsultarModalidadScrollDown()
        {
            using (var bd = new CCIH_DBEntities())
            {
                var datos = bd.ConsultarModalidad().ToList();

                if (datos.Count > 0)
                {
                    List<ModalidadEnt> res = new List<ModalidadEnt>();
                    foreach (var item in datos)
                    {
                        res.Add(new ModalidadEnt
                        {
                            IdModalidad = item.IdModalidad,
                            Nombre = item.Nombre
                        });
                    }

                    return res;
                }

                return new List<ModalidadEnt>();
            }
        }
    }
}
