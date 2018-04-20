using System;
using System.Collections.Generic;
using FiveColorApi.Model;
using Newtonsoft.Json;

namespace FiveColorApi.Classes.Response
{
    public class GameResponse
    {
        [JsonProperty(PropertyName = "Id")]
        public Guid Id { get; set; }
        [JsonProperty(PropertyName = "Name")]
        public string Name { get; set; }
        [JsonProperty(PropertyName = "Players")]
        public List<Player> Players { get; set; }
    }
}