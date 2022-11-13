using AutoMapper;
using System.Reflection.Metadata.Ecma335;

namespace Sistema.Proyecto
{
    public class CatalogoService : ICatalogoService
    {
        private ISistemaRepository _sistemaRepository;
        private readonly IMapper _objectMapper;
        private readonly SistemaDbContext _context;
        private readonly IConfiguration _config;

        public CatalogoService(ISistemaRepository sistemaRepository,
            IMapper objectMapper,
            SistemaDbContext context,
            IConfiguration config)
        {
            _sistemaRepository = sistemaRepository;
            _objectMapper = objectMapper;
            _context = context;
            _config = config;
        }

        public List<Dictionary<string, object>> ObtenerCatalogo(ObtenerCatalogoInput input)
        {
            var result = _sistemaRepository.ObtenerCatalogo(input);
            return result;
        }

        public async Task<ListarCatalogosOutput> ListarCatalogos()
        {
            var result = await _sistemaRepository.ListarCatalogos();
            return result;
        }
    }
}
