using System.Web.Http;
using System.Web.Http.Cors;
using FiveColorApi.Repository;

namespace FiveColorApi.Controllers
{
    [EnableCors("*", "*", "*")]
    public class DeckController : ApiController
    {
        [HttpGet]
        public FiveColorApi.Model.Deck Get(int id)
        {
            return Repository.Deck.GetDeck(id);

            //return Mock.GetMockDeck();
        }
    }
}

