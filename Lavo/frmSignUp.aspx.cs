using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmSignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddUser_ServerClick(object sender, EventArgs e)
    {
        //boolean for success or fail
        bool addUserError = false;

        //Database path
        clsDataLayer myDataLayer = new clsDataLayer();

        //Try and catch block for adding new user
        try
        {
            //Call add user method
            myDataLayer.InsertCustomer(txtName.Value, txtAddress.Value, txtCity.Value, txtState.Value, txtZipcode.Value, txtPhone.Value, txtEmail.Value, txtPassword.Value);
        }
        catch (Exception error)
        {
            addUserError = true;
            string message = "Error adding new user to the database, check form data. ";
            lblError.Text = message + error.Message;
        }

        if(!addUserError)
        {
            lblError.Text = "User Added Successfully";
        }
    }
}