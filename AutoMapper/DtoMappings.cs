using AutoMapper;
using Sistema.Proyecto.Web.Controllers.Models;

namespace Sistema.Proyecto
{
    public class DtoMappings : Profile
    {
        public DtoMappings()
        {
            // AutoMapTo
            CreateMap<CrearUsuarioInput, CatUsuario>();


            // AutoMapFrom
            CreateMap<CatUsuario, UsuarioDto>()
                .ForMember(d => d.Rol, options => options.MapFrom(s => s.Rol.Nombre));
            CreateMap<CatCategoria, CategoriaDto>();

        }        
    }
}
