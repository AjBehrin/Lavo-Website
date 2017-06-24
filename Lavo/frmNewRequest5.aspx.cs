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
        clsDataLayer myDataLayer = new clsDataLayer();

        string vehicleSaved = "0";
        string vehiclePrimary = "0";
        long custID;
        string ID;


        protected void Page_Load(object sender, EventArgs e)
        {
            custID = (long)Session["ID"];
            ID = custID.ToString();

            //Request / Vehicle / Car Location Information
            string date = (string)Session["Date"];
            string size = (string)Session["SizeType"];
            string service = (string)Session["Package"];
            string address1 = (string)Session["Address1"];
            string address2 = (string)Session["Address2"];
            string city = (string)Session["City"];
            string zipCode = (string)Session["Zipcode"];
            string timeSlot = (string)Session["TimeSlot"];
            string plateNum = (string)Session["PlateNumber"];
            string plateState = (string)Session["PlateState"];
            string model = (string)Session["Model"];

            //Key pickup / dropoff information
            string pickUpAddress = (string)Session["PickUpAddress"];
            string pickUpCity = (string)Session["PickUpCity"];
            string pickUpZip = (string)Session["PickUpZipcode"];
            string dropOffAddress = (string)Session["DropOffAddress"];
            string dropOffCity = (string)Session["DropOffCity"];
            string dropOffZip = (string)Session["DropOffZipcode"];

            if (!Page.IsPostBack)
            {
                //If statements for setting size label
                if((string)Session["SizeType"] == "1")
                {
                    lblSize.Text = "Small";
                }
                else if((string)Session["SizeType"] == "2")
                {
                    lblSize.Text = "Medium";
                }
                else if((string)Session["SizeType"] == "3")
                {
                    lblSize.Text = "Large";
                }
                else if((string)Session["SizeType"] == "4")
                {
                    lblSize.Text = "Very Long";
                }
                else
                {
                    lblSize.Text = "N/A";
                }

                //Getting request information
                lblDate.Text = date;
                //lblSize.Text = size;
                lblPackage.Text = service;
                lblAddress1.Text = address1;
                lblAddress2.Text = address2;
                lblCity.Text = city;
                lblZipcode.Text = zipCode;
                lblTime.Text = timeSlot;
                lblPlateNumber.Text = plateNum;
                lblPlateState.Text = plateState;
                lblModel.Text = model;

                lblCustomerID.Text = ID;   

                //Getting key pick up / drop off info
                lblPickUpAddress.Text = pickUpAddress;
                lblPickUpCity.Text = pickUpCity;
                lblPickUpZipcode.Text = pickUpZip;
                lblDropOffAddress.Text = dropOffAddress;
                lblDropOffCity.Text = dropOffCity;
                lblDropOffZipcode.Text = dropOffZip;
            }

        }

        protected void btnSubmit_ServerClick(object sender, EventArgs e)
        {
            string address = lblAddress1.Text + " " + lblAddress2.Text;
            string date = lblDate.Text;
            string time = lblTime.Text;
            string formatDate = date + " " + time;
            string status = "Waiting to be processed";
            string performance = "5";

            Session["CurrentStatus"] = status;

            //Methods to fill the requested order below
            myDataLayer.NewRequestCarLocationAddress(address, lblCity.Text, lblZipcode.Text, ID);

            //Retrieve the addressID
            string addressID = myDataLayer.retrieveAddressID(ID, address).ToString();

            myDataLayer.NewRequestVehicleInfo(lblPlateNumber.Text, lblPlateState.Text, lblModel.Text, (string)Session["SizeType"], vehicleSaved, vehiclePrimary, ID);

            //Retrieve the vehicleID
            string vehicleID = myDataLayer.retrieveVehicleID(ID, lblPlateNumber.Text).ToString();
                              
            //If the interior cleaning is selected
            if ((string)Session["Package"] == "premiumOption")
            {
                myDataLayer.NewRequestKeyPickUpAddress(lblPickUpAddress.Text, lblPickUpCity.Text, lblPickUpZipcode.Text, ID);
                myDataLayer.NewRequestKeyDropOffAddress(lblDropOffAddress.Text, lblDropOffCity.Text, lblDropOffZipcode.Text, ID);

                string pickupID = myDataLayer.retrieveAddressID(ID, lblPickUpAddress.Text).ToString();
                string dropoffID = myDataLayer.retrieveAddressID(ID, lblDropOffAddress.Text).ToString();

                myDataLayer.NewRequestOrderPremium(formatDate, lblPackage.Text, status, performance, pickupID, dropoffID, addressID, vehicleID, ID);
            }
            else
            {
                myDataLayer.NewRequestOrder(formatDate, lblPackage.Text, status, performance, addressID, vehicleID, ID);
            }

            
            //Redirect to payment page
            Response.Redirect("~/frmOrderLookup.aspx");
        }

        protected void btnPrevious_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("~/frmNewRequest1.aspx");
        }

        protected void btnCancel_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("~/frmIndex.aspx");
        }
    }
}