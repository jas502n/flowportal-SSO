using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace www.Josons.Com
{
    public class SSOLogOutController : Joson.SSOSite.OAuth.BaseLogOutController
    {
 

        public ActionResult Index()
        {
            return View();
        }

    }
}
