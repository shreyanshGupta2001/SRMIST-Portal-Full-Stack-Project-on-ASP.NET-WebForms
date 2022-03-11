using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace SRMISTportal
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitStd_Click(object sender, EventArgs e)
        {
            try
            {
                DAL.View stdview = new DAL.View()
                {
                    SName = txtNameStd.Text,
                    SEmail = txtEmailStd.Text,
                    SPassword = txtPasswordStd.Text
                };
                SaveData stdsave = new SaveData();
                stdsave.StdInsert(stdview);

                lblMsg.Text = "Student Registered";
            }

            catch(Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }
    }
}