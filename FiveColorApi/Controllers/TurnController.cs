using System.Web.Http;
using FiveColorApi.Classes.Response;

namespace FiveColorApi.Controllers
{
    public class TurnController : ApiController
    {
        [HttpGet]
        public GraveyardResponse GetGraveyard(int gameId, int playerId)
        {

            return new GraveyardResponse();
        }
        [HttpGet]
        public HandResponse GetHand(int gameId, int playerId, int drawCount)
        {

            return new HandResponse();
        }
    }
}