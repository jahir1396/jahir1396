using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System;
using System.Collections.Generic;

namespace Sistema.Proyecto
{
    [Table("CatRol")]
    public class CatRol
    {
        public CatRol()
        {
            Usuarios = new HashSet<CatUsuario>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key, Column("IdRol")]
        public int IdRol { get; set; }

        [Required]
        [StringLength(30)]
        [Column(TypeName = "varchar(30)")]
        public string Nombre { get; set; }

        [StringLength(100)]
        [Column(TypeName = "varchar(100)")]
        public string Descripcion { get; set; }

        public bool EstaActivo { get; set; }

        public virtual ICollection<CatUsuario> Usuarios { get; set; }
    }
}
