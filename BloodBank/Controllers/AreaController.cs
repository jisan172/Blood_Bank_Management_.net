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
    public class AreaController : Controller
    {
        private BloodBankDbContext db = new BloodBankDbContext();

        //
        // GET: /Area/

        public ViewResult Index()
        {
            var areas = db.Areas.Include(a => a.ParentArea);
            return View(areas.ToList());
        }

        //
        // GET: /Area/Details/5

        public ViewResult Details(int id)
        {
            Area area = db.Areas.Find(id);
            return View(area);
        }

        //
        // GET: /Area/Create

        public ActionResult Create()
        {
               var data = new List<SelectListItem> {
                new SelectListItem {Text="Dhaka", Value="Dhaka"},
                new SelectListItem {Text = "Khulna", Value="Khulna"},
                new SelectListItem {Text="Chittagong", Value = "Chittagong"},
                new SelectListItem {Text="Rajshahi", Value="Rajshahi"},
                new SelectListItem {Text = "Rangpur", Value="Rangpur"},
                new SelectListItem {Text="Sylhet", Value = "Sylhet"},
                new SelectListItem {Text="Barisal", Value="Barisal"},
                new SelectListItem {Text = "Mymensingh", Value="Mymensingh"}                
            };
            ViewBag.AreaName = new SelectList(data, "Value", "Text");

            ViewBag.AreaId = new SelectList(db.Areas, "Id", "AreaName");
            return View();
        } 

        //
        // POST: /Area/Create

        [HttpPost]
        public ActionResult Create(Area area)
        {
            if (ModelState.IsValid)
            {
                db.Areas.Add(area);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            ViewBag.AreaId = new SelectList(db.Areas, "Id", "AreaName", area.AreaId);
            return View(area);
        }
        
        //
        // GET: /Area/Edit/5
 
        public ActionResult Edit(int id)
        {
            Area area = db.Areas.Find(id);
            ViewBag.AreaId = new SelectList(db.Areas, "Id", "AreaName", area.AreaId);
            return View(area);
        }

        //
        // POST: /Area/Edit/5

        [HttpPost]
        public ActionResult Edit(Area area)
        {
            if (ModelState.IsValid)
            {
                db.Entry(area).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.AreaId = new SelectList(db.Areas, "Id", "AreaName", area.AreaId);
            return View(area);
        }

        //
        // GET: /Area/Delete/5
 
        public ActionResult Delete(int id)
        {
            Area area = db.Areas.Find(id);
            return View(area);
        }

        //
        // POST: /Area/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Area area = db.Areas.Find(id);
            db.Areas.Remove(area);
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