using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using autoverseny.Models;
using Microsoft.EntityFrameworkCore;

namespace autoverseny.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class KoridoController : ControllerBase
    {
        [HttpGet]

        public IActionResult Get()
        {
            var contex = new VersenyContext();
            try
            {
                return StatusCode(StatusCodes.Status200OK, contex.Koridos.Include(f => f.Palya).Include(f=>f.Versenyzo.Csapat).ToList());
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status400BadRequest, ex.Message);
            }
        }
    }
}
