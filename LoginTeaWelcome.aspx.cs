using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SRMISTportal
{
    public partial class LoginTeaWelcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SessionTEmail"] != null)
            {
                lblMsg.Text = "Welcome " + Session["SessionTName"];
                lblSessionID.Text = " " + Session["SessionTEmail"];
            }
            else
            {
                Response.Redirect("LoginTea.aspx");
            }
        }

        protected void btnLogoutTea_Click(object sender, EventArgs e)
        {
            if (Session["SessionTEmail"] != null)
            {
                Session.Abandon();
                Session["SessionTEmail"] = null;
                Response.Redirect("LoginTea.aspx");
            }
        }

        protected void btnDisplayTea_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayStdbyTea.aspx");
        }

        protected void btnTeaUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditTea.aspx");
        }

        protected void btnAgnUpload_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssignmentUpload.aspx");
        }
    }
}