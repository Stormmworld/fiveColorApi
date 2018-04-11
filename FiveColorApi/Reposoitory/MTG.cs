using FiveColor.Model;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace FiveColor.Reposoitory
{
    public class MTG
    {
        const string CONNECTIONSTRING = "Data Source=HPPROLIANT;Initial Catalog=MTG;User Id=Sql_Mtg;Password = Mag!c;";

        public static Deck GetDeck(int id) {
            Deck retVal = new Deck()
            {
                Name = "",
                Cards = new List<Card>()
            };

            //get cards from database
            SqlConnection sqlConnection1 = new SqlConnection(CONNECTIONSTRING);
            SqlCommand cmd = new SqlCommand();
            SqlDataReader reader;

            cmd.CommandText = "p_Get_Deck";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = sqlConnection1;

            sqlConnection1.Open();

            reader = cmd.ExecuteReader();

            while (reader.Read())
                retVal.Cards.Add(Card.FromDataReader(reader));

            sqlConnection1.Close();

            return retVal;
        }
    }
}
