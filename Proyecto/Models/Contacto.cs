using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace WebApiProyecto.Models
{
    public class Contacto
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [Key]
        public int id_contacto { get; set; }
        public string nombre { get; set; }        
        public string correo { get; set; }
        public string numeroCel { get; set; }

        public virtual Clientes Cliente { get; set; }
        [ForeignKey("Cliente")] 
        public int id_cliente { get; set; }

    }
}
