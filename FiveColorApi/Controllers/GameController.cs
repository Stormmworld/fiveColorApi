using System.Web.Http;
using FiveColorApi.Classes;
using FiveColorApi.Classes.Request;
using FiveColorApi.Classes.Response;

namespace FiveColorApi.Controllers
{
    public class GameController : ApiController
    {
        [HttpGet]
        public CreateGameResponse CreateGame([FromUri] CreateGameRequest request)
        {
            Game newGame = new Game(request.GameName);
            newGame.SaveGame();


            return new CreateGameResponse()
            {
                Id = newGame.Id,
                Name = newGame.Name
            };
        }
        [HttpGet]
        public CreateGameResponse RetrieveGame([FromUri] RetrieveGameRequest request)
        {
            Game game = Game.RetrieveGame(request.Id);

            return new CreateGameResponse()
            {
                Id = game.Id,
                Name = game.Name
            };
        }

    }
}