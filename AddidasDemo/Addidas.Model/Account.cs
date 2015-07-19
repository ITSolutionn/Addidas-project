using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Addidas.Model
{
    class Account
    {
    }
    /// <summary>
    /// Model class for User Registeration
    /// </summary>
    public class UserRegisteration
    {
        [Required]
        [StringLength(50)]
        [Display(Description = "First Name")]
        [RegularExpression(@"^[a-zA-Z]+$", ErrorMessage = "Use letters only please")]        
        public string Name { get; set; }
        [Required]
        [DataType(DataType.EmailAddress)]
        [EmailAddress]
        public string Email { get; set; }
        public string Password { get; set; }
        public string Address { get; set; }
        public string Country { get; set; }
        public int? Contactno { get; set; }
        public bool IsActive { get; set; }
        public bool IsDelete { get; set; }
    }   
    /// <summary>
    /// Model class for Login
    /// </summary>
    public class Login
    {
        public string Email { get; set; }
        public string Password { get; set; }
    }
}
