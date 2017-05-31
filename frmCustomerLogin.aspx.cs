using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmCustomerLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblError.Text = "Please enter your email and password. ";
    }

    protected void btnLogin_ServerClick(object sender, EventArgs e)
    {
        string errorMsg = "";
        Boolean validatedState = true;

        if (string.IsNullOrWhiteSpace(txtEmail.Value))
        {
            errorMsg = errorMsg + "Please enter a valid email";
            validatedState = false;
            //Possibly change form control color here?
        }
        else
        {

        }

        if (string.IsNullOrWhiteSpace(txtPassword.Value))
        {
            errorMsg = errorMsg + "Please enter a valid email";
            validatedState = false;
            //Possibly change form control color here?
        }
        else
        {

        }

        if (validatedState == true)
        {
            Session["txtEmail"] = txtEmail.Value;
            Session["txtPassword"] = txtPassword.Value;
        }
        else
        {
            lblError.Text = errorMsg;
        }

        //New Data Layer object
        clsDataLayer myDataLayer = new clsDataLayer();

        //New boolean for success
        bool isValidUser = myDataLayer.ValidateUser(txtEmail.Value, txtPassword.Value);

        //Check if the log-in information was valid
        if (isValidUser)
        {
            //Redirect Here
            Response.Redirect("~/frmMain.aspx");
        }
        else
        {
            //Set error feedback
            lblError.Text = "The Email and / or Password supplied is incorrect. Please try again.";
        }
    }
}