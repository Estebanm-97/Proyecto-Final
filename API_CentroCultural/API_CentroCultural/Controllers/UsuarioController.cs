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
    public class UsuarioController : ApiController
    {
        [HttpPost]
        [Route("api/IniciarSesion")]
        public UsuarioEnt IniciarSesion(UsuarioEnt entidad)
        {
            using (var bd = new CCIH_DBEntities())
            {
                var datos = bd.InicioSesion(entidad.Usuario, entidad.PwUsuario).FirstOrDefault();

                if (datos != null)
                {
                    //if (datos.ClaveTemporal.Value && datos.Caducidad < DateTime.Now)
                    //{
                    //    return null;
                    //}

                    UsuarioEnt res = new UsuarioEnt();
                    res.Usuario = datos.Usuario;
                    res.IdUsuario = datos.IdUsuario;
                    res.IdEstatus = (long)datos.IdEstatus;
                    res.IdRol = (long)datos.IdRol;
                    res.IdUsuario = datos.IdUsuario;
                    return res;
                }

                return null;
            }

            /*using (var bd = new KN_ProyectoEntities())
            {
                return bd.IniciarSesion(entidad.CorreoElectronico, entidad.Contrasenna).FirstOrDefault();
            }*/
        }
        [HttpGet]
        [Route("api/ConsultarUsuario")]
        public List<UsuarioEnt> ConsultarUsuario()
        {
            try
            {

            }
            catch (Exception ex)
            {

            }
            return new List<UsuarioEnt>();
        }

        [HttpGet]
        [Route("api/ConsultarUsuarioId")]
        public void ConsultarUsuarioId(UsuarioEnt ent)
        {
            try
            {

            }
            catch (Exception ex)
            {

            }

        }
        [HttpPost]
        [Route("api/RegistrarUsuario")]
        public bool RegistrarUsuario(UsuarioEnt ent)
        {
            try
            {
                return true;
            }
            catch (Exception ex)
            {

            }
            return false;
        }
        [HttpPost]
        [Route("api/EditarUsuario")]
        public bool EditarUsuario(int UsuarioId)
        {
            try
            {
                return true;
            }
            catch (Exception ex)
            {

            }
            return false;
        }
        [HttpPost]
        [Route("api/EliminarUsuario")]
        public bool EliminarrUsuario(int UsuarioId)
        {
            try
            {
                return true;
            }
            catch (Exception ex)
            {

            }
            return false;
        }
    }
}
