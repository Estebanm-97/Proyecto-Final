﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace API_CentroCultural.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class CCIH_DBEntities : DbContext
    {
        public CCIH_DBEntities()
            : base("name=CCIH_DBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Asignaciones> Asignaciones { get; set; }
        public virtual DbSet<Bitacora> Bitacora { get; set; }
        public virtual DbSet<Cliente> Cliente { get; set; }
        public virtual DbSet<Curso> Curso { get; set; }
        public virtual DbSet<Estatus> Estatus { get; set; }
        public virtual DbSet<Grupo> Grupo { get; set; }
        public virtual DbSet<Horario> Horario { get; set; }
        public virtual DbSet<Matricula> Matricula { get; set; }
        public virtual DbSet<Modalidad> Modalidad { get; set; }
        public virtual DbSet<NivelCurso> NivelCurso { get; set; }
        public virtual DbSet<Nota> Nota { get; set; }
        public virtual DbSet<Oficina> Oficina { get; set; }
        public virtual DbSet<PagoClientes> PagoClientes { get; set; }
        public virtual DbSet<PagoProveedor> PagoProveedor { get; set; }
        public virtual DbSet<Proveedor> Proveedor { get; set; }
        public virtual DbSet<Rol> Rol { get; set; }
        public virtual DbSet<Usuario> Usuario { get; set; }
        public virtual DbSet<PreMatricula> PreMatricula { get; set; }
    
        public virtual ObjectResult<ConsultarCursos_Result> ConsultarCursos()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ConsultarCursos_Result>("ConsultarCursos");
        }
    
        public virtual ObjectResult<ConsultarEstatus_Result> ConsultarEstatus()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ConsultarEstatus_Result>("ConsultarEstatus");
        }
    
        public virtual ObjectResult<ConsultarGrupos_Result> ConsultarGrupos()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ConsultarGrupos_Result>("ConsultarGrupos");
        }
    
        public virtual ObjectResult<ConsultarHorarios_Result> ConsultarHorarios()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ConsultarHorarios_Result>("ConsultarHorarios");
        }
    
        public virtual ObjectResult<ConsultarModalidad_Result> ConsultarModalidad()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ConsultarModalidad_Result>("ConsultarModalidad");
        }
    
        public virtual ObjectResult<ConsultarNivel_Result> ConsultarNivel()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ConsultarNivel_Result>("ConsultarNivel");
        }
    
        public virtual ObjectResult<ConsultarPreMatricula_Result> ConsultarPreMatricula()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ConsultarPreMatricula_Result>("ConsultarPreMatricula");
        }
    
        public virtual int CREAR_ROL(string nombre, Nullable<long> idUsuario)
        {
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            var idUsuarioParameter = idUsuario.HasValue ?
                new ObjectParameter("IdUsuario", idUsuario) :
                new ObjectParameter("IdUsuario", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("CREAR_ROL", nombreParameter, idUsuarioParameter);
        }
    
        public virtual int EDITAR_ROL(Nullable<long> idRol, string nombre, Nullable<long> idUsuario)
        {
            var idRolParameter = idRol.HasValue ?
                new ObjectParameter("IdRol", idRol) :
                new ObjectParameter("IdRol", typeof(long));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            var idUsuarioParameter = idUsuario.HasValue ?
                new ObjectParameter("IdUsuario", idUsuario) :
                new ObjectParameter("IdUsuario", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("EDITAR_ROL", idRolParameter, nombreParameter, idUsuarioParameter);
        }
    
        public virtual int ELIMINAR_ROL(Nullable<long> idRol)
        {
            var idRolParameter = idRol.HasValue ?
                new ObjectParameter("IdRol", idRol) :
                new ObjectParameter("IdRol", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ELIMINAR_ROL", idRolParameter);
        }
    
        public virtual ObjectResult<InicioSesion_Result> InicioSesion(string nombreUsuario, string contrasenna)
        {
            var nombreUsuarioParameter = nombreUsuario != null ?
                new ObjectParameter("nombreUsuario", nombreUsuario) :
                new ObjectParameter("nombreUsuario", typeof(string));
    
            var contrasennaParameter = contrasenna != null ?
                new ObjectParameter("contrasenna", contrasenna) :
                new ObjectParameter("contrasenna", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<InicioSesion_Result>("InicioSesion", nombreUsuarioParameter, contrasennaParameter);
        }
    
        public virtual int INSERTAR_ROL(string nombreRol, Nullable<long> idUsuario)
        {
            var nombreRolParameter = nombreRol != null ?
                new ObjectParameter("NombreRol", nombreRol) :
                new ObjectParameter("NombreRol", typeof(string));
    
            var idUsuarioParameter = idUsuario.HasValue ?
                new ObjectParameter("IdUsuario", idUsuario) :
                new ObjectParameter("IdUsuario", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("INSERTAR_ROL", nombreRolParameter, idUsuarioParameter);
        }
    
        public virtual int InsertarCliente(string cedula, string correo, string nombre, string apellido1, string apellido2, Nullable<System.DateTime> fechaNacimiento, string telefono, string direccion, Nullable<long> idEstatus, Nullable<long> idRol)
        {
            var cedulaParameter = cedula != null ?
                new ObjectParameter("Cedula", cedula) :
                new ObjectParameter("Cedula", typeof(string));
    
            var correoParameter = correo != null ?
                new ObjectParameter("Correo", correo) :
                new ObjectParameter("Correo", typeof(string));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            var apellido1Parameter = apellido1 != null ?
                new ObjectParameter("Apellido1", apellido1) :
                new ObjectParameter("Apellido1", typeof(string));
    
            var apellido2Parameter = apellido2 != null ?
                new ObjectParameter("Apellido2", apellido2) :
                new ObjectParameter("Apellido2", typeof(string));
    
            var fechaNacimientoParameter = fechaNacimiento.HasValue ?
                new ObjectParameter("FechaNacimiento", fechaNacimiento) :
                new ObjectParameter("FechaNacimiento", typeof(System.DateTime));
    
            var telefonoParameter = telefono != null ?
                new ObjectParameter("Telefono", telefono) :
                new ObjectParameter("Telefono", typeof(string));
    
            var direccionParameter = direccion != null ?
                new ObjectParameter("Direccion", direccion) :
                new ObjectParameter("Direccion", typeof(string));
    
            var idEstatusParameter = idEstatus.HasValue ?
                new ObjectParameter("IdEstatus", idEstatus) :
                new ObjectParameter("IdEstatus", typeof(long));
    
            var idRolParameter = idRol.HasValue ?
                new ObjectParameter("IdRol", idRol) :
                new ObjectParameter("IdRol", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("InsertarCliente", cedulaParameter, correoParameter, nombreParameter, apellido1Parameter, apellido2Parameter, fechaNacimientoParameter, telefonoParameter, direccionParameter, idEstatusParameter, idRolParameter);
        }
    
        public virtual int InsertarPrematricula(string correoElectronico, string telefono, string nombre, string apellido1, string apellido2, Nullable<long> idCurso, Nullable<long> idModalidad, Nullable<long> idNivel, Nullable<long> idEstatus, Nullable<System.DateTime> fechaPrematricula)
        {
            var correoElectronicoParameter = correoElectronico != null ?
                new ObjectParameter("CorreoElectronico", correoElectronico) :
                new ObjectParameter("CorreoElectronico", typeof(string));
    
            var telefonoParameter = telefono != null ?
                new ObjectParameter("Telefono", telefono) :
                new ObjectParameter("Telefono", typeof(string));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            var apellido1Parameter = apellido1 != null ?
                new ObjectParameter("Apellido1", apellido1) :
                new ObjectParameter("Apellido1", typeof(string));
    
            var apellido2Parameter = apellido2 != null ?
                new ObjectParameter("Apellido2", apellido2) :
                new ObjectParameter("Apellido2", typeof(string));
    
            var idCursoParameter = idCurso.HasValue ?
                new ObjectParameter("IdCurso", idCurso) :
                new ObjectParameter("IdCurso", typeof(long));
    
            var idModalidadParameter = idModalidad.HasValue ?
                new ObjectParameter("IdModalidad", idModalidad) :
                new ObjectParameter("IdModalidad", typeof(long));
    
            var idNivelParameter = idNivel.HasValue ?
                new ObjectParameter("IdNivel", idNivel) :
                new ObjectParameter("IdNivel", typeof(long));
    
            var idEstatusParameter = idEstatus.HasValue ?
                new ObjectParameter("IdEstatus", idEstatus) :
                new ObjectParameter("IdEstatus", typeof(long));
    
            var fechaPrematriculaParameter = fechaPrematricula.HasValue ?
                new ObjectParameter("FechaPrematricula", fechaPrematricula) :
                new ObjectParameter("FechaPrematricula", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("InsertarPrematricula", correoElectronicoParameter, telefonoParameter, nombreParameter, apellido1Parameter, apellido2Parameter, idCursoParameter, idModalidadParameter, idNivelParameter, idEstatusParameter, fechaPrematriculaParameter);
        }
    
        public virtual ObjectResult<LISTAR_ROLES_Result> LISTAR_ROLES()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<LISTAR_ROLES_Result>("LISTAR_ROLES");
        }
    
        public virtual int RegistarMatricula(string cedula, Nullable<long> idCurso, Nullable<long> idModalidad, Nullable<long> idNivel, Nullable<long> idHorario, Nullable<decimal> monto, Nullable<System.DateTime> fechaMatricula, Nullable<int> diaPago, string comentario, Nullable<long> idEstatus)
        {
            var cedulaParameter = cedula != null ?
                new ObjectParameter("Cedula", cedula) :
                new ObjectParameter("Cedula", typeof(string));
    
            var idCursoParameter = idCurso.HasValue ?
                new ObjectParameter("IdCurso", idCurso) :
                new ObjectParameter("IdCurso", typeof(long));
    
            var idModalidadParameter = idModalidad.HasValue ?
                new ObjectParameter("IdModalidad", idModalidad) :
                new ObjectParameter("IdModalidad", typeof(long));
    
            var idNivelParameter = idNivel.HasValue ?
                new ObjectParameter("IdNivel", idNivel) :
                new ObjectParameter("IdNivel", typeof(long));
    
            var idHorarioParameter = idHorario.HasValue ?
                new ObjectParameter("IdHorario", idHorario) :
                new ObjectParameter("IdHorario", typeof(long));
    
            var montoParameter = monto.HasValue ?
                new ObjectParameter("Monto", monto) :
                new ObjectParameter("Monto", typeof(decimal));
    
            var fechaMatriculaParameter = fechaMatricula.HasValue ?
                new ObjectParameter("FechaMatricula", fechaMatricula) :
                new ObjectParameter("FechaMatricula", typeof(System.DateTime));
    
            var diaPagoParameter = diaPago.HasValue ?
                new ObjectParameter("DiaPago", diaPago) :
                new ObjectParameter("DiaPago", typeof(int));
    
            var comentarioParameter = comentario != null ?
                new ObjectParameter("Comentario", comentario) :
                new ObjectParameter("Comentario", typeof(string));
    
            var idEstatusParameter = idEstatus.HasValue ?
                new ObjectParameter("IdEstatus", idEstatus) :
                new ObjectParameter("IdEstatus", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("RegistarMatricula", cedulaParameter, idCursoParameter, idModalidadParameter, idNivelParameter, idHorarioParameter, montoParameter, fechaMatriculaParameter, diaPagoParameter, comentarioParameter, idEstatusParameter);
        }
    }
}