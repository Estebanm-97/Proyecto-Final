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
    public class RolController : ApiController
    {
        [HttpGet]
        [Route("api/ConsultarRoles")]
        public List<RolEnt> ConsultarRoles()
        {
            using (var bd = new CCIH_DBEntities())
            {
                var datos = bd.LISTAR_ROLES().ToList();

                if (datos.Count > 0)
                {
                    List<RolEnt> res = new List<RolEnt>();
                    foreach (var item in datos)
                    {
                        res.Add(new RolEnt
                        {
                            IdRol = item.IdRol,
                            Nombre = item.Nombre,
                            IdUsuario = (long)item.IdUsuarioModificacion
                        });
                    }

                    return res;
                }

                return null;
            }

            /*using (var bd = new KN_ProyectoEntities())
            {
                return bd.IniciarSesion(entidad.CorreoElectronico, entidad.Contrasenna).FirstOrDefault();
            }*/
        }
        [HttpPost]
        [Route("api/RegistrarRol")]
        public int RegistrarRol(RolEnt entidad)
        {

            using (var bd = new CCIH_DBEntities())
            {
                return bd.CREAR_ROL(entidad.Nombre,
                                    entidad.IdUsuario);
            }
        }

        [HttpPut]
        [Route("api/ModificarRol")]
        public int ModificarRol(RolEnt entidad)
        {
            using (var bd = new CCIH_DBEntities())
            {
                var datos = (from x in bd.Rol
                             where x.IdRol == entidad.IdRol
                             select x).FirstOrDefault();

                if (datos != null)
                {
                    return bd.EDITAR_ROL(entidad.IdRol,entidad.Nombre,entidad.IdUsuario);
                }

                return 0;
            }
        }

        [HttpGet]
        [Route("api/ConsultarRol")]
        public RolEnt ConsultarRol(long i)
        {
            using (var bd = new CCIH_DBEntities())
            {
                var datos = (from x in bd.Rol
                             where x.IdRol == i
                             select x).FirstOrDefault();

                if (datos != null)
                {
                    RolEnt res = new RolEnt();
                    res.Nombre = datos.Nombre;
                    return res;
                }

                return null;
            }
        }

        [HttpGet]
        [Route("api/ConsultarRolesScrollDown")]
        public List<RolEnt> ConsultarRolesScrollDown()
        {
            using (var bd = new CCIH_DBEntities())
            {
                var datos = bd.LISTAR_ROLES().ToList();

                if (datos.Count > 0)
                {
                    List<RolEnt> res = new List<RolEnt>();
                    foreach (var item in datos)
                    {
                        res.Add(new RolEnt
                        {
                            IdRol = item.IdRol,
                            Nombre = item.Nombre,
                            IdUsuario = (long)item.IdUsuarioModificacion
                        });
                    }

                    return res;
                }

                return new List<RolEnt>();
            }
        }

    }
}
