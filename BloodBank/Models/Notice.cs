using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace BloodBank.Models
{
    public class Notice
    {
        public int Id { get; set; }
        public int RequisitionId { get; set; }
        public string NoticeText { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime NoticeDate { get; set; }

        [RegularExpression(@"^([1-9]|1[0-2]|0[1-9]){1}(:[0-5][0-9][aApP][mM]){1}$", ErrorMessage = "validate time on a 12 hour clock and format 08:00AM")]
        public string NoticeTime { get; set; }
        public string Remarks { get; set; }

        [ForeignKey("NoticeTo")]
        public int NoticeToId { get; set; }
        public virtual StakeHolder NoticeTo { get; set; }
        [ForeignKey("NoticeBy")]
        public int NoticeById { get; set; }
        public virtual StakeHolder NoticeBy { get; set; }
        public virtual BloodRequistion Requisition { get; set; }
    }
}