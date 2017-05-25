using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmAnotherFormTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCalc_Click(object sender, EventArgs e)
    {
        int num1, num2, numAnswer;

        if (int.TryParse(txtNum1.Text, out num1))
        {

        }
        else
        {
            txtNum1.Text = "Failure";
        }
        if (int.TryParse(txtNum2.Text, out num2))
        {

        }
        else
        {
            txtNum2.Text = "Failure";
        }

        numAnswer = num1 * num2;

        txtAnswer.Text = numAnswer.ToString();      
    }
}