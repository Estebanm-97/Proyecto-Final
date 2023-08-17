using CCIH.Entities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Json;
using System.Web;

namespace CCIH.Models
{
    public class RolModel
    {
        public List<RolEnt> ConsultarRoles()
        {
            using (var client = new HttpClient())
            {
                string url = ConfigurationManager.AppSettings["urlApi"].ToString() + "api/ConsultarRoles";
                HttpResponseMessage resp = client.GetAsync(url).Result;

                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<List<RolEnt>>().Result;
                }

                return new List<RolEnt>();
            }

        }

        public int RegistrarRol(RolEnt entidad)
        {
            using (var client = new HttpClient())
            {
                string url = ConfigurationManager.AppSettings["urlApi"].ToString() + "api/RegistrarRol";
                JsonContent body = JsonContent.Create(entidad); //Serializar
                HttpResponseMessage resp = client.PostAsync(url, body).Result;
                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<int>().Result;
                }

                return 0;
            }
        }
        public int ModificarRol(RolEnt entidad)
        {
            using (var client = new HttpClient())
            {
                string url = ConfigurationManager.AppSettings["urlApi"].ToString() + "api/ModificarRol";
                JsonContent body = JsonContent.Create(entidad); //Serializar
                HttpResponseMessage resp = client.PostAsync(url, body).Result;
                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<int>().Result;
                }

                return 0;
            }
        }
        public RolEnt ConsultarRol(long i)
        {
            using (var client = new HttpClient())
            {
                string url = ConfigurationManager.AppSettings["urlApi"].ToString() + "api/ConsultarRol?i=" + i;
                HttpResponseMessage resp = client.GetAsync(url).Result;

                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<RolEnt>().Result;
                }

                return null;
            }
        }


        public List<RolEnt> ConsultarRolesListarRolesScrollDown()
        {
            using (var client = new HttpClient())
            {
                string url = ConfigurationManager.AppSettings["urlApi"].ToString() + "api/ConsultarRolesScrollDown";
                HttpResponseMessage resp = client.GetAsync(url).Result;

                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<List<RolEnt>>().Result;
                }

                return new List<RolEnt>();
            }

        }

    }
}