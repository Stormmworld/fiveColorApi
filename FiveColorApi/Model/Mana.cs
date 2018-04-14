using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

namespace FiveColor.Model
{
    public class Mana
    {
        [JsonProperty(PropertyName = "ManaType")]
        public string ManaType { get; set; }
        [JsonProperty(PropertyName = "Quantity")]
        public int Quantity { get; set; }
    }
}