using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace BloodBank.Models
{
    public class BloodDonationHistory
    {
        public int Id { get; set; }
        public int? StakeholderId { get; set; }
        public int? RequisitionId { get; set; }
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime? DonationDate { get; set; }

        [RegularExpression(@"^([1-9]|1[0-2]|0[1-9]){1}(:[0-5][0-9][aApP][mM]){1}$", ErrorMessage = "validate time on a 12 hour clock and format 08:00AM")]
        public string DonationTime { get; set; }

        [RegularExpression(@"^\d+$", ErrorMessage = "Amount must be positive and valid")]//allow all positive integer
        public int? Amount { get; set; }
        public string Remarks { get; set; }

        public virtual StakeHolder DonatedBy { get; set; }
        public virtual BloodRequistion Requisition { get; set; }
    }
}