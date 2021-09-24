using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiProyecto.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Cors;

namespace WebApiProyecto.Controllers
{
    [EnableCors("bibliotecaPolicy")]
    [Route("api/[controller]")]
    [ApiController]
    public class ClienteController : ControllerBase
    {
        private ProyectoContext db;
        private readonly ILogger<ClienteController> _logger;

        public ClienteController(ILogger<ClienteController> logger, ProyectoContext dbContext)
        {
            this.db = dbContext;
            _logger = logger;
        }

        //GET /api/Cliente
        [HttpGet]
        public async Task<ActionResult<List<ClienteDTO>>> GetClientes()
        {
            _logger.LogInformation("Get Cliente");
            var consulta = from s in db.Cliente
                           select new ClienteDTO
                           {
                               id_cliente = s.id_cliente,
                               nombre = s.nombre,
                               correo = s.correo,
                               numeroCel = s.numeroCel
                           };
            return await consulta.ToListAsync();
        }

        //GET /api/Cliente/430 
        [HttpGet("{id}")]
        public async Task<ActionResult<ClienteDTO>> GetCliente(int id)
        {
            Clientes encontrado = await db.Cliente.FindAsync(id);
            if (encontrado != null)
            {
                ClienteDTO nuevo = new ClienteDTO
                {
                    id_cliente = encontrado.id_cliente,
                    nombre = encontrado.nombre,
                    correo = encontrado.correo,
                    numeroCel = encontrado.numeroCel
                };
                return nuevo;
            }
            else
            {
                return NotFound();
            }
        }

        //POST /api/Cliente
        [HttpPost]
        public async Task<ActionResult<ClienteDTO>> CreateCliente(ClienteDTO clientedto)
        {
            try
            {
                Clientes nuevo = new Clientes
                {
                    id_cliente = clientedto.id_cliente,
                    nombre = clientedto.nombre,
                    correo = clientedto.correo,
                    numeroCel = clientedto.numeroCel
                };
                db.Cliente.Add(nuevo);
                int cambios = await db.SaveChangesAsync();
                if (cambios > 0)
                {
                    return CreatedAtAction("CreateCliente", new { respuesta = "Creado exitosamente" });
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

        //PUT /api/Clientes/304
        [HttpPut("{id}")]
        public async Task<ActionResult<ClienteDTO>> UpdateCliente(int id, ClienteDTO datos)
        {
            Clientes encontrado = await db.Cliente.FindAsync(id);
            if (encontrado != null)
            {
                encontrado.nombre = datos.nombre;
                encontrado.correo = datos.correo;
                encontrado.numeroCel = datos.numeroCel;

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

        //DELETE /api/Cliente
        [HttpDelete("{id}")]
        public async Task<ActionResult<ClienteDTO>> DeleteCliente(int id)
        {
            Clientes encontrado = await db.Cliente.FindAsync(id);
            if (encontrado != null)
            {
                db.Cliente.Remove(encontrado);
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
