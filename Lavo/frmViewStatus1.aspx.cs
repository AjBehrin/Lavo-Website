using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class frmViewStatus1 : System.Web.UI.Page
{
    //Nunos on page methods
    protected override void OnInit(EventArgs e)
    {
        try
        {

            String previlege = (String)Session["Previlege"];
            if (string.IsNullOrEmpty(previlege))
            {
                Session["Request"] = "frmNewRequest1.aspx";
                Response.Redirect("frmLogin.aspx");
                MessageBox.Show("Name: " + Session["Name"].ToString() + "\nID: " + Session["ID"].ToString());
            }

        }
        catch (Exception ex)
        {
            MessageBox.Show("Exception Occurred\n" + ex.StackTrace);
        }
    }

    protected override void OnLoad(EventArgs e)
    {
        try
        {
            String previlege = (String)Session["Previlege"];
            if (previlege != "User" && previlege != "Admin")
            {
                MessageBox.Show("Not authorized to access page");
                Response.Redirect("frmIndex.aspx");
            }
        }
        catch (Exception ex)
        {
            MessageBox.Show("Exception Occurred\n" + ex.StackTrace);
        }

        //Response based on status from session
        if ((string)Session["CurrrentStatus"] == "Waiting to be processed")
        {
            lblStatus.Text = "Your order was received and will be processed and assigned to one our field teams. You will be notified when the order is initiated and completed.";
        }
        else if ((string)Session["CurrrentStatus"] == "Ready to be initiated")
        {
            lblStatus.Text = "You order has been processed and has been assigned to [insert employee name]. On [insert date] at [insert time], [insert employee name] will travel to your car to perform the requested services: premium package[exterior wash], [rims],[wax], [interior cleaning (optional)] & basic package [exterior wash], [rims]. Response #2 is: We will inform you once [insert employee name] is on his/her way. If you requested interior cleaning [employee name] will meet you at [address] to retrieve the key.";
        }
        else if ((string)Session["CurrentStatus"] == "Traveling to key pick up location")
        {
            lblStatus.Text = "[employee name] is on his/her way to pick up the key at the following address: [address]. Please be ready to meet our agent once notified via e-mail.";
        }
        else if ((string)Session["CurrentStatus"] == "Arrived for key pick up")
        {
            lblStatus.Text = "[Employee] has arrived at [Location] to pick up the car key.";
        }
        else if ((string)Session["CurrentStatus"] == "Arrived for key pick up waiting")
        {
            lblStatus.Text = "[Employee] is waiting for key at  [Location]. Order is being held up until key is obtained.";
        }
        else if ((string)Session["CurrentStatus"] == "Arriving at vehicle location")
        {
            lblStatus.Text = "[Employee] has arrived at vehicle location and has preparing to start washing the car. If [Employee] has any questions further questions regarding vehicle location they will call [customer first name & last name] at [phone number].";
        }
        else if ((string)Session["CurrentStatus"] == "Searching for vehicle")
        {
            lblStatus.Text = "The [employee] is having issues finding your vehicle. [employee name] will call you in order to obtain more details about your vehicle and/or location parked.";
        }
        else if ((string)Session["CurrentStatus"] == "Traveling to drop off key location")
        {
            lblStatus.Text = "[Employee] has finished washing the vehicle and is traveling to the [Key Drop Off Location]. If this needs to be changed or updated please call {employee name] at [Employee phone number].";
        }
        else if ((string)Session["CurrentStatus"] == "Arrived for key drop off")
        {
            lblStatus.Text = "[Employee] has arrived at [address]. Please meet our associate at your earliest convenience.";
        }
        else if ((string)Session["CurrentStatus"] == "Waiting for key drop off")
        {
            lblStatus.Text = "[Employee] is at the [key drop location] and is being held up until key is dropped off.";
        }
        else if ((string)Session["CurrentStatus"] == "Job completed successfully")
        {
            lblStatus.Text = "Thank you for using Lavo to wash your car, [customer name]. Please take a minute from your time to rate our service and describe your experience with Lavo by clicking [here, insert link].";
        }
        else if ((string)Session["CurrentStatus"] == "Delay due to traffic")
        {
            lblStatus.Text = "[employee] is being held up due to traffic, we apologize for the inconvenience.";
        }
        else if ((string)Session["CurrentStatus"] == "Cancel at customer request")
        {
            lblStatus.Text = "Your order has been canceled at your request. You will be contacted by customer representative to assess the cause and follow up.  Feel free to express any concerns.";
        }
        else if ((string)Session["CurrentStatus"] == "Delay due to unexpected cause")
        {
            lblStatus.Text = "Due to an unexpected cause [employee name] is experiencing delays.We are currently assessing the occurrence and will send another team if needed necessary. We apologize for the inconvenience.";
        }
        else
        {
            lblStatus.Text = "No update currently available.  Please contact support if the issue persists. " + "This feature is also under construction, your patience is appreciated.";
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

            

        
    }
}