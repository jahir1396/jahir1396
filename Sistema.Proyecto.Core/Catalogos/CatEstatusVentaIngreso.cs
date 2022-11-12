using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System;
using System.Collections.Generic;

namespace Sistema.Proyecto
{
    [Table("CatEstatusVentaIngreso")]
    public class CatEstatusVentaIngreso
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key, Column("IdEstatusVentaIngreso")]
        public int IdEstatusVentaIngreso { get; set; }

        [Required]
        [StringLength(20)]
        [Column(TypeName = "varchar(50)")]
        public string Nombre { get; set; }
    }
}
