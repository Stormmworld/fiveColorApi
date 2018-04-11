using System;
using System.Data.SqlClient;

namespace FiveColor.Model
{
    [Serializable]
    public class Card
    {
        public bool enabled { get; set; }
        public string image { get; set; }
        public string Name { get; set; }
        public bool tapped { get; set; }
        public string Type { get; set; }

        public static Card FromDataReader(SqlDataReader reader) {
            return new Card() {
                enabled = true,
                tapped= false,
                image = reader["ImageUrl"].ToString(),
                Name = reader["Name"].ToString(),
                Type = reader["Type"].ToString()
            };
        }
    }
}
