﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace API_CentroCultural.Entities
{
    public class RolEnt
    {
        public long IdRol { get; set; }
        public string Nombre { get; set; }
        public long IdUsuario { get; set; }

    }
}