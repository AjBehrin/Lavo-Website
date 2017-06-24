using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace WebApplication2
{
    public partial class frmNewRequest1 : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            try
            {

                String previlege = (String)Session["Previlege"];
                if (string.IsNullOrEmpty(previlege))
                {
                    Session["Request"] = "frmNewRequest1.aspx";
                    Response.Redirect("frmLogin.aspx");
                    MessageBox.Show("Name: " + Session["Name"].ToString() + "\nID: " + Session["ID"].ToString());
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("Exception Occurred\n" + ex.StackTrace);
            }
        }

        protected override void OnLoad(EventArgs e)
        {
            try
            {
                String previlege = (String)Session["Previlege"];
                if (previlege != "User" && previlege != "Admin")
                {
                    MessageBox.Show("Not authorized to access page");
                    Response.Redirect("frmIndex.aspx");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Exception Occurred\n" + ex.StackTrace);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {


            
        }

        protected void btnSubmit_ServerClick(object sender, EventArgs e)
        {
            Session["Date"] = txtDate.Value.Trim();
            Session["TimeSlot"] = timeSelect.SelectedIndex == 0 ? "07:00:00" :
                timeSelect.Items[timeSelect.SelectedIndex].Value;

            Response.Redirect("~/frmNewRequest2.aspx");
        }
    }
}