using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiProyecto.Models
{
    public class EventoDTO
    {
        public int id_evento { get; set; }
        public int id_cliente { get; set; }
        public string nombre { get; set; }
        public string correo { get; set; }
        public string numeroCel { get; set; }
        public string tipoEvento { get; set; }
        public string cantidad { get; set; }
    }
}

