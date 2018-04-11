using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FiveColor.Model
{
    [Serializable]
    public class Deck
    {
        public string Name { get; set; }
        public List<Card> Cards { get; set; }
    }
}
