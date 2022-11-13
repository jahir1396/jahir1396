namespace Sistema.Proyecto
{
    public interface IUsuarioService
    {
        Task<ObtenerUsuariosOutput> ObtenerUsuarios();
        Task<CrearUsuarioOutput> CrearUsuario(CrearUsuarioInput input);
        Task<LoginOutput> Login(LoginInput input);
    }
}
