using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiProyecto.Models;
using Microsoft.EntityFrameworkCore;


namespace WebApiProyecto.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EventoController : ControllerBase
    {
        private ProyectoContext db;
        private readonly ILogger<EventoController> _logger;

        public EventoController(ILogger<EventoController> logger, ProyectoContext dbContext)
        {
            this.db = dbContext;
            _logger = logger;
        }

        //GET /api/Evento
        [HttpGet]
        public async Task<ActionResult<List<EventoDTO>>> GetEventos()
        {
            _logger.LogInformation("Get Evento");
            var consulta = from s in db.Evento
                           select new EventoDTO
                           {
                               id_evento = s.id_evento,
                               id_cliente = s.id_cliente,
                               nombre = s.nombre,
                               correo = s.correo,
                               numeroCel = s.numeroCel,
                               tipoEvento = s.tipoEvento,
                               cantidad = s.cantidad

                           };
            return await consulta.ToListAsync();
        }

        //GET /api/Evento/430 
        [HttpGet("{id}")]
        public async Task<ActionResult<EventoDTO>> GetEventos(int id)
        {
            Evento encontrado = await db.Evento.FindAsync(id);
            if (encontrado != null)
            {
                EventoDTO nuevo = new EventoDTO
                {
                    id_evento = encontrado.id_evento,
                    id_cliente = encontrado.id_cliente,
                    nombre = encontrado.nombre,
                    correo = encontrado.correo,
                    numeroCel = encontrado.numeroCel,
                    tipoEvento = encontrado.tipoEvento,
                    cantidad = encontrado.cantidad
                };
                return nuevo;
            }
            else
            {
                return NotFound();
            }
        }

        //POST /api/Evento
        [HttpPost]
        public async Task<ActionResult<EventoDTO>> CreateEvento(EventoDTO eventodto)
        {
            try
            {
                Evento nuevo = new Evento
                {
                    id_evento = eventodto.id_evento,
                    id_cliente = eventodto.id_cliente,
                    nombre = eventodto.nombre,
                    correo = eventodto.correo,
                    numeroCel = eventodto.numeroCel,
                    tipoEvento = eventodto.tipoEvento,
                    cantidad = eventodto.cantidad,

                };
                db.Evento.Add(nuevo);
                int cambios = await db.SaveChangesAsync();
                if (cambios > 0)
                {
                    return CreatedAtAction("Crear Evento", new { respuesta = "Creado exitosamente" });
                }
                else
                {
                    return StatusCode(500);
                }
            }
            catch (Exception ex)
            {
                return Conflict();
            }
        }

        //PUT /api/Evento/304
        [HttpPut("{id}")]
        public async Task<ActionResult<EventoDTO>> UpdateEvento(int id, EventoDTO datos)
        {
            Evento encontrado = await db.Evento.FindAsync(id);
            if (encontrado != null)
            {
                encontrado.nombre = datos.nombre;
                encontrado.correo = datos.correo;
                encontrado.numeroCel = datos.numeroCel;
                encontrado.tipoEvento = datos.tipoEvento;
                encontrado.cantidad = datos.cantidad;


                int cambios = await db.SaveChangesAsync();
                if (cambios > 0)
                {
                    return Ok(new { respuesta = "Modificado exitosamente" });
                }
                else
                {
                    return StatusCode(500);
                }
            }
            else
            {
                return NotFound();
            }
        }

        //DELETE /api/Evento
        [HttpDelete("{id}")]
        public async Task<ActionResult<EventoDTO>> DeleteEvento(int id)
        {
            Evento encontrado = await db.Evento.FindAsync(id);
            if (encontrado != null)
            {
                db.Evento.Remove(encontrado);
                int cambios = await db.SaveChangesAsync();
                if (cambios > 0)
                {
                    return Ok(new { respuesta = "Eliminado exitosamente" });
                }
                else
                {
                    return StatusCode(500);
                }
            }
            else
            {
                return NotFound();
            }
        }
    }
}
