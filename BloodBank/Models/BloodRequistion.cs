using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace BloodBank.Models
{
    public class BloodRequistion
    {
        public int Id { get; set; }

        [Required]
        [RegularExpression("^(A|B|AB|O)[+-]$", ErrorMessage = "Blood group between A|B|AB|O[+-]")] //Blood Group validation
        public string BloodGroup { get; set; }

        [Required]
        [RegularExpression(@"^\d+$", ErrorMessage = "Amount must be positive and valid")]//allow all positive integer
        public int? Amount { get; set; }
        public int? StakeholderId { get; set; }

        public int? AreaId { get; set; }

        [Required]
        [DataType(DataType.PhoneNumber)]
        [MaxLength(14)]
        [RegularExpression(@"^(?:\+?88)?01[15-9]\d{8}$", ErrorMessage = "Invalid BD phone number")] //Bangladeshi phone number validation
        public string ContactNumber { get; set; }
        public string UrgencyLevel { get; set; }
        public string HospitalName { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime? DateOfNeed { get; set; } //yyyy-MM-dd

        [RegularExpression(@"^([1-9]|1[0-2]|0[1-9]){1}(:[0-5][0-9][aApP][mM]){1}$", ErrorMessage = "validate time on a 12 hour clock and format 08:00AM")]
        public string TimeOfNeed { get; set; }//validate time on a 12 hour clock and format 08:00AM

        [Display(Name = "Requisition Date")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime? RequisitionDate { get; set; }

        [RegularExpression(@"^([1-9]|1[0-2]|0[1-9]){1}(:[0-5][0-9][aApP][mM]){1}$", ErrorMessage = "validate time on a 12 hour clock and format 08:00AM")]
        public string RequisitionTime { get; set; }
        public string Status { get; set; }
        [MaxLength(500)]
        public string Remarks { get; set; }

        public virtual Area Area { get; set; }
        public virtual StakeHolder RequisitionBy { get; set; }
        public virtual List<Notice> Notices { get; set; }
    }
}