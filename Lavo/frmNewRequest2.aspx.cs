using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class frmNewRequest3 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
   
        }

        protected void btnSubmit_ServerClick(object sender, EventArgs e)
        {
            //Selected drop down item
            Session["SizeType"] = sizeSelect.SelectedIndex == 0 ? "1" :
                sizeSelect.Items[sizeSelect.SelectedIndex].Value;

            Session["PlateNumber"] = txtVehicleNumber.Value;
            Session["PlateState"] = txtVehicleState.Value;
            Session["Model"] = txtVehicleModel.Value;         
          
            Response.Redirect("~/frmNewRequest3.aspx");
        }
    }
}