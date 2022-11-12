using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sistema.Proyecto
{
    [Table("OpeNotificacion")]
    public class OpeNotificacion
    {
        [Key,Column("IdNotificacion")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdNotificacion { get; set; }

        public int IdPlantillaCorreo { get; set; }

        public int IdUsuarioRegistro { get; set; }

        public DateTime FechaRegistro { get; set; }

        public bool EstaEnviada { get; set; }

        [ForeignKey("IdPlantillaCorreo")]
        public virtual CatPlantillaCorreo PlantillaCorreo { get; set; }

        [ForeignKey("IdUsuarioRegistro")]
        public virtual CatUsuario Usuario { get; set; }

    }
}
