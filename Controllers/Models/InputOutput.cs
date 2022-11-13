using Sistema.Proyecto.Web.Controllers.Models;

namespace Sistema.Proyecto
{
    public class ObtenerCategoriaInput
    {
        public int Id { get; set; }
    }

    public class ObtenerCategoriaOutput
    {
        public CategoriaDto Categoria { get; set; }
    }
}
