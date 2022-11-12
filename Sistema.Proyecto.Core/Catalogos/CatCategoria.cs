using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System;
using System.Collections.Generic;

namespace Sistema.Proyecto
{
    [Table("CatCategoria")]
    public class CatCategoria
    {
        public CatCategoria()
        {
            Articulos = new HashSet<CatArticulo>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key, Column("IdCategoria")]
        public int IdCategoria { get; set; }

        [Required]
        [StringLength(50)]
        [Column(TypeName = "varchar(50)")]
        public string Nombre { get; set; }

        [StringLength(256)]
        [Column(TypeName = "varchar(256)")]
        public string Descripcion { get; set; }

        public bool EstaActivo { get; set; }

        public virtual ICollection<CatArticulo> Articulos { get; set; }
    }
}
