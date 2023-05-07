using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebsiteDatSan.Areas.Admin.Controllers
{
    [Authorize(Roles = "Admin")]
    public class HomessController : Controller
    {
        // GET: Admin/Homess
        public ActionResult Index()
        {
            return View();
        }
    }
}