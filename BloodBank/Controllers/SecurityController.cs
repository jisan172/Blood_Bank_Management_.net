using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BloodBank.Models;
using System.Web.Security;

namespace BloodBank.Controllers
{
    public class SecurityController : Controller
    {
        //
        // GET: /Security/
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(string UserName, string Password)
        {
            BloodBankDbContext _ctx = new BloodBankDbContext();
            var user = _ctx.StakeHolders.Where(u => u.UserName == UserName && u.Password == Password);
            if (user.Count() > 0)
            {
                FormsAuthentication.SetAuthCookie(UserName, false);
                return RedirectToAction("Index", "Home");
            }
            else
            {
                ViewBag.msg = "Username and Password doesn't match.";
                return View();
            }

        }

        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Login", "Security");
        }
    }
}
