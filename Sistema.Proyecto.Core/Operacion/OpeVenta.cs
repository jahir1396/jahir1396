﻿using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System;
using System.Collections.Generic;
using Sistema.Proyecto;

namespace Sistema.Proyecto
{
    [Table("OpeVenta")]
    public class OpeVenta
    {
        public OpeVenta()
        {
            DetalleVentas = new HashSet<OpeDetalleVenta>();
            //Trackings = new HashSet<OpeVentaTracking>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key, Column("IdVenta")]
        public int IdVenta { get; set; }

        public int IdPersona { get; set; }

        public int IdUsuario { get; set; }

        public int IdEstatusVentaIngreso { get; set; }

        [Required]
        [StringLength(20)]
        [Column(TypeName = "varchar(20)")]
        public string TipoComprobante { get; set; }

        [StringLength(7)]
        [Column(TypeName = "varchar(7)")]
        public string SerieComprobante { get; set; }

        [Required]
        [StringLength(10)]
        [Column(TypeName = "varchar(10)")]
        public string NumComprobante { get; set; }

        public DateTime FechaRegistro { get; set; }

        public decimal Impuesto { get; set; }

        public decimal Total { get; set; }

        [ForeignKey("IdPersona")]
        public virtual CatPersona Persona { get; set; }

        [ForeignKey("IdUsuario")]
        public virtual CatUsuario Usuario { get; set; }

        [ForeignKey("IdEstatusVentaIngreso")]
        public virtual CatEstatusVentaIngreso EstatusVentaIngreso { get; set; }

        public virtual ICollection<OpeDetalleVenta> DetalleVentas { get; set; }

        //public virtual ICollection<OpeVentaTracking> Trackings { get; set; }
    }
}
