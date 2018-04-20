using System;
using System.Collections.Generic;
using FiveColorApi.Model;
using Newtonsoft.Json;

namespace FiveColorApi.Classes
{
    public class Game
    {
        [JsonProperty(PropertyName = "Id")]
        public Guid Id { get; set; }
        [JsonProperty(PropertyName = "Name")]
        public string Name { get; set; }
        [JsonProperty(PropertyName = "Players")]
        public List<Player> Players { get; set; }
        [JsonProperty(PropertyName = "Phase")]
        public Phase Phase { get; set; }
        [JsonProperty(PropertyName = "ActiveStack")]
        public List<StackEntry> ActiveStack { get; set; }
    }
}