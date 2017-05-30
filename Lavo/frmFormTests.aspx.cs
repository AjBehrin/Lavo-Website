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
        int num1 = 0, num2 = 0, numAnswer = 0;

        string number1 = txtNum1.Value;
        string number2 = txtNum2.Value;

        if(int.TryParse(number1, out num1))
        {

        }
        else
        {
            txtNum1.Value = "Failure";
        }
        if(int.TryParse(number2, out num2))
        {

        }
        else
        {
            txtNum2.Value = "Failure";
        }

        numAnswer = num1 * num2;

        txtNumAnswer.Value = numAnswer.ToString();
        lblAnswer.Text = numAnswer.ToString();
    }
}