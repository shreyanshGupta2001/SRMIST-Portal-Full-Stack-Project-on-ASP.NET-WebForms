using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace SRMISTportal
{
    public partial class EditDean : System.Web.UI.Page
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