using System.Web.Mvc;
using FiveColorApi.Classes.Response;

namespace FiveColorApi.Controllers
{
    public class TurnController : Controller
    {
        [HttpGet]
        public HandResponse GetHand(int gameId, int playerId, int drawCount)
        {

            return new HandResponse();
        }
    }
}