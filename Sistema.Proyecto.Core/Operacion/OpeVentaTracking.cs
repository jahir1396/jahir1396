using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Sistema.Proyecto;

namespace Sistema.Proyecto
{
    [Table("OpeVentaTracking")]
    public class OpeVentaTracking
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key, Column("IdVentaTracking")]
        public int IdVentaTracking { get; set; }

        public int IdUsuarioRegistro { get; set; }

        //public int IdVenta { get; set; }

        public DateTime FechaRegistro { get; set; }

        [Required]
        [StringLength(200)]
        [Column(TypeName = "varchar(200)")]
        public string Movimiento { get; set; }

        [ForeignKey("IdUsuarioRegistro")]
        public virtual CatUsuario UsuarioRegistro { get; set; }

        //[ForeignKey("IdVenta")]
        //public virtual OpeVenta Venta { get; set; }
    }
}
