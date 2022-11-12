using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System;
using System.Collections.Generic;
using Sistema.Proyecto;

namespace Sistema.Proyecto
{
    [Table("OpeDetalleIngreso")]
    public class OpeDetalleIngreso
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key, Column("IdDetalleIngreso")]
        public int IdDetalleIngreso { get; set; }

        public int IdIngreso { get; set; }

        public int IdArticulo { get; set; }

        public int Cantidad { get; set; }

        public decimal Precio { get; set; }

        [ForeignKey("IdIngreso")]
        public virtual OpeIngreso Ingreso { get; set; }

        [ForeignKey("IdArticulo")]
        public virtual CatArticulo Articulo { get; set; }

    }
}
