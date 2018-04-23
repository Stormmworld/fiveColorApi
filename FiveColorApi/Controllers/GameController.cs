﻿using System;
using System.Collections.Generic;
using System.Web.Http;
using FiveColorApi.Classes;
using FiveColorApi.Classes.Enumerations;
using FiveColorApi.Classes.Request;
using FiveColorApi.Classes.Response;
using FiveColorApi.Model;
using Phase = FiveColorApi.Model.Phase;

namespace FiveColorApi.Controllers
{
    public class GameController : ApiController
    {
        [HttpGet]
        public GameResponse CreateGame([FromUri] CreateGameRequest request)
        {
            Game newGame = new Game()
            {
                Phase = new Phase(),
                Id = Guid.NewGuid(),
                Name = request.GameName,
                Players = new List<Player>()
                {
                    Database.GetPlayer(request.PlayerId)
                }
            };
            MemoryCacher.Replace(newGame.Id.ToString(), newGame, DateTimeOffset.UtcNow.AddHours(1));
            return new GameResponse()
            {
                CurrentPhase = newGame.Phase,
                Id = newGame.Id,
                Name = newGame.Name,
                Players = newGame.Players
            };
        }
        [HttpGet]
        public GameResponse RetrieveGame([FromUri] RetrieveGameRequest request)
        {
            Game game = (Game) MemoryCacher.GetValue(request.Id);

            return new GameResponse()
            {
                CurrentPhase = game.Phase,
                Id = game.Id,
                Name = game.Name,
                Players = game.Players
            };
        }
        [HttpGet]
        public GameResponse JoinGame([FromUri] JoinGameRequest request)
        {
            Game game = (Game) MemoryCacher.GetValue(request.GameId);
            game.Players.Add(Database.GetPlayer(request.PlayerId));
            MemoryCacher.Replace(game.Id.ToString(), game, DateTimeOffset.UtcNow.AddHours(1));
            return new GameResponse()
            {
                CurrentPhase = game.Phase,
                Id = game.Id,
                Name = game.Name,
                Players = game.Players
            };
        }
        [HttpGet]
        public GameResponse EndCurrentPhase([FromUri] EndPhaseRequest request)
        {
            Game game = (Game) MemoryCacher.GetValue(request.GameId);
            try
            {
                #region Check for events that happen at end of current phase
                #endregion
                game.EndPhase(); //add next plaer to this call
                #region Check for events that happen at beginning of new phase
                if (game.Phase.SubPhaseName == SubPhase.Draw)
                    game.DrawPhase();
                #endregion
            }
            catch (Exception e)
            {
                if (e.Message == "Death")
                {

                }
                else
                    throw;
            }
            MemoryCacher.Replace(game.Id.ToString(), game, DateTimeOffset.UtcNow.AddHours(1));
            return new GameResponse()
            {
                CurrentPhase = game.Phase,
                Id = game.Id,
                Name = game.Name,
                Players = game.Players
            };
        }
    }
}