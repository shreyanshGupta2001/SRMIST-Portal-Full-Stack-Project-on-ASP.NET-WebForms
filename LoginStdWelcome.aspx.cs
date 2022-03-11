using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace SRMISTportal
{
    public partial class LoginStdWelcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SessionSEmail"] != null)
            {
                lblMsg.Text = "Welcome " + Session["SessionSName"];
                lblSessionID.Text = " " + Session["SessionSEmail"];
            }
            else
            {
                Response.Redirect("LoginStd.aspx");
            }
        }

        protected void btnLogoutStd_Click(object sender, EventArgs e)
        {
            if (Session["SessionSEmail"] != null)
            {
                Session.Abandon();
                Session["SessionSEmail"] = null;
                Response.Redirect("LoginStd.aspx");
            }
        }

        protected void btnDisplayStd_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayStdDetails.aspx");
        }

        protected void btnEditStd_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditStd.aspx");
        }

        protected void btnAttendance_Click(object sender, EventArgs e)
        {
            Response.Redirect("StdCheckAttendance.aspx");
        }

        protected void btnAssignment_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayStdAssignment.aspx");
        }

        protected void btnNotice_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayNotice.aspx");
        }
    }
}