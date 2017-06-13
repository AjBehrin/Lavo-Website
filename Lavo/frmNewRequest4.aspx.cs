using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class EnterAddressForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_ServerClick(object sender, EventArgs e)
        {
            Session["Address1"] = txtReqAddress1.Value;
            Session["Address2"] = txtReqAddress2.Value;
            Session["City"] = txtCity.Value;
            Session["Zipcode"] = txtZipCode.Value;

            Response.Redirect("~/frmNewRequest5.aspx");
        }
    }
}