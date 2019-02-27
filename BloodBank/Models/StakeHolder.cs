using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace BloodBank.Models
{
    public class StakeHolder
    {
        public int Id { get; set; }
        [Required]
        [MaxLength(100, ErrorMessage = "Area name can't be more than 100 characters")]
        [StringLength(maximumLength: 100, MinimumLength = 2, ErrorMessage = "Area name must be between 2 and 100 characters")]
        [RegularExpression("^[a-zA-Z\\s]*$", ErrorMessage = "Name contain only string and spacef")] //  for checking a string with only letters and spaces (nothing else)
        [Display(Name = "Full Name")]
        public string FullName { get; set; }

        [Required]
        [RegularExpression("^(A|B|AB|O)[+-]$", ErrorMessage = "Blood group between A|B|AB|O[+-]")] //Blood Group validation
        public string BloodGroup { get; set; }

        [Required]
        [RegularExpression(@"^(?:\+?88)?01[15-9]\d{8}$", ErrorMessage = "Invalid BD phone number")] //Bangladeshi phone number validation
        public string PhoneNumber { get; set; }

        [Required]
        [DataType(DataType.EmailAddress)]
        [RegularExpression(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*")] //Email address validation
        public string EmailAddress { get; set; }

        [Required]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime DateOfBirth { get; set; } //MM/dd/yyyy with 100% leap years.

        public string StakeHolderType { get; set; }

        [MaxLength(50, ErrorMessage = "Country name can't be more than 100 characters")]
        [StringLength(50, ErrorMessage = "Country name can't be more than 100 characters")]
        public string Country { get; set; }

        [MaxLength(50, ErrorMessage = "District name can't be more than 100 characters")]
        [StringLength(50, ErrorMessage = "District name can't be more than 100 characters")]
        public string District { get; set; }
        public string Thana { get; set; }

        [MaxLength(200, ErrorMessage = "PresentAddress  can't be more than 200 characters")]
        [StringLength(50, ErrorMessage = "PresentAddress name can't be more than 100 characters")]
        public string PresentAddress { get; set; }

        [Required]
        [Range(50, 85, ErrorMessage = "Weight must be between 50 and 85")]
        /*[RegularExpression(@"^\d*\.?\d*[1-9]+\d*$)|(^[1-9]+\d*\.\d*$")] //Only digit allow*/
        public float Weight { get; set; }
        public bool? IsDonor { get; set; }
        public bool? IsReceiver { get; set; }
        public int? AreaId { get; set; }

        public string UserName { get; set; }
        public string Password { get; set; }

        public virtual Area Area { get; set; }
        public virtual List<BloodDonationHistory> BloodDonationHistories { get; set; }

        [InverseProperty("NoticeTo")]
        public virtual List<Notice> GotNotices { get; set; }

        [InverseProperty("NoticeBy")]
        public virtual List<Notice> SentNotices { get; set; }



    }
}