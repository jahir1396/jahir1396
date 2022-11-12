using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System;
using System.Collections.Generic;

namespace Sistema.Proyecto
{
    [Table("CatUsuario")]
    public class CatUsuario
    {
        public CatUsuario()
        {
            Ventas = new HashSet<OpeVenta>();
            Ingresos = new HashSet<OpeIngreso>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key, Column("IdUsuario")]
        public int IdUsuario { get; set; }

        public int IdRol { get; set; }

        [Required]
        [StringLength(20)]
        [Column(TypeName = "varchar(20)")]
        public string FolioUsuario { get; set; }

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

        [Required]
        [StringLength(50)]
        [Column(TypeName = "varchar(50)")]
        [EmailAddress]
        public string Email { get; set; }

        [Required]
        public byte[] PasswordHash { get; set; }

        [Required]
        public byte[] PasswordSalt { get; set; }

        public bool EstaActivo { get; set; }

        [ForeignKey("IdRol")]
        public virtual CatRol Rol { get; set; }

        public virtual ICollection<OpeVenta> Ventas { get; set; }

        public virtual ICollection<OpeIngreso> Ingresos { get; set; }
    }
}
