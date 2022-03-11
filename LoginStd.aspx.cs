using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using DAL;

namespace SRMISTportal
{
    public partial class LoginStd : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Server = LAPTOP-SPA4TKP0; Database = SRMIST; Integrated security = true");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtEmailStd.Text != "" && txtPasswordStd.Text != "")
            {
                string selectquery = "select SName, SEmail, SEmail, SPassword from TableStd where SEmail = '" + txtEmailStd.Text + "'";
                cmd = new SqlCommand();
                cmd.CommandText = selectquery;
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    if (dr.Read())
                    {
                        Session["SessionSName"] = dr["SName"];
                        Session["SessionSEmail"] = dr["SEmail"];
                        Session["SessionSPassword"] = dr["SPassword"];

                        lblMsg.Text = "<font color='green'>You are Logined in</font>";

                        Response.Redirect("LoginStdWelcome.aspx");
                    }
                }
                else
                {
                    lblMsg.Text = "Invalid Email id or Password";
                }
            }
            else
            {
                lblMsg.Text = "<font color='red'>Input fields shouldn't be null</font>";
            }
        }
    }
}