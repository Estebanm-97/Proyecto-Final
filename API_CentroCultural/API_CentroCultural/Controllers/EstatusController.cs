using API_CentroCultural.Entities;
using API_CentroCultural.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace API_CentroCultural.Controllers
{
    public class EstatusController : ApiController
    {


        [HttpGet]
        [Route("api/ConsultarEstatusScrollDown")]
        public List<EstatusEnt> ConsultarEstatusScrollDown()
        {
            using (var bd = new CCIH_DBEntities())
            {
                var datos = bd.ConsultarEstatus().ToList();

                if (datos.Count > 0)
                {
                    List<EstatusEnt> res = new List<EstatusEnt>();
                    foreach (var item in datos)
                    {
                        res.Add(new EstatusEnt
                        {
                            IdEstatus = item.IdEstatus,
                            Nombre = item.Nombre
                        });
                    }

                    return res;
                }

                return new List<EstatusEnt>();
            }
        }

    }   
}