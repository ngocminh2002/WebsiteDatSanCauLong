using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteDatSan.Models;

namespace WebsiteDatSan.Areas.Admin.Controllers
{
    public class QLChuSanController : Controller
    {
        private readonly UserManager<AspNetUsers> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        private ApplicationDbContext _context;
        public QLChuSanController()
        {
            _context = new ApplicationDbContext();
            _userManager = new UserManager<AspNetUsers>(new UserStore<AspNetUsers>(_context));
            _roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(_context));
        }
        // GET: Admin/QLChuSan
        public ActionResult Index()
        {
            List<AspNetUsers> ListUser = new List<AspNetUsers>();
            var role = _roleManager.FindByName("ChuSan");
            foreach (var user in _userManager.Users)
            {

                if (user.Roles.Where(e => e.RoleId == role.Id).FirstOrDefault() != null)
                {
                    ListUser.Add(user);
                }
            }

            // Return a fallback view or handle the case when "chủ sân" role is not found
            return View(ListUser);
        }
    }
}