using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System;
using System.Collections.Generic;
using Sistema.Proyecto;

namespace Sistema.Proyecto
{
    [Table("OpeDetalleVenta")]
    public class OpeDetalleVenta
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key, Column("IdDetalleVenta")]
        public int IdDetalleVenta { get; set; }

        public int IdVenta { get; set; }

        public int IdArticulo { get; set; }

        public int Cantidad { get; set; }

        public decimal Precio { get; set; }

        public decimal Descuento { get; set; }

        [ForeignKey("IdVenta")]
        public virtual OpeVenta Venta { get; set; }

        [ForeignKey("IdArticulo")]
        public virtual CatArticulo Articulo { get; set; }

    }
}
