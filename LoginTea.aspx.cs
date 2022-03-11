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
    public partial class LoginTea : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Server = LAPTOP-SPA4TKP0; Database = SRMIST; Integrated security = true");
        }

        protected void btnLoginTea_Click(object sender, EventArgs e)
        {
            if (txtEmailTea.Text != "" && txtPasswordTea.Text != "")
            {
                string selectquery = "select TName, TEmail, TEmail, TPassword from TableTea where TEmail = '" + txtEmailTea.Text + "'";
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
                        Session["SessionTName"] = dr["TName"];
                        Session["SessionTEmail"] = dr["TEmail"];
                        Session["SessionTPassword"] = dr["TPassword"];

                        lblMsg.Text = "<font color='green'>You are Logined in</font>";

                        if(Session["SessionTEmail"].ToString() == "jitender@mail.com")
                        {
                            Response.Redirect("LoginWelcomeDean.aspx");
                        }
                        else
                        {
                            Response.Redirect("LoginTeaWelcome.aspx");
                        }
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