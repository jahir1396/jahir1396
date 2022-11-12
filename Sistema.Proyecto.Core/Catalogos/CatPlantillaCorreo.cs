using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sistema.Proyecto
{
    [Table("CatPlantillaCorreo")]
    public class CatPlantillaCorreo
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [Key, Column("IdPlantillaCorreo")]
        public int IdPlantillaCorreo { get; set; }

        [Required]
        [StringLength(50)]
        [Column(TypeName = "varchar(50)")]
        public string Nombre { get; set; }

        [Required]
        [StringLength(50)]
        [Column(TypeName = "varchar(50)")]
        public string Asunto { get; set; }

        [Required]        
        [Column(TypeName = "varchar(MAX)")]
        public string Plantilla { get; set; }

        [Required]
        [StringLength(3000)]
        [Column(TypeName = "varchar(3000)")]
        public string DestinatarioCC { get; set; }

        [Required]
        [StringLength(3000)]
        [Column(TypeName = "varchar(3000)")]
        public string DestinatarioCCO { get; set; }

    }
}
