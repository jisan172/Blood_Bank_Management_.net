using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace BloodBank.Models
{
    public class Area
    {
        public int Id { get; set; }
        public int? AreaId { get; set; }
        [Required]
        [MaxLength(50, ErrorMessage = "Area name can't be more than 50 characters")]
        [StringLength(maximumLength: 50, MinimumLength = 5, ErrorMessage = "Area name can't be more than 50 characters")]
        public string AreaName { get; set; }

        [MaxLength(1000, ErrorMessage = "Area name can't be more than 1000 characters")]
        public string Description { get; set; }

        public virtual List<Area> Areas { get; set; }
        public virtual Area ParentArea { get; set; }
        public virtual List<StakeHolder> StakeHolders { get; set; }
        public virtual List<BloodRequistion> Requistions { get; set; }
    }
}