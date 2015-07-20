using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Addidas.Data;
using Addidas.Model;

namespace Addidas.Web.Controllers
{
    public class SignUpController : Controller
    {

        #region Declaration
        AddidasRepository addidasRepository;
        #endregion
        #region Action
        //
        // GET: /SignUp/

        public ActionResult Index()
        {
            return View();
        }
        /// <summary>
        /// GET: Register
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult Register()
        {
            return View();
        }
        /// <summary>
        /// POSt: Register
        /// </summary>
        /// <param name="UserRegisteration"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Register(UserRegisteration UserRegisteration)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    addidasRepository = new AddidasRepository();
                    int resultCount = addidasRepository.InsertUser(UserRegisteration);
                    return View();
                }
                else
                {
                    return View();
                }
            }
            catch (Exception ex) {
                throw ex;
            }
        }

        #endregion
        #region Methods
        #endregion
    }
}
