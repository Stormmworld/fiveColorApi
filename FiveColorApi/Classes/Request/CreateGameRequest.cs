using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FiveColorApi.Classes.Request
{
    public class CreateGameRequest
    {
        public int PlayerId { get; set; }
        public string GameName { get; set; }
    }
}