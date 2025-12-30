using System.ComponentModel.DataAnnotations;

namespace WebApi.Models
{
    public class Users
    {
        [Key]
        public int userId { get; set; }

        public required String name { get; set; } = "";
        public required String address { get; set; } = "";

    }
}
