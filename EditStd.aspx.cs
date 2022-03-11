using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DAL;

namespace SRMISTportal
{
    public partial class EditStd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Text = "Welcome " + Session["SessionSName"];
            lblSessionID.Text = " " + Session["SessionSEmail"];
        }

        protected void btnUpdateStd_Click(object sender, EventArgs e)
        {
            try
            {
                DAL.View stdupate = new DAL.View()
                {
                    SEmail = txtEmailStd.Text,
                    SPassword = txtPasswordStd.Text
                };
                SaveData stdsave = new SaveData();
                stdsave.StdUpdate(stdupate);

                lblMsg.Text = "Password has been Reset";

                Response.Redirect("LoginStd.aspx");
            }
            catch(Exception ex)
            {
                lblMsgUpdate.Text = ex.Message;
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