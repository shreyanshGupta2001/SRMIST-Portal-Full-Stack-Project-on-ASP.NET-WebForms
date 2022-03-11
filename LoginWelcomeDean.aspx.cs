using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SRMISTportal
{
    public partial class LoginWelcomeDean : System.Web.UI.Page
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

        protected void btnDisplayTea_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayStdbyDean.aspx");
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

        protected void btnTeaUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditDean.aspx");
        }

        protected void btnStdDelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteStdbyDean.aspx");
        }

        protected void btnAddNotice_Click(object sender, EventArgs e)
        {
            Response.Redirect("NoticeUpload.aspx");
        }
    }
}