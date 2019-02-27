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
    public class NoticeController : Controller
    {
        private BloodBankDbContext db = new BloodBankDbContext();

        //
        // GET: /Notice/

        public ViewResult Index()
        {
            var notices = db.Notices.Include(n => n.NoticeTo).Include(n => n.NoticeBy).Include(n => n.Requisition);
            return View(notices.ToList());
        }

        //
        // GET: /Notice/Details/5

        public ViewResult Details(int id)
        {
            Notice notice = db.Notices.Find(id);
            return View(notice);
        }

        //
        // GET: /Notice/Create

        public ActionResult Create()
        {
            ViewBag.NoticeToId = new SelectList(db.StakeHolders, "Id", "FullName");
            ViewBag.NoticeById = new SelectList(db.StakeHolders, "Id", "FullName");
            ViewBag.RequisitionId = new SelectList(db.BloodRequistions, "Id", "BloodGroup");
            return View();
        } 

        //
        // POST: /Notice/Create

        [HttpPost]
        public ActionResult Create(Notice notice)
        {
            if (ModelState.IsValid)
            {
                db.Notices.Add(notice);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            ViewBag.NoticeToId = new SelectList(db.StakeHolders, "Id", "FullName", notice.NoticeToId);
            ViewBag.NoticeById = new SelectList(db.StakeHolders, "Id", "FullName", notice.NoticeById);
            ViewBag.RequisitionId = new SelectList(db.BloodRequistions, "Id", "BloodGroup", notice.RequisitionId);
            return View(notice);
        }
        
        //
        // GET: /Notice/Edit/5
 
        public ActionResult Edit(int id)
        {
            Notice notice = db.Notices.Find(id);
            ViewBag.NoticeToId = new SelectList(db.StakeHolders, "Id", "FullName", notice.NoticeToId);
            ViewBag.NoticeById = new SelectList(db.StakeHolders, "Id", "FullName", notice.NoticeById);
            ViewBag.RequisitionId = new SelectList(db.BloodRequistions, "Id", "BloodGroup", notice.RequisitionId);
            return View(notice);
        }

        //
        // POST: /Notice/Edit/5

        [HttpPost]
        public ActionResult Edit(Notice notice)
        {
            if (ModelState.IsValid)
            {
                db.Entry(notice).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.NoticeToId = new SelectList(db.StakeHolders, "Id", "FullName", notice.NoticeToId);
            ViewBag.NoticeById = new SelectList(db.StakeHolders, "Id", "FullName", notice.NoticeById);
            ViewBag.RequisitionId = new SelectList(db.BloodRequistions, "Id", "BloodGroup", notice.RequisitionId);
            return View(notice);
        }

        //
        // GET: /Notice/Delete/5
 
        public ActionResult Delete(int id)
        {
            Notice notice = db.Notices.Find(id);
            return View(notice);
        }

        //
        // POST: /Notice/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Notice notice = db.Notices.Find(id);
            db.Notices.Remove(notice);
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