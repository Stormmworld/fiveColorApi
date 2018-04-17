using System;
using System.Data.SqlClient;
using Newtonsoft.Json;
using System.Collections.Generic;

namespace FiveColor.Model
{
    public class Card
    {
        [JsonProperty(PropertyName = "enabled")]
        public bool enabled { get; set; }
        [JsonProperty(PropertyName = "Id")]
        public int Id { get; set; }
        [JsonProperty(PropertyName = "image")]
        public string image { get; set; }
        [JsonProperty(PropertyName = "Name")]
        public string Name { get; set; }
        [JsonProperty(PropertyName = "tapped")]
        public bool tapped { get; set; }
        [JsonProperty(PropertyName = "Types")]
        public List<string> Types { get; set; }
        [JsonProperty(PropertyName = "ManaCost")]
        public List<string> ManaCost { get; set; }
        [JsonProperty(PropertyName = "ManaProduction")]
        public List<Mana> ManaProduction { get; set; }

        //public static Card FromDataReader(SqlDataReader reader) {
        //    return new Card() {
        //        enabled = true,
        //        tapped= false,
        //        image = reader["ImageUrl"].ToString(),
        //        Name = reader["Name"].ToString(),
        //        Type = reader["Type"].ToString()
        //    };
        //}
    }
}
