using FiveColorApi.Model;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Xml.Serialization;
using System.Collections.Generic;
using FiveColorApi.Repository.Classes;

namespace FiveColorApi.Repository
{
    public class Deck
    {
       const string CONNECTIONSTRING = "Data Source=HPPROLIANT;Initial Catalog=MTG;User Id=Sql_Mtg;Password = Mag!c;";
         //const string CONNECTIONSTRING = @"Server=localhost\SQLEXPRESS;Database=MTG;Trusted_Connection=True;";

        public static Model.Deck GetDeck(int id) {
            FiveColorApi.Model.Deck retVal = new FiveColorApi.Model.Deck();

            //get cards from database
            SqlConnection sqlConnection1 = new SqlConnection(CONNECTIONSTRING);
            SqlCommand cmd = new SqlCommand();
            SqlDataReader reader;

            cmd.CommandText = "p_Get_Deck";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = sqlConnection1;

            sqlConnection1.Open();

            reader = cmd.ExecuteReader();

            //while (reader.Read())
            //    retVal.Cards.Add(Card.FromDataReader(reader));

            if (reader.Read())
            {
                DbDeck result;
                var serializer = new XmlSerializer(typeof(Deck));

                using (TextReader treader = new StringReader(reader[0].ToString()))
                {
                    result = (DbDeck)serializer.Deserialize(treader);
                }

                retVal = new Model.Deck() {
                    Name = result.Name,
                    Cards = new List<Card>()
                };

                foreach (DeckCard card in result.Cards)
                {
                    Card newCard = new Card() {
                        enabled = true,
                        Id = card.DeckCardId,
                        image = card.ImageUrl,
                        Name = card.Name,
                        tapped = false,
                        ManaCost = new List<string>(),
                        ManaProduction = new List<Mana>(),
                        Types = new List<string>()
                    };
                    if (card.Types != null)
                        foreach (var type in card.Types)
                            newCard.Types.Add(type.Type);
                    if (card.ManaProduction != null)
                        foreach (var mana in card.ManaProduction)
                            newCard.ManaProduction.Add(new Mana() { ManaType = mana.Abbreviation, Quantity = mana.Quantity });
                    if (card.ManaCost != null)
                    {
                        string cost = card.ManaCost.Mana.cost;
                        cost = cost.Replace("{", "").Replace("}", ",").Replace(" ", "");
                            newCard.ManaCost.Add(cost.Substring(0, cost.Length-1));
                    }                   

                    retVal.Cards.Add(newCard);
                }
            }

            sqlConnection1.Close();

            return retVal;
        }

    }
}

