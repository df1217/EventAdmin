using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eventAdmin
{
    public partial class EventAdminNav : System.Web.UI.UserControl
    {
        public string PageName
        {
            get
            {
                object pageName = ViewState["PageName"];
                if (pageName != null)
                    return (string)pageName;
                else
                    return "Login";
            }
            set
            {
                ViewState["PageName"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //this switch statement selects which page to activate in the nav control, and allows access to certain pages
            switch(PageName)
            {
                case "Login":
                    this.loginLI.Attributes["class"] = "active";
                    this.loginA.HRef = "#";
                    this.listLI.Attributes["class"] = "";
                    this.listA.HRef = "#";
                    this.addLI.Attributes["class"] = "";
                    this.addA.HRef = "#";
                    this.logoutLI.Attributes["class"] = "";
                    this.logoutA.HRef = "#";
                    break;
                case "EventList":
                    this.loginLI.Attributes["class"] = "";
                    this.loginA.HRef = "#";
                    this.listLI.Attributes["class"] = "active";
                    this.listA.HRef = "#";
                    this.addLI.Attributes["class"] = "";
                    this.addA.HRef = "AddEvent.aspx";
                    this.logoutLI.Attributes["class"] = "";
                    this.logoutA.HRef = "Login.aspx";
                    break;
                case "AddEvent":
                    this.loginLI.Attributes["class"] = "";
                    this.loginA.HRef = "#";
                    this.listLI.Attributes["class"] = "";
                    this.listA.HRef = "EventList.aspx";
                    this.addLI.Attributes["class"] = "active";
                    this.addA.HRef = "#";
                    this.logoutLI.Attributes["class"] = "";
                    this.logoutA.HRef = "Login.aspx";
                    break;
            }
        }
    }
}