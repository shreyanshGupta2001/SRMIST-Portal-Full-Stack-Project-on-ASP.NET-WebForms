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
    public partial class DisplayStdAssignment : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Server = LAPTOP-SPA4TKP0; Database = SRMIST; Integrated security = true");
            lblMsg.Text = "Welcome " + Session["SessionSName"];
            lblSessionID.Text = " " + Session["SessionSEmail"];
            try
            {
                string readquery = "select * from TableA";
                adapter = new SqlDataAdapter(readquery, con);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

            catch (Exception ex)
            {
                //lblMsg.Text = "<font color='red'>" + ex.Message + "</font>";
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