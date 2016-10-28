using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EventClasses;

namespace eventAdmin
{
    
    public partial class AddEvent : System.Web.UI.Page
    {
        private AppUser user;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AppUser"] == null)
                Response.Redirect("Login.aspx");
            else
                user = (AppUser)Session["AppUser"];
            if (!IsPostBack)
            {
                EventAdminMaster master = (EventAdminMaster)this.Master;
                EventAdminNav nav = (EventAdminNav)master.FindControl("EventAdminNav");
                nav.PageName = "AddEvent";
            }
            

        }
    }
}