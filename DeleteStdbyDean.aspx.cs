using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace SRMISTportal
{
    public partial class DeleteStdbyDean : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Text = "Welcome " + Session["SessionTName"];
            lblSessionID.Text = " " + Session["SessionTEmail"];
        }

        protected void btnStDelete_Click(object sender, EventArgs e)
        {
            try
            {
                DAL.View stddelete = new DAL.View()
                {
                    StdID = Convert.ToInt32(txtStdID.Text)
                };

                SaveData stdsave = new SaveData();
                stdsave.StdDelete(stddelete);

                lblMsgDel.Text = "Record has been deleted";
            }
            catch (Exception ex)
            {
                lblMsgDel.Text = ex.Message;
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