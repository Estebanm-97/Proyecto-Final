using CCIH.Entities;
using CCIH.Entities.Administracion;
using CCIH.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;

namespace CCIH.Controllers
{
    public class MatriculaController : Controller
    {
        MatriculaModel model = new MatriculaModel();

        [HttpPost]
        public ActionResult RegistrarMatricula(MatriculaEnt entidad)
        {
            entidad.Cedula = @Session["CedulaCliente"].ToString();
            try
            {

                var resp = model.RegistrarMatricula(entidad);

                if (resp > 0)
                {
                    @Session["CedulaCliente"] = "";
                    return RedirectToAction("ConsultarMatricula", "Administracion");
                }
                else
                {
                    ViewBag.MsjPantalla = "No se ha podido registrar su información";
                    return View("CrearMatricula");
                }
            }
            catch (Exception ex)
            {
                return View("Error");
            }
        }

        [HttpGet]
        public ActionResult ConsultarPreMatricula(PreMatriculaEnt entidad)
        {
            var datos = model.ConsultarPreMatricula();
            Session["PreMatriculaPendiente"] = datos.Count;

            
            return View(datos);
        }
    }
}