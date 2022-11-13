namespace Sistema.Proyecto
{
    public class ObtenerUsuariosOutput
    {
        public List<UsuarioDto> Usuarios { get; set; }
    }

    public class CrearUsuarioInput
    {
        public int IdRol { get; set; }
        public string Nombre { get; set; }
        public string TipoDocumento { get; set; }
        public string NumDocumento { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
    }

    public class CrearUsuarioOutput
    {
        public string Mensaje { get; set; }
    }

    public class LoginInput
    {
        public string Email { get; set; }
        public string Password { get; set; }
    }

    public class LoginOutput
    {
        public string Mensaje { get; set; }
        public string Usuario { get; set; }
        public string Token { get; set; }
        public DateTime Expires { get; set; }
    }
}
