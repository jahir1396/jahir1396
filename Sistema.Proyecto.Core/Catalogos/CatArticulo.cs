using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System;
using System.Collections.Generic;

namespace Sistema.Proyecto
{
    [Table("CatArticulo")]
    public class CatArticulo
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key, Column("IdArticulo")]
        public int IdArticulo { get; set; }

        public int IdCategoria { get; set; }

        [StringLength(50)]
        [Column(TypeName = "varchar(50)")]
        public string Codigo { get; set; }

        [Required]
        [StringLength(100)]
        [Column(TypeName = "varchar(100)")]
        public string Nombre { get; set; }

        public decimal PrecioVenta { get; set; }

        public int Stock { get; set; }

        [StringLength(256)]
        [Column(TypeName = "varchar(256)")]
        public string Descripcion { get; set; }

        public bool EstaActivo { get; set; }

        [ForeignKey("IdCategoria")]
        public virtual CatCategoria Categoria { get; set; }
    }
}
