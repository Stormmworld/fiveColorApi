using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FiveColorApi.Classes.Enumerations;

namespace FiveColorApi.Classes.Response
{
    public class GetDecksResponse
    {
        private List<Deck> Decks { get; set; }
    }

    public class Deck
    {
        public string Name { get; set; }
        public long Id { get; set; }
        public List<Format> Formats { get; set; } 
    }
}