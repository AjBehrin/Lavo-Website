using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmFormTests : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnMulti_ServerClick(object sender, EventArgs e)
    {
        int num1, num2, numAnswer;

        if(int.TryParse(txtNum1.Value, out num1))
        {

        }
        else
        {
            txtNum1.Value = "Failure";
        }
        if(int.TryParse(txtNum2.Value, out num2))
        {

        }
        else
        {
            txtNum2.Value = "Failure";
        }

        numAnswer = num1 * num2;

        txtNumAnswer.Value = numAnswer.ToString();
        txtAnswer2.Text = numAnswer.ToString();
    }
}