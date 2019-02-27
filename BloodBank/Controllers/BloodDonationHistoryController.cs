using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BloodBank.Models;

namespace BloodBank.Controllers
{
    [Authorize]
    public class BloodDonationHistoryController : Controller
    {
        private BloodBankDbContext db = new BloodBankDbContext();

        //
        // GET: /BloodDonationHistory/

        public ViewResult Index()
        {
            var blooddonationhistories = db.BloodDonationHistories.Include(b => b.DonatedBy).Include(b => b.Requisition);
            return View(blooddonationhistories.ToList());
        }

        //
        // GET: /BloodDonationHistory/Details/5

        public ViewResult Details(int id)
        {
            BloodDonationHistory blooddonationhistory = db.BloodDonationHistories.Find(id);
            return View(blooddonationhistory);
        }

        //
        // GET: /BloodDonationHistory/Create

        public ActionResult Create()
        {
            ViewBag.StakeholderId = new SelectList(db.StakeHolders, "Id", "FullName");
            ViewBag.RequisitionId = new SelectList(db.BloodRequistions, "Id", "BloodGroup");
            return View();
        } 

        //
        // POST: /BloodDonationHistory/Create

        [HttpPost]
        public ActionResult Create(BloodDonationHistory blooddonationhistory)
        {
            if (ModelState.IsValid)
            {
                db.BloodDonationHistories.Add(blooddonationhistory);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            ViewBag.StakeholderId = new SelectList(db.StakeHolders, "Id", "FullName", blooddonationhistory.StakeholderId);
            ViewBag.RequisitionId = new SelectList(db.BloodRequistions, "Id", "BloodGroup", blooddonationhistory.RequisitionId);
            return View(blooddonationhistory);
        }
        
        //
        // GET: /BloodDonationHistory/Edit/5
 
        public ActionResult Edit(int id)
        {
            BloodDonationHistory blooddonationhistory = db.BloodDonationHistories.Find(id);
            ViewBag.StakeholderId = new SelectList(db.StakeHolders, "Id", "FullName", blooddonationhistory.StakeholderId);
            ViewBag.RequisitionId = new SelectList(db.BloodRequistions, "Id", "BloodGroup", blooddonationhistory.RequisitionId);
            return View(blooddonationhistory);
        }

        //
        // POST: /BloodDonationHistory/Edit/5

        [HttpPost]
        public ActionResult Edit(BloodDonationHistory blooddonationhistory)
        {
            if (ModelState.IsValid)
            {
                db.Entry(blooddonationhistory).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.StakeholderId = new SelectList(db.StakeHolders, "Id", "FullName", blooddonationhistory.StakeholderId);
            ViewBag.RequisitionId = new SelectList(db.BloodRequistions, "Id", "BloodGroup", blooddonationhistory.RequisitionId);
            return View(blooddonationhistory);
        }

        //
        // GET: /BloodDonationHistory/Delete/5
 
        public ActionResult Delete(int id)
        {
            BloodDonationHistory blooddonationhistory = db.BloodDonationHistories.Find(id);
            return View(blooddonationhistory);
        }

        //
        // POST: /BloodDonationHistory/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            BloodDonationHistory blooddonationhistory = db.BloodDonationHistories.Find(id);
            db.BloodDonationHistories.Remove(blooddonationhistory);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}