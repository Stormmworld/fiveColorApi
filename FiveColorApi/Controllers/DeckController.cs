using System;
using System.Web.Http;
using System.Web.Http.Cors;

namespace FiveColorApi.Controllers
{
    [EnableCors("*", "*", "*")]
    public class DeckController : ApiController
    {
        [HttpGet]
        public string Get()
        {
            return "this is the deck controller";
        }
    }
}