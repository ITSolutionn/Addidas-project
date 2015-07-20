using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Addidas.Web.Controllers
{
    public class ApplicationManager
    {
        //protected override void OnActionExecuting(ActionExecutingContext filterContext)
        //{
        //    //loginDataModel = new LoginDataModel();
        //    //base.OnActionExecuting(filterContext);
        //    //var rd = HttpContext.Request.RequestContext.RouteData;
        //    //string currentAction = rd.GetRequiredString("action");
        //    //string currentController = rd.GetRequiredString("controller");
        //    //if (currentAction != "Login" || currentController != "Account")
        //    //{
        //    //    if (Session[SessionKeys.UserSessionId] == null)
        //    //    {
        //    //        if (filterContext.HttpContext.Request.IsAjaxRequest())
        //    //        {
        //    //            filterContext.HttpContext.Response.StatusCode = 440;
        //    //            filterContext.HttpContext.Response.End();
        //    //        }

        //    //        filterContext.Result = new RedirectToRouteResult(
        //    //                        new RouteValueDictionary {
        //    //                            { "Controller", "Account" },
        //    //                            { "Action", "Login" }
        //    //                    });
        //    //        // Accessing Permission
        //    //        //This for permission
        //    //        if (Session[SessionKeys.Permission] == null)
        //    //        {

        //    //            loginDataModel = (LoginDataModel)Session[SessionKeys.UserSessionId];
        //    //            if (Session[SessionKeys.UserSessionId] != null)
        //    //            agentPermissionModel = accountBAL.GetAgentPermission(loginDataModel.AgentID); // tHIS Id Will come dynamically as per User Login
        //    //            if (agentPermissionModel != null)
        //    //            {
        //    //                Session[SessionKeys.Permission] = agentPermissionModel;
        //    //            }
        //    //        }
        //    //    }// Session User ID 
        //    //    if (Session[SessionKeys.BrandingSessionId] == null)
        //    //    {

        //    //        if (Session[SessionKeys.UserSessionId] != null)
        //    //        {                    
        //    //            // Passing Tenant ID for Header and Footer
        //    //            brandingMode = new Branding();
        //    //            loginDataModel = (LoginDataModel)Session[SessionKeys.UserSessionId];
        //    //            brandingMode = accountBAL.GetBrandingDetail(loginDataModel.TenantID); // tHIS Id Will come dynamically as per User Login 
        //    //            brandingMode=SettingUpPathForBranding(brandingMode,loginDataModel);                        
        //    //            Session[SessionKeys.BrandingSessionId] = brandingMode;                      
        //    //        }
        //    //    } //Branding               
        //    //}


        //}
    }
}