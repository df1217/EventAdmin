using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EventClasses;

namespace eventAdmin
{
    public partial class Login : System.Web.UI.Page
    {
        private AppUser user;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                EventAdminMaster master = (EventAdminMaster)this.Master;
                EventAdminNav nav = (EventAdminNav)master.FindControl("EventAdminNav");
                nav.PageName = "Login";
            }
           
                Session["AppUser"] = null;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            user = AppUser.Login(this.userid.Value, this.pwd.Value);
            if (user.UserId > 0)
            {
                Session["AppUser"] = user;
                Response.Redirect("~/EventList.aspx"); 
            }
            else
                loginErrorMessage.Text = "Failed to verify account.";
        }
    }
}