using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class frmNewRequest6 : System.Web.UI.Page
    {
        clsDataLayer myDataLayer;

        protected void Page_Load(object sender, EventArgs e)
        {
            long custID;
            string ID;

            custID = (long)Session["ID"];
            ID = custID.ToString();

            if (!Page.IsPostBack)
            {
                //Getting request information
                lblDate.Text = (string)Session["Date"];
                lblSize.Text = (string)Session["SizeType"];
                lblPackage.Text = (string)Session["Package"];
                lblAddress1.Text = (string)Session["Address1"];
                lblAddress2.Text = (string)Session["Address2"];
                lblCity.Text = (string)Session["City"];
                lblZipcode.Text = (string)Session["Zipcode"];
                lblTime.Text = (string)Session["TimeSlot"];
                lblPlateNumber.Text = (string)Session["PlateNumber"];
                lblPlateState.Text = (string)Session["PlateState"];
                lblModel.Text = (string)Session["Model"];

                lblCustomerID.Text = ID;   

                //Getting key pick up / drop off info
                lblPickUpAddress.Text = (string)Session["PickUpAddress"];
                lblPickUpCity.Text = (string)Session["PickUpCity"];
                lblPickUpZipcode.Text = (string)Session["PickUpZipcode"];
                lblDropOffAddress.Text = (string)Session["DropOffAddress"];
                lblDropOffCity.Text = (string)Session["DropOffCity"];
                lblDropOffZipcode.Text = (string)Session["DropOffZipcode"];
            }

        }

        protected void btnSubmit_ServerClick(object sender, EventArgs e)
        {
            //myDataLayer.NewRequestAddress(lblAddress1.Text += lblAddress2.Text, lblCity.Text, lblZipcode.Text, lblCustomerID.Text);

            //If the interior cleaning is selected
            if ((string)Session["Package"] == "premiumOption")
            {
                //myDataLayer.NewRequestKeyAddresses(lblPickUpAddress.Text, lblPickUpCity.Text, lblPickUpZipcode.Text, lblDropOffAddress.Text, lblDropOffCity.Text, lblDropOffZipcode.Text, lblCustomerID.Text);
            }

                Response.Redirect("~/frmNewRequest6.aspx");
        }

        protected void btnPrevious_ServerClick(object sender, EventArgs e)
        {

            Response.Redirect("~/frmNewRequest1.aspx");
        }
    }
}