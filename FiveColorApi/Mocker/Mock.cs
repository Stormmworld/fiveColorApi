using System;
using System.Collections.Generic;
using System.Linq;
using FiveColor.Model;

namespace FiveColor.Mocker
{
    public static class Mock
    {
        public static Card GetMockCard()
        {
            return new Card() {
                enabled=true,
                image= "https://img.scryfall.com/cards/normal/en/leb/231.jpg",
                Name= "Ankh of Mishra",
                tapped=false,
                Type="Artifact"
            };
        }

        public static Deck GetMockDeck()
        {
            Deck retVal = new Deck()
            {
                Cards = new List<Card>(),
                Name = "Mock Deck"
            };
            for (int i = 0; i < 60; i++)
            {
                retVal.Cards.Add(GetMockCard());
            }
            return retVal;
        }
    }
}
