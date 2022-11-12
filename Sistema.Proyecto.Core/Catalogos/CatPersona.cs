using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System;
using System.Collections.Generic;

namespace Sistema.Proyecto
{
    [Table("CatPersona")]
    public class CatPersona
    {
        public CatPersona()
        {
            Ventas = new HashSet<OpeVenta>();
            Ingresos = new HashSet<OpeIngreso>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key, Column("IdPersona")]
        public int IdPersona { get; set; }

        public int IdTipoPersona { get; set; }

        [Required]
        [StringLength(100)]
        [Column(TypeName = "varchar(100)")]
        public string Nombre { get; set; }

        [StringLength(20)]
        [Column(TypeName = "varchar(20)")]
        public string TipoDocumento { get; set; }

        [StringLength(20)]
        [Column(TypeName = "varchar(20)")]
        public string NumDocumento { get; set; }

        [StringLength(70)]
        [Column(TypeName = "varchar(70)")]
        public string Direccion { get; set; }

        [StringLength(20)]
        [Column(TypeName = "varchar(20)")]
        public string Telefono { get; set; }

        [StringLength(50)]
        [EmailAddress]
        [Column(TypeName = "varchar(50)")]
        public string Email { get; set; }

        [ForeignKey("IdTipoPersona")]
        public virtual CatTipoPersona TipoPersona { get; set; }

        public virtual ICollection<OpeIngreso> Ingresos { get; set; }

        public virtual ICollection<OpeVenta> Ventas { get; set; }
    }
}
