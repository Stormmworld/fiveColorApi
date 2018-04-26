using System.Web.Http;
using System.Web.Http.Cors;
using FiveColorApi.Classes.Request;
using FiveColorApi.Classes.Response;
using FiveColorApi.Repository;

namespace FiveColorApi.Controllers
{
    [EnableCors("*", "*", "*")]
    public class DeckController : ApiController
    {
        [HttpGet]
        public FiveColorApi.Model.Deck GetDeck(int id)
        {
            return Repository.Deck.GetDeck(id);

            //return Mock.GetMockDeck();
        }
        [HttpGet]
        public GetDecksResponse GetDecks(GetDecksRequest request)
        {

        }
    }
}

