﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmCustomerLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_ServerClick(object sender, EventArgs e)
    {
        string thing = "Things n Stuff";
        txtEmail.Value = thing;
    }
}