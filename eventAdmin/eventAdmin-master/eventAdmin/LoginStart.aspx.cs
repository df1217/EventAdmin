using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EventClasses;

namespace eventAdmin
{
    public partial class LoginStart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AppUser user = AppUser.Login(this.userid.Value, this.pwd.Value);
            if (user.UserId > 0)
                Response.Redirect("~/EventList.aspx");
            else
                loginErrorMessage.Text = "You failed at hacking my site!!!!";
        }
    }
}