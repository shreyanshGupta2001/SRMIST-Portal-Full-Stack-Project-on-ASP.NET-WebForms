using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace SRMISTportal
{
    public partial class EditTea : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Text = "Welcome " + Session["SessionTName"];
            lblSessionID.Text = " " + Session["SessionTEmail"];
        }

        protected void btnUpdateTea_Click(object sender, EventArgs e)
        {
            try
            {
                DAL.View teaupate = new DAL.View()
                {
                    TEmail = txtEmailTea.Text,
                    TPassword = txtPasswordTea.Text
                };
                SaveData teasave = new SaveData();
                teasave.TeaUpdate(teaupate);

                lblMsgUpdate.Text = "Password has been Reset";

                Response.Redirect("LoginTea.aspx");
            }
            catch (Exception ex)
            {
                lblMsgUpdate.Text = ex.Message;
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