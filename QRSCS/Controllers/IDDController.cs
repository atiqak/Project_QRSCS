using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QRSCS.Filters;

namespace QRSCS.Controllers
{
    [AuthorizedUser]
    public class IDDController : Controller
    {
        // GET: IDD
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult IEP()
        {
            return View();
        }

        public ActionResult OT()
        {
            return View();
        }

        public ActionResult OT2()
        {
            return View();
        }

        public ActionResult PT()
        {
            return View();
        }
    }
}