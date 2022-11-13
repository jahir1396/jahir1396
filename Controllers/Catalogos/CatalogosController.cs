using AutoMapper;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Sistema.Proyecto.Web.Controllers.Models;
using Sistema.Proyecto.Web.Repositories.Generics;
using Sistema.Proyecto.Web.WS;

namespace Sistema.Proyecto.Web.Controllers.Catalogos
{
    [Route("api/[controller]")]
    [ApiController]
    public class CatalogosController : ControllerServiceBase
    {
        private SistemaDbContext _context;
        private ICatalogoService _catalogoService;
        private readonly IRepository<CatCategoria> _catCategoriaRepository;
        private readonly IMapper _objectMapper;
        private readonly ISample _sample;

        public CatalogosController(IHttpContextAccessor httpContextAccessor,
            SistemaDbContext context,
            ICatalogoService catalogoService,
            IRepository<CatCategoria> catCategoriaRepository,
            IMapper objectMapper,
            ISample sample) : base(httpContextAccessor, context)
        {
            _context = context;
            _catalogoService = catalogoService;
            _catCategoriaRepository = catCategoriaRepository;
            _objectMapper = objectMapper;
            _sample = sample;
        }

        [HttpPost]
        [Route("ObtenerCatalogo")]
        public List<Dictionary<string, object>> ObtenerCatalogo(ObtenerCatalogoInput input)
        {
            var result = _catalogoService.ObtenerCatalogo(input);
            return result;
        }

        [HttpPost]
        [Route("ObtenerCategoria")]
        public async Task<ObtenerCategoriaOutput> ObtenerCategoria(ObtenerCategoriaInput input)
        {
            var mCategoria = await _catCategoriaRepository.GetAsync(input.Id);

            return new ObtenerCategoriaOutput
            {
                Categoria = _objectMapper.Map<CategoriaDto>(mCategoria)
            };
        }


        [HttpPost]
        [Route("ListarCatalogos")]
        public async Task<ListarCatalogosOutput> ListarCatalogos()
        {
            var result = await _catalogoService.ListarCatalogos();
            return result;
        }


        [HttpPost]
        [Route("ObtenerUsuarioWS")]
        public async Task<List<Post>> ObtenerUsuarioWS()
        {
            var usuarios = await _sample.ValidaWS();

            var qryUser = from user in usuarios
                          where user.userId == 1
                          select new Post
                          {
                              userId = user.userId,
                              id = user.id,
                              title = user.title,
                          };

            return qryUser.ToList();
        }

    }
}
