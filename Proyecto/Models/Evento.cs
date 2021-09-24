using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace WebApiProyecto.Models
{
    public class Evento
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [Key]
        public int id_evento { get; set; }
        public string nombre { get; set; }
        public string correo { get; set; }
        public string numeroCel { get; set; }
        public string tipoEvento { get; set; }
        public string cantidad { get; set; }

        public virtual Clientes Cliente { get; set; }
        [ForeignKey("Cliente")]
        public int id_cliente { get; set; }

        public void mostrarDatos()
        {
            Console.WriteLine("id_evento: " + id_evento);
            Console.WriteLine("id_cliente: " + id_cliente);
            Console.WriteLine("nombre: " + nombre);
            Console.WriteLine("correo: " + correo);
            Console.WriteLine("numeroCel: " + numeroCel);
            Console.WriteLine("Tipo de evento: " + tipoEvento);
            Console.WriteLine("Cantidad: " + cantidad);

        }
    }
}
