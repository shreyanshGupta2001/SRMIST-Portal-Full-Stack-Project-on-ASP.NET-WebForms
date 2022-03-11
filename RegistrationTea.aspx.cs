using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace SRMISTportal
{
    public partial class RegistrationTea : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitTea_Click(object sender, EventArgs e)
        {
            try
            {
                DAL.View teaview = new DAL.View()
                {
                    TName = txtNameTea.Text,
                    TEmail = txtEmailTea.Text,
                    TPassword = txtPasswordTea.Text
                };
                SaveData teasave = new SaveData();
                teasave.TeaInsert(teaview);

                lblMsg.Text = "Teacher Registered";

            }

            catch(Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }
    }
}