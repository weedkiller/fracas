﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StarEnergi.Controllers.FrontEnd
{
    public class HseObservationYearController : Controller
    {
        //
        // GET: /HseObservationYear/

        public ActionResult Index()
        {
            if (Session["username"] == null)
            {
                return RedirectToAction("Index", "Dashboard");
            }
            return View();
        }

    }
}
