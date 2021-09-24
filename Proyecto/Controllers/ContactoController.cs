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
    public class ContactoController : ControllerBase
    {
        private ProyectoContext db;
        private readonly ILogger<ContactoController> _logger;

        public ContactoController(ILogger<ContactoController> logger, ProyectoContext dbContext)
        {
            this.db = dbContext;
            _logger = logger;
        }

        //GET /api/Cliente
        [HttpGet]
        public async Task<ActionResult<List<ContactoDTO>>> GetContacto()
        {
            _logger.LogInformation("Get Contacto");
            var consulta = from s in db.Contacto
                           select new ContactoDTO
                           {
                               id_contacto = s.id_contacto,
                               id_cliente = s.id_cliente,
                               nombre = s.nombre,
                               correo = s.correo,
                               numeroCel = s.numeroCel
                           };
            return await consulta.ToListAsync();
        }

        //GET /api/Contacto/430 
        [HttpGet("{id}")]
        public async Task<ActionResult<ContactoDTO>> GetContacto(int id)
        {
            Contacto encontrado = await db.Contacto.FindAsync(id);
            if (encontrado != null)
            {
                ContactoDTO nuevo = new ContactoDTO
                {
                    id_contacto = encontrado.id_contacto,
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

        //POST /api/Contacto
        [HttpPost]
        public async Task<ActionResult<ContactoDTO>> CreateContacto(ContactoDTO contactodto)
        {
            try
            {
                Contacto nuevo = new Contacto
                {
                    nombre = contactodto.nombre,
                    correo = contactodto.correo,
                    numeroCel = contactodto.numeroCel
                };
                db.Contacto.Add(nuevo);
                int cambios = await db.SaveChangesAsync();
                if (cambios > 0)
                {
                    return CreatedAtAction("CreateContacto", new { respuesta = "Creado exitosamente" });
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

        //PUT /api/Contacto/304
        [HttpPut("{id}")]
        public async Task<ActionResult<ContactoDTO>> UpdateContacto(int id, ContactoDTO datos)
        {
            Contacto encontrado = await db.Contacto.FindAsync(id);
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

        //DELETE /api/Contacto
        [HttpDelete("{id}")]
        public async Task<ActionResult<ContactoDTO>> DeleteContacto(int id)
        {
            Contacto encontrado = await db.Contacto.FindAsync(id);
            if (encontrado != null)
            {
                db.Contacto.Remove(encontrado);
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

