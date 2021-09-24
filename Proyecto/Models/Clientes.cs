using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace WebApiProyecto.Models
{
    public class Clientes
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key]
        public int id_cliente { get; set; }
        public string nombre { get; set; }
        public string correo { get; set; }
        public string numeroCel { get; set; }


        public void mostrarDatos()
        {
            Console.WriteLine("id_cliente: " + id_cliente);
            Console.WriteLine("nombre: " + nombre);
            Console.WriteLine("correo: " + correo);
            Console.WriteLine("numeroCel: " + numeroCel);
            
        }
    }
}
