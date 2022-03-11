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
    public partial class NoticeUpload : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Server = LAPTOP-SPA4TKP0; Database = SRMIST; Integrated security = true");
            lblMsg.Text = "Welcome " + Session["SessionTName"];
            lblSessionID.Text = " " + Session["SessionTEmail"];
        }

        protected void btnUploadNot_Click(object sender, EventArgs e)
        {
            try
            {
                string docpath = "";
                if (FileUpload1.HasFile)
                {
                    string path = Server.MapPath("UploadN") + "//" + FileUpload1.PostedFile.FileName;
                    FileUpload1.SaveAs(path);
                    docpath = "~/UploadN/" + FileUpload1.PostedFile.FileName;
                }
                string insertionquery = "insert into TableN(NotName, Notice) values('" + txtNotName.Text + "', '" + docpath + "')";
                cmd = new SqlCommand();
                cmd.CommandText = insertionquery;
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                con.Open();
                int row = cmd.ExecuteNonQuery();
                con.Close();

                if (row > 0)
                {
                    lblMsgUpload.Text = "Notice has been uploaded";
                }
            }

            catch (Exception ex)
            {
                lblMsgUpload.Text = ex.Message;
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