/*using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using WebsiteDatSan.Models;
using System.Data.Entity;

namespace WebsiteDatSan.Areas.Admin.Controllers
{
    public class QLCSController : Controller
    {
        // GET: Admin/QLCS
        private readonly ApplicationDbContext _context;
        private readonly RoleManager<IdentityRole> _roleManager;

        public QLCSController()
        {
            _context = new ApplicationDbContext();
            _roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(_context));
        }

        public async Task<ActionResult> Index()
        {
            // Tìm vai trò "ChuSan"
            var role = await _roleManager.FindByNameAsync("ChuSan");
            if (role == null)
            {
                // Xử lý khi không tìm thấy vai trò
                // Ví dụ: trả về một thông báo lỗi hoặc chuyển hướng đến trang khác
                return RedirectToAction("RoleNotFound");
            }

            // Lấy danh sách người dùng theo vai trò
            var usersInRole = await (from userRole in _context.Set<IdentityUserRole>()
                                     join user in _context.Users on userRole.UserId equals user.Id
                                     where userRole.RoleId == role.Id
                                     select user).ToListAsync();

            return View(usersInRole);
        }

    }
}*/