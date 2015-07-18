using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Addidas.Web.Controllers
{
    public class ProductController : Controller
    {

        #region Declaration
        #endregion

        #region Action
        public ActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// ProductAdd
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult ProductAdd() {
            return View();
        }

        public ActionResult Shop()
        {
            return View();
        }

        public ActionResult Single()
        {
            return View();
        }
        #endregion

        #region methods
        #endregion
    }
}
