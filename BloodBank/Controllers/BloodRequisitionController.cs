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
    public class BloodRequisitionController : Controller
    {
        private BloodBankDbContext db = new BloodBankDbContext();

        //
        // GET: /BloodRequisition/

        public ViewResult Index()
        {
            var bloodrequistions = db.BloodRequistions.Include(b => b.Area).Include(b => b.RequisitionBy);
            return View(bloodrequistions.ToList());
        }

        //
        // GET: /BloodRequisition/Details/5

        public ViewResult Details(int id)
        {
            BloodRequistion bloodrequistion = db.BloodRequistions.Find(id);
            return View(bloodrequistion);
        }

        //
        // GET: /BloodRequisition/Create

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
            ViewBag.StakeholderId = new SelectList(db.StakeHolders, "Id", "FullName");
            return View();
        } 

        //
        // POST: /BloodRequisition/Create

        [HttpPost]
        public ActionResult Create(BloodRequistion bloodrequistion)
        {
            if (ModelState.IsValid)
            {
                db.BloodRequistions.Add(bloodrequistion);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            ViewBag.AreaId = new SelectList(db.Areas, "Id", "AreaName", bloodrequistion.AreaId);
            ViewBag.StakeholderId = new SelectList(db.StakeHolders, "Id", "FullName", bloodrequistion.StakeholderId);
            return View(bloodrequistion);
        }
        
        //
        // GET: /BloodRequisition/Edit/5
 
        public ActionResult Edit(int id)
        {
            BloodRequistion bloodrequistion = db.BloodRequistions.Find(id);
            ViewBag.AreaId = new SelectList(db.Areas, "Id", "AreaName", bloodrequistion.AreaId);
            ViewBag.StakeholderId = new SelectList(db.StakeHolders, "Id", "FullName", bloodrequistion.StakeholderId);
            return View(bloodrequistion);
        }

        //
        // POST: /BloodRequisition/Edit/5

        [HttpPost]
        public ActionResult Edit(BloodRequistion bloodrequistion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(bloodrequistion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.AreaId = new SelectList(db.Areas, "Id", "AreaName", bloodrequistion.AreaId);
            ViewBag.StakeholderId = new SelectList(db.StakeHolders, "Id", "FullName", bloodrequistion.StakeholderId);
            return View(bloodrequistion);
        }

        //
        // GET: /BloodRequisition/Delete/5
 
        public ActionResult Delete(int id)
        {
            BloodRequistion bloodrequistion = db.BloodRequistions.Find(id);
            return View(bloodrequistion);
        }

        //
        // POST: /BloodRequisition/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            BloodRequistion bloodrequistion = db.BloodRequistions.Find(id);
            db.BloodRequistions.Remove(bloodrequistion);
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