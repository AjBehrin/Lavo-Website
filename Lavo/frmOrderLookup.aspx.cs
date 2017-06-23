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
        StringBuilder str = new StringBuilder();

        if(!Page.IsPostBack)
        {
            str = myDataLayer.requestLookup(ID);
            PlaceHolderRequestsTable.Controls.Add(new Literal { Text = str.ToString() });
        }
    }
}