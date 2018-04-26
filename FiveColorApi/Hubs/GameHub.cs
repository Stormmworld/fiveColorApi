﻿using Microsoft.AspNet.SignalR;

namespace FiveColorApi.Hubs
{
    public class GameHub : Hub
    {
        public void Send(string name, string message)
        {
            // Call the broadcastMessage method to update clients.
            Clients.All.broadcastMessage(name, message);
        }
    }
}