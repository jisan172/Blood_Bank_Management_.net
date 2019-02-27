using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;

namespace BloodBank.Models
{
    public class BloodBankDbContext : DbContext
    {
        public DbSet<BloodRequistion> BloodRequistions { get; set; }
        public DbSet<Notice> Notices { get; set; }
        public DbSet<BloodDonationHistory> BloodDonationHistories { get; set; }
        public DbSet<Area> Areas { get; set; }
        public DbSet<StakeHolder> StakeHolders { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            Database.SetInitializer<BloodBankDbContext>(new DropCreateDatabaseIfModelChanges<BloodBankDbContext>());

            modelBuilder.Conventions.Remove<OneToManyCascadeDeleteConvention>();
            modelBuilder.Conventions.Remove<ManyToManyCascadeDeleteConvention>();
        }

        //public DbSet<UserAccount> UserAccounts { get; set; }

    }
}