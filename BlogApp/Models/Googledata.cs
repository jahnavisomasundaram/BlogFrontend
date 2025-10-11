﻿namespace BlogApp.Models
{
    public class GoogleData
    {
        public string? Id { get; set; }

        public string Email { get; set; }

        public string? UserName { get; set; }
        public List<string> BlogIds { get; set; } = new List<string>();
    }
}
