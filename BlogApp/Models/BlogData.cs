namespace BlogApp.Models
{
    public class BlogData
    {
        public string? Id { get; set; }

        public string UserName { get; set; }
        public string Password { get; set; } = string.Empty;

        public string Email { get; set; }

        public List<string> BlogIds { get; set; } = new List<string>();

        public List<string> Followers { get; set; } = new List<string>();   // users who follow this user
        public List<string> Following { get; set; } = new List<string>();
    }
}
