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
    public class HorarioController : ApiController
    {

        [HttpGet]
        [Route("api/ConsultarHorarioScrollDown")]
        public List<HorarioEnt> ConsultarHorarioScrollDown()
        {
            using (var bd = new CCIH_DBEntities())
            {
                var datos = bd.ConsultarHorarios().ToList();

                if (datos.Count > 0)
                {
                    List<HorarioEnt> res = new List<HorarioEnt>();
                    foreach (var item in datos)
                    {
                        res.Add(new HorarioEnt
                        {
                            IdHorario = item.IdHorario,
                            Dia = item.Dia
                        });
                    }

                    return res;
                }

                return new List<HorarioEnt>();
            }
        }

    }
}
