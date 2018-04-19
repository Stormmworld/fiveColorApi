using System;
using Newtonsoft.Json;

namespace FiveColorApi.Classes.Response
{
    public class CreateGameResponse
    {
        [JsonProperty(PropertyName = "Id")]
        public Guid Id { get; set; }
        [JsonProperty(PropertyName = "Name")]
        public string Name { get; set; }
    }
}