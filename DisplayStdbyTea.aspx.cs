using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace SRMISTportal
{
    public partial class DisplayStdbyTea : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //DAL.View stdsingleview = new DAL.View()
                //{
                //    SBatch = txtStdBatch.ToString()
                //};
                lblMsg.Text = "Welcome " + Session["SessionTName"];
                lblSessionID.Text = " " + Session["SessionTEmail"];
                SaveData stdsave = new SaveData();
                GridView1.DataSource = stdsave.StdDisplaybyTea();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                //ex.Message
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
            Response.Redirect("EditDean.aspx");
        }

        protected void btnAgnUpload_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssignmentUpload.aspx");
        }
    }
}