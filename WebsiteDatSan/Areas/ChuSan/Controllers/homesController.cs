using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebsiteDatSan.Areas.ChuSan.Controllers
{
    [Authorize(Roles = "ChuSan")]
    public class homesController : Controller
    {
        // GET: ChuSan/home
        public ActionResult Index()
        {
            return View();
        }
    }
}