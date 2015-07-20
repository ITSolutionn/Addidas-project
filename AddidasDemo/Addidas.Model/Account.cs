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
        [Required(ErrorMessage = "Please Enter Password")]
        [StringLength(50, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }
        [Required(ErrorMessage = "Please Enter Confirm Password")]
        [StringLength(50, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Confirm password")]
        [Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }
        public string Address { get; set; }
        public string Country { get; set; }
        [Required(ErrorMessage = "Please Enter Mobile No")]
        [Display(Name = "Mobile")]
        [StringLength(10, ErrorMessage = "The Mobile must contains 10 characters", MinimumLength = 10)]        
        public string ContactNo { get; set; }
        public bool IsActive { get; set; }
        public bool IsDelete { get; set; }

    }   
    /// <summary>
    /// Model class for Login
    /// </summary>
    public class Login
    {
        public string Email { get; set; }
        
        //[RegularExpression("[0-9a-zA-Z@#$%^&*()_+}{:?><,.*-]",ErrorMessageResourceType = typeof(AuthenticationModelsResource),ErrorMessageResourceName = "PasswordNotStrongEnoughMessage")]
        public string Password { get; set; }
    }
}
