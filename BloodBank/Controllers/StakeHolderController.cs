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
    public class StakeHolderController : Controller
    {
        private BloodBankDbContext db = new BloodBankDbContext();

        //
        // GET: /StakeHolder/

        public ViewResult Index()
        {
            var stakeholders = db.StakeHolders.Include(s => s.Area);
            return View(stakeholders.ToList());
        }

        //
        // GET: /StakeHolder/Details/5

        public ViewResult Details(int id)
        {
            StakeHolder stakeholder = db.StakeHolders.Find(id);
            return View(stakeholder);
        }

        //
        // GET: /StakeHolder/Create

        public ActionResult Create()
        {
            var data = new List<SelectListItem> {
                new SelectListItem {Text="A+", Value="A+"},
                new SelectListItem {Text = "B+", Value="B+"},
                new SelectListItem {Text="O+", Value = "O+"},
                new SelectListItem {Text="AB+", Value="AB+"},
                new SelectListItem {Text = "B-", Value="B-"},
                new SelectListItem {Text="O-", Value = "O+"},
                new SelectListItem {Text="A-", Value="A-"},
                new SelectListItem {Text = "AB-", Value="AB-"}                
            };
            ViewBag.BloodGroup = new SelectList(data, "Value", "Text");

            ViewBag.AreaId = new SelectList(db.Areas, "Id", "AreaName");
            return View();
        } 

        //
        // POST: /StakeHolder/Create

        [HttpPost]
        public ActionResult Create(StakeHolder stakeholder)
        {
            if (ModelState.IsValid)
            {
                db.StakeHolders.Add(stakeholder);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            ViewBag.AreaId = new SelectList(db.Areas, "Id", "AreaName", stakeholder.AreaId);
            return View(stakeholder);
        }
        
        //
        // GET: /StakeHolder/Edit/5
 
        public ActionResult Edit(int id)
        {
            StakeHolder stakeholder = db.StakeHolders.Find(id);
            ViewBag.AreaId = new SelectList(db.Areas, "Id", "AreaName", stakeholder.AreaId);
            return View(stakeholder);
        }

        //
        // POST: /StakeHolder/Edit/5

        [HttpPost]
        public ActionResult Edit(StakeHolder stakeholder)
        {
            if (ModelState.IsValid)
            {
                db.Entry(stakeholder).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.AreaId = new SelectList(db.Areas, "Id", "AreaName", stakeholder.AreaId);
            return View(stakeholder);
        }

        //
        // GET: /StakeHolder/Delete/5
 
        public ActionResult Delete(int id)
        {
            StakeHolder stakeholder = db.StakeHolders.Find(id);
            return View(stakeholder);
        }

        //
        // POST: /StakeHolder/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            StakeHolder stakeholder = db.StakeHolders.Find(id);
            db.StakeHolders.Remove(stakeholder);
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