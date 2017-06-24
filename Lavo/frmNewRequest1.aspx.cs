using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class frmNewRequest1 : System.Web.UI.Page
    {
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