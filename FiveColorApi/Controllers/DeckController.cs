using System;
using System.Web.Http;
using System.Web.Http.Cors;
using FiveColor.Model;
using FiveColor.Mocker;
using FiveColor.Reposoitory;

namespace FiveColorApi.Controllers
{
    [EnableCors("*", "*", "*")]
    public class DeckController : ApiController
    {
        [HttpGet]
        public Deck Get(int id)
        {
            //return MTG.GetDeck(id);

            return Mock.GetMockDeck();
        }
    }
}

