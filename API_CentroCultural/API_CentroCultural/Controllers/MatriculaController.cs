using API_CentroCultural.Entities;
using API_CentroCultural.Models;
using CCIH.Entities.Administracion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace API_CentroCultural.Controllers
{
    public class MatriculaController : ApiController
    {
        Emails Email = new Emails();

        [HttpPost]
        [Route("api/RegistrarMatricula")]
        public int RegistrarMatricula(MatriculaEnt ent)
        {
            try
            {
                using (var bd = new CCIH_DBEntities())
                {
                    return bd.RegistarMatricula(ent.Cedula,
                        ent.IdCurso,
                        ent.IdModalidad,
                        ent.IdNivel,
                        ent.IdHorario,
                        ent.Monto,
                        ent.FechaMatricula,
                        ent.DiaPago,
                        ent.Comentario,
                        ent.IdEstatus
                        );
                }
            }
            catch (Exception ex)
            {

            }
            return 0;
        }



        [HttpPost]
        [Route("api/PreMatriculaCurso")]
        public int PreMatriculaCurso(PreMatriculaEnd ent)
        {
            try
            {
                using (var bd = new CCIH_DBEntities())
                {
                    string mensaje = "Estimado(a) ," + ent.Nombre + "Hemos recibido su solicitud de PreMatricula." +
                        "Nuestros representantes se comunicaran en breve para completar su proceso de matricula";

                    Email.SendEmail(ent.CorreoElectronico, "PreMatricula Completada", mensaje);

                    return bd.InsertarPrematricula(
                        ent.CorreoElectronico,
                        ent.Telefono,
                        ent.Nombre,
                        ent.Apellido1,
                        ent.Apellido2,
                        ent.IdCurso,
                        ent.IdModalidad,
                        ent.IdNivel,
                        ent.IdEstatus,
                        ent.FechaPreMatricula
                        );
                }
            }
            catch (Exception ex)
            {

            }
            return 0;
        }


        [HttpGet]
        [Route("api/ConsultarPreMatriculas")]
        public List<PreMatriculaEnd> ConsultarPreMatriculas()
        {
            using (var bd = new CCIH_DBEntities())
            {
                var datos = bd.ConsultarPreMatricula().ToList();

                if (datos.Count > 0)
                {
                    List<PreMatriculaEnd> res = new List<PreMatriculaEnd>();
                    foreach (var item in datos)
                    {
                        res.Add(new PreMatriculaEnd
                        {
                            IdPrematricula = (int)item.IdPrematricula,
                            CorreoElectronico = item.CorreoElectronico,
                            Nombre = item.Nombre,
                            Apellido1 = item.Apellido1,
                            Telefono = item.Telefono,
                            FechaPreMatricula = (DateTime)item.Fecha,
                            Curso = item.Curso,
                            Modalidad = item.Modalidad,
                            Nivel = item.Nivel,
                            Estatus = item.Estatus
                        });
                    }

                    return res;
                }

                return null;
            }
        }
    }
}
