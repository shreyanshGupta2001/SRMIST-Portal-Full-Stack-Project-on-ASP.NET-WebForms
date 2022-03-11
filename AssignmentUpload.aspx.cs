using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SRMISTportal
{
    public partial class AssignmentUpload : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Server = LAPTOP-SPA4TKP0; Database = SRMIST; Integrated security = true");
            LblMsg.Text = "Welcome " + Session["SessionTName"];
            LblSessionID.Text = " " + Session["SessionTEmail"];
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            try
            {
                string docpath = "";
                if (FileUpload1.HasFile)
                {
                    string path = Server.MapPath("UploadA") + "//" + FileUpload1.PostedFile.FileName;
                    FileUpload1.SaveAs(path);
                    docpath = "~/UploadA/" + FileUpload1.PostedFile.FileName;
                }
                string insertionquery = "insert into TableA(SubName, Assignment) values('" + txtSubName.Text + "', '" + docpath + "')";
                cmd = new SqlCommand();
                cmd.CommandText = insertionquery;
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                con.Open();
                int row = cmd.ExecuteNonQuery();
                con.Close();

                if (row > 0)
                {
                    lblMsgAssign.Text = "Assignment has been uploaded";
                }
            }

            catch (Exception ex)
            {
                lblMsgAssign.Text = ex.Message;
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