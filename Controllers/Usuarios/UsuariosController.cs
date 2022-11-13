using AutoMapper;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Sistema.Proyecto
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsuariosController : ControllerServiceBase
    {
        private SistemaDbContext _context;
        private IUsuarioService _usuarioService;        

        public UsuariosController(IHttpContextAccessor httpContextAccessor, 
            SistemaDbContext context,
            IUsuarioService usuarioService) : base(httpContextAccessor, context)
        {
            _context = context;
            _usuarioService = usuarioService;            
        }

        [HttpPost]
        [Route("CrearUsuario")]
        public async Task<CrearUsuarioOutput> CrearUsuario(CrearUsuarioInput input)
        {
            var result = await _usuarioService.CrearUsuario(input);
            return result;
        }

        [HttpPost]
        [Route("Login")]
        public async Task<LoginOutput> Login(LoginInput input)
        {
            var result = await _usuarioService.Login(input);
            return result;
        }

        [HttpPost]
        [Route("ObtenerUsuarios")]
        public async Task<ObtenerUsuariosOutput> ObtenerUsuarios()
        {
            var result = await _usuarioService.ObtenerUsuarios();
            
            return result;
        }
    }
}
