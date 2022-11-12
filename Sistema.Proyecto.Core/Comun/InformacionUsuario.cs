using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sistema.Proyecto.Comun
{
    [Serializable]
    public class InformacionUsuario
    {
        public int IdUsuario { get; set; }
        public string Nombre { get; set; }
        public string FolioUsuario { get; set; }
        public string Email { get; set; }
        public int IdRol { get; set; }
    }
}
