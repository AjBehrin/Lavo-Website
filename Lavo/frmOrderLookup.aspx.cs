using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmOrderLookup : System.Web.UI.Page
{

    clsDataLayer myDataLayer = new clsDataLayer();

    protected void Page_Load(object sender, EventArgs e)
    {
        long custID = (long)Session["ID"] ;
        string ID = custID.ToString();
        string address = (string)Session["FormattedDate"];
        StringBuilder strRequest = new StringBuilder();
        StringBuilder strAddress = new StringBuilder();
        StringBuilder strVehicle = new StringBuilder();

        if (!Page.IsPostBack)
        {
            //Building request table
            strRequest = myDataLayer.requestLookup(ID);
            PlaceHolderRequestsTable.Controls.Add(new Literal { Text = strRequest.ToString() });

            //Building address table
            strAddress = myDataLayer.addressLookup(ID);
            PlaceHolderAddressTable.Controls.Add(new Literal { Text = strAddress.ToString() });

            //Building vehicle table
            strVehicle = myDataLayer.vehicleLookup(ID);
            PlaceHolderVehiclesTable.Controls.Add(new Literal { Text = strVehicle.ToString() });
        }
    }

    //Next page button click
    protected void btnNext_ServerClick(object sender, EventArgs e)
    {
        Response.Redirect("~/frmNewRequest6.aspx");
    }
}