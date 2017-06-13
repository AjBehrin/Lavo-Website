using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AfrmSessionTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            lblAddress1.Text = (string)Session["Address1"];
            lblAddress2.Text = (string)Session["Address2"];
            lblCity.Text = (string)Session["City"];
            lblZipcode.Text = (string)Session["Zipcode"];
            lblDate.Text = (string)Session["Date"];
        }
        else
        {
            lblAddress1.Text = "failure";
        }
    }
}