using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace FiveColor.Model
{
    public class Deck
    {
        public string Name { get; set; }
        [JsonProperty(PropertyName = "Cards")]
        public List<Card> Cards { get; set; }
    }
}
