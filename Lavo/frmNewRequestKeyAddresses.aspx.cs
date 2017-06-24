using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmNewRequestKeyAddresses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_ServerClick(object sender, EventArgs e)
    {
        Session["PickUpAddress"] = txtPickUpAddress.Value;
        Session["PickUpCity"] = txtPickUpCity.Value;
        Session["PickUpZipcode"] = txtPickUpZipcode.Value;
        Session["DropOffAddress"] = txtDropOffAddress.Value;
        Session["DropOffCity"] = txtDropOffCity.Value;
        Session["DropOffZipcode"] = txtDropOffZipcode.Value;

        Response.Redirect("~/frmNewRequest4.aspx");
    }

    protected void btnSameAddress_ServerClick(object sender, EventArgs e)
    {
        txtDropOffAddress.Value = txtPickUpAddress.Value;
        txtDropOffCity.Value = txtPickUpCity.Value;
        txtDropOffZipcode.Value = txtPickUpZipcode.Value;
    }
}