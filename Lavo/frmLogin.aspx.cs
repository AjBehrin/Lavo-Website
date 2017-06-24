using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace WebApplication2
{
    public partial class Login : System.Web.UI.Page
    {
        clsDataLayer DL;

        protected void Page_Load(object sender, EventArgs e)
        {
            DL = new clsDataLayer();
        }

        protected void btnLogin_ServerClick(object sender, EventArgs e)
        {
            try
            {
                String txtLogin = txtLoginEmail.Value.Trim();
                String txtPassword = txtLoginPassword.Value.Trim();
                if (!DL.authenticate(txtLogin, txtPassword))
                {
                    lblErrorMessage.Text = "Username/Password doesn't match our records or system is unavailable.If problem persists please contact us ";
                    return;
                }
                else
                {
                    string name = DL.getName();
                    long id = DL.getID();
                    string title = DL.getPrevilege();

                    switch (title)
                    {

                        case "Customer":

                            Session["Previlege"] = "User";
                            Session["Name"] = name;
                            Session["ID"] = id;
                            String requestedPage = (string)Session["Request"];
                            MessageBox.Show("Welcome back " + (string)Session["Name"] + "!\nYour requested page is :" + (string)Session["Request"]);
                            if (!String.IsNullOrEmpty(requestedPage))
                            {
                                Response.Redirect("frmNewRequest1.aspx");
                                //HttpContext.Current.Response.Redirect(requestedPage, false);
                                //HttpContext.Current.ApplicationInstance.CompleteRequest();
                            }
                            else
                            {
                                Response.Redirect("frmNewRequest1.aspx");
                                //FormsAuthentication.RedirectFromLoginPage(txtLogin, chkRememberMe.Checked);
                            }

                            break;
                        case "Other":

                            Session["Previlege"] = "User";
                            Session["Name"] = name;
                            Session["ID"] = id;
                            requestedPage = (string)Session["Request"];
                            MessageBox.Show("Welcome back " + (string)Session["Name"] + "!");
                            if (!String.IsNullOrEmpty(requestedPage))
                            {

                                Response.Redirect(requestedPage);
                            }
                            else
                            {

                                FormsAuthentication.RedirectFromLoginPage(txtLogin, chkRememberMe.Checked);
                            }
                            break;
                        case "Washer":

                            Session["Previlege"] = "Washer";
                            Session["Name"] = name;
                            Session["ID"] = id;
                            MessageBox.Show("Welcome back " + (string)Session["Name"] + "!");
                            Response.Redirect("frmDownloadApp2.aspx", false);
                            HttpContext.Current.ApplicationInstance.CompleteRequest();
                            break;

                        case "Customer Rep":

                            Session["Previlege"] = "Admin";
                            Session["Name"] = name;
                            Session["ID"] = id;
                            MessageBox.Show("Welcome back " + (string)Session["Name"] + "!");
                            Response.Redirect("frmManageOrders.aspx");

                            break;
                        default:
                            lblErrorMessage.Text = "Email or Password is incorrect. Please try again and contact us if problem persists and we will glad to help you";
                            return;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("2. Authentication Failure\nError code: " + ex.StackTrace, "Authentication failure", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        protected void btnSignUp_ServerClick(object sender, EventArgs e)
        {
            if (!txtSignupPassword.Value.Equals(txtSignupPassword2.Value))
            {
                lblErrorMessage.Text = "Password does not match in both fields.";
                return;
            }
            String email = txtSignupEmail.Value;
            if (DL.lookupExisting(email))
            {
                lblErrorMessage.Text = "Email already registered in our records.";
                return;
            }
            else
            {
                String password = txtSignupPassword.Value;
                String name = txtName.Value;
                String phone = txtPhone.Value;
                String address = txtAddress.Value;

                if (string.IsNullOrEmpty(address))
                {
                    address = "0";
                }
                String city = txtCity.Value;
                if (string.IsNullOrEmpty(city))
                {
                    city = "0";
                }
                String zip = txtZipcode.Value;
                if (string.IsNullOrEmpty(zip))
                {
                    zip = "0";
                }
                String state = txtState.Value;
                if (string.IsNullOrEmpty(state))
                {
                    state = "0";
                }

                try
                {
                    if (DL.addUser(email, password, name, phone, address, city, state, zip))
                    {

                        MessageBox.Show("Success! Your account has been created");
                        lblErrorMessage.Text = "Try logging in now";
                        //actSignup.Visible = false;
                    }
                    else
                    {
                        lblErrorMessage.Text = "Error submitting request, please restart browser and try again.";
                        MessageBox.Show("4. Sign Up Failure\nError code: " + DL.getError());

                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("5. Sign Up Failure\nError code: " + ex.StackTrace);


                }
            }

        }

        /*Extra authentication method that was included
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

            dsLavo dsUserLogin;
            string previlege;
            //calls a function 'clsDataLayer' which will verify if user's credentials are on the dataset
            dsUserLogin = clsDataLayer.verifyUser(Server.MapPath("helios.secondmoonsoftware.com), Login1.Username, Login1.Password);

            // if credentials don't match records
            if (dsUserLogin.tblUserLogin.Count < 1)
            {
                e.Authneticated = false;
                Login1.FailureText = Login1.FaulreText + "\n Your credentails don't match our records";
            }
            //if the user is a washer
            else if (dsUserLogin.tblUserLogin[0].Title.ToString() == "washer")
            {
                e.Authenticated = true;
                Session["Previlege"] = "washer";
                FormsAuthentication.RedirectFromLoginPage(frmDownloadApp2.aspx);
                //if the user is a customer rep it will be redirected to the clerk first page
            }
            else if (dsUserLogin.tblUserLogin[0].Title.ToString() == "customer rep")
            {
                e.Authenticated = true;
                Session["previlege"] = "customer rep";
                FormsAuthentication.RedirectFromLoginPage(frmManageOrders.aspx);
            }
            //if the user is a customer or an employee wihtout previlege that person is redirected to where it came from before log in
            else{
                    e.Authenticated = true;
                    Session["previlege"] = "user";
                    FormsAuthentication.RedirectFromLoginPage(Login1.Username, false);
                }
            }*/

    }
    }