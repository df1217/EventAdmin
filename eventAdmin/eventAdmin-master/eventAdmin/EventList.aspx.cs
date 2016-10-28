using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EventClasses;

namespace eventAdmin
{
    public partial class EventList : System.Web.UI.Page
    {
        private AppUser user;
        private List<Event> allEvents;
        private List<Event> yourEvents;
        private List<Event> otherEvents;
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
                nav.PageName = "EventList";
                allEvents = Event.GetList();
                yourEvents = allEvents.Where(ev =>
                ev.UserID == user.UserId).OrderBy(ev => ev.Date).ToList();

                this.yourEventsGrid.DataSource = yourEvents;
                this.yourEventsGrid.DataBind();
            }
           

        }
    }
}