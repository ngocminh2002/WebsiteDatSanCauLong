using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using WebsiteDatSan.Models;

namespace WebsiteDatSan.Areas.Admin.Controllers
{
    public class ApplicationUsersController : Controller
    {
        private ApplicationDbContext _context;
        private UserManager<AspNetUsers> _userManager;
        private RoleManager<IdentityRole> _roleManager;

        public ApplicationUsersController()
        {
            _context = new ApplicationDbContext();
            _userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(_context));
            _roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(_context));
        }

        // GET: Member
        public async Task<ActionResult> Index()
        {
            var role = await _roleManager.FindByNameAsync("ChuSan");
            var members = await _userManager.Users
                .Where(u => u.Roles.Any(r => r.RoleId == role.Id))
                .ToListAsync();
            return View(members);

        }


    }
}
