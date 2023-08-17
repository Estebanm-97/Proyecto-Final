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
    public class ClienteController : ApiController
    {


        [HttpPost]
        [Route("api/RegistrarCliente")]
        public int RegistrarCliente(ClienteEnt ent)
        {
            try
            {
                using (var bd = new CCIH_DBEntities())
                {
                    return bd.InsertarCliente(ent.Cedula,
                        ent.Correo,
                        ent.Nombre,
                        ent.Apellido1,
                        ent.Apellido2,
                        ent.FechaNacimiento,
                        ent.Telefono,
                        ent.Direccion,
                        ent.IdEstatus,
                        ent.IdRol
                        );
                }
            }
            catch (Exception ex)
            {

            }
            return 0;
        }



    }
}
