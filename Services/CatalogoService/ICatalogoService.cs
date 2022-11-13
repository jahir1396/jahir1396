namespace Sistema.Proyecto
{
    public interface ICatalogoService
    {
        List<Dictionary<string, object>> ObtenerCatalogo(ObtenerCatalogoInput input);
        Task<ListarCatalogosOutput> ListarCatalogos();
    }
}
