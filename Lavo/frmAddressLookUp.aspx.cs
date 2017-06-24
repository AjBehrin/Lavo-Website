using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmAddressLookUp : System.Web.UI.Page
{
    clsDataLayer myDataLayer = new clsDataLayer();

    protected void Page_Load(object sender, EventArgs e)
    {
        long custID = 1;//(long)Session["ID"]
        string ID = custID.ToString();
        string address = "2345 Dunno St.";
        StringBuilder strAddress = new StringBuilder();
        StringBuilder strVehicle = new StringBuilder();

        if (!Page.IsPostBack)
        {
            strAddress = myDataLayer.addressLookup(ID);
            PlaceHolderAddressTable.Controls.Add(new Literal { Text = strAddress.ToString() });

            strVehicle = myDataLayer.vehicleLookup(ID);
            PlaceHolderVehiclesTable.Controls.Add(new Literal { Text = strVehicle.ToString() });

            lblAddressID.Text = myDataLayer.retrieveAddressID(ID, address).ToString();
        }
    }
}