using AutoMapper;
using Microsoft.Azure.ActiveDirectory.GraphClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace Sistema.Proyecto
{
    public class UsuarioService : ControllerServiceBase, IUsuarioService
    {
        private readonly IMapper _objectMapper;
        private readonly SistemaDbContext _context;
        private readonly IConfiguration _config;

        public UsuarioService(IHttpContextAccessor httpContextAccessor,
            IMapper objectMapper,
            SistemaDbContext context,
            IConfiguration config) : base(httpContextAccessor, context)
        {
            _objectMapper = objectMapper;
            _context = context;
            _config = config;
        }

        
        public async Task<CrearUsuarioOutput> CrearUsuario(CrearUsuarioInput input)
        {
            input.Email = input.Email.ToLower();

            if (_context.CatUsuario.Count(u => u.Email.Equals(input.Email)) > 0)
                throw new AuthorizationException(System.Net.HttpStatusCode.BadRequest, "El email ya existe");

            if (await _context.CatUsuario.AnyAsync(u => u.Email == input.Email))
                throw new AuthorizationException(System.Net.HttpStatusCode.BadRequest,"El email ya existe");

            string anioActual = DateTime.Now.ToString("yyyy");
            var random = new Random();
            string nombre = input.Nombre.ToUpper().Substring(0, 5).Trim(' ');

            string folio = string.Format("{0}-{1}-{2}", nombre, random.Next(0, 1000), anioActual);

            var mUsuario = _objectMapper.Map<CatUsuario>(input);

            CrearPasswordHash(input.Password, out byte[] passwordHash, out byte[] passwordSalt);

            mUsuario.FolioUsuario = folio;
            mUsuario.EstaActivo = true;
            mUsuario.PasswordHash = passwordHash;
            mUsuario.PasswordSalt = passwordSalt;

            await _context.CatUsuario.AddAsync(mUsuario);
            _context.SaveChanges();

            return new CrearUsuarioOutput
            {
                Mensaje = "Operación exitosa"
            };

        }

        public async Task<LoginOutput> Login(LoginInput input)
        {
            input.Email = input.Email.ToLower().Trim();

            var mUsuario = await _context.CatUsuario.Include(r => r.Rol).FirstOrDefaultAsync(u => u.Email.Equals(input.Email));

            if ((_context.CatUsuario.Count(u => u.Email.Equals(input.Email)) <= 0) || mUsuario == null)
                throw new Exception("El usuario no existe");

            if (!VerificarPasswordHash(input.Password, mUsuario.PasswordHash, mUsuario.PasswordSalt))
                throw new Exception("La contraseña es incorrecta");

            var mClaims = new List<Claim>
            {
                new Claim(ClaimTypes.NameIdentifier, mUsuario.IdUsuario.ToString()),
                new Claim(ClaimTypes.Name, mUsuario.Nombre),
                new Claim(ClaimTypes.UserData, mUsuario.FolioUsuario),
                new Claim(ClaimTypes.Role, mUsuario.Rol.Nombre),
                new Claim(ClaimTypes.Email, mUsuario.Email),
                new Claim("Id", mUsuario.IdUsuario.ToString()),
                new Claim("FolioUsuario", mUsuario.FolioUsuario),
                new Claim("NombreUsuario", mUsuario.Nombre),
                new Claim("Rol", mUsuario.Rol.Nombre),
                new Claim("Email", mUsuario.Email)
            };

            return new LoginOutput
            {
                Mensaje = "Operación Exitosa",
                Usuario = mUsuario.Nombre,
                Token = GenerateToken(mClaims),
                Expires = DateTime.Now.AddDays(7)
            };
        }

        public async Task<ObtenerUsuariosOutput> ObtenerUsuarios()
        {
            var mUsuarios = await _context.CatUsuario.Include(r => r.Rol).ToListAsync();

            if (mUsuarios == null)
                throw new Exception("No hay Usuarios para mostrar");

            return new ObtenerUsuariosOutput
            {
                Usuarios = _objectMapper.Map<List<UsuarioDto>>(mUsuarios)
            };
        }


        private string GenerateToken(List<Claim> claims)
        {
            var mKey = _config["Jwt:Key"];
            var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(mKey));
            var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);

            var token = new JwtSecurityToken(
                _config["Jwt:Issuer"],
                _config["Jwt:Issuer"],
                expires: DateTime.Now.AddDays(7),
                signingCredentials: creds,
                claims: claims);

            return new JwtSecurityTokenHandler().WriteToken(token);
        }

        private void CrearPasswordHash(string password, out byte[] passwordHash, out byte[] passwordSalt)
        {
            using (var hmac = new System.Security.Cryptography.HMACSHA512())
            {
                passwordSalt = hmac.Key;
                passwordHash = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
            }
        }

        private bool VerificarPasswordHash(string password, byte[] passwordHashAlmacenado, byte[] passwordSalt)
        {
            using (var hmac = new System.Security.Cryptography.HMACSHA512(passwordSalt))
            {
                var passwordHashNuevo = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
                return new ReadOnlySpan<byte>(passwordHashAlmacenado).SequenceEqual(new ReadOnlySpan<byte>(passwordHashNuevo));
            }
        }
    }
}
