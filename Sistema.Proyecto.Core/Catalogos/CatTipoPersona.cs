using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System;
using System.Collections.Generic;

namespace Sistema.Proyecto
{
    [Table("CatTipoPersona")]
    public class CatTipoPersona
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key, Column("IdTipoPersona")]
        public int IdTipoPersona { get; set; }

        [Required]
        [StringLength(20)]
        [Column(TypeName = "varchar(20)")]
        public string Nombre { get; set; }
    }
}
