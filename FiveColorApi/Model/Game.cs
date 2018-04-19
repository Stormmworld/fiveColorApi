using System;
using System.Collections.Generic;
using FiveColorApi.Model;

namespace FiveColorApi.Classes
{
    public class Game
    {
        #region Variables
        #endregion

        #region Properties
        public Guid Id { get; set; }
        public string Name { get; set; }
        public List<Player> Players { get; set; }
        public Phase Phase { get; set; }
        public List<StackEntry> ActiveStack { get; set; }
        #endregion

        #region Constructors 
        public Game()
        {
            Id = Guid.NewGuid();
        }
        public Game(string name):this()
        {
            Name = name;
        }
        #endregion

        #region Methods
        public static Game RetrieveGame(string id)
        {
            return (Game)MemoryCacher.GetValue(id);
        }
        public void SaveGame()
        {
            MemoryCacher.Delete(this.Id.ToString());
            MemoryCacher.Add(this.Id.ToString(), this, DateTimeOffset.UtcNow.AddHours(1));
        }
        #endregion
    }
}