using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class frmNewRequest31 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_ServerClick(object sender, EventArgs e)
        {          
            Session["Package"] = packageSelect.SelectedIndex == 0 ? "uninformed" :
                packageSelect.Items[packageSelect.SelectedIndex].Value;

            if(packageSelect.Items[packageSelect.SelectedIndex].Value == "premiumOption")
            {
                Response.Redirect("~/frmNewRequestKeyAddresses.aspx");
            }
            else
            {
                Session["PickUpAddress"] = "N/A";
                Session["PickUpCity"] = "N/A";
                Session["PickUpZipcode"] = "N/A";
                Session["DropOffAddress"] = "N/A";
                Session["DropOffCity"] = "N/A";
                Session["DropOffZipcode"] = "N/A";

                Response.Redirect("~/frmNewRequest4.aspx");
            }           
        }
    }
}