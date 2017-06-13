using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class frmNewRequest3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*HtmlGenericControl li = new HtmlGenericControl("li");
            tabs.Controls.Add(li);

            HtmlGenericControl anchor = new HtmlGenericControl("a");
            anchor.Attributes.Add("href", "page.htm");
            anchor.InnerText = "TabX";

            li.Controls.Add(anchor);*/         
        }

        protected void btnSubmit_ServerClick(object sender, EventArgs e)
        {
            // If statements for the active tab
            /*if (tabSmall.isActive)
            {
                Session["SizeType"] = "Small";
            }
            else if (tabMedium.isActive)
            {
                Session["SizeType"] = "Medium";
            }
            else if (tabLarge.isActive)
            {
                Session["SizeType"] = "Large";
            }
            else if (tabVeryLong.isActive)
            {
                Session["SizeType"] = "VeryLong";
            }
            else
            {
                Session["SizeType"] = "None selected";
            }
            */

            Response.Redirect("~/frmNewRequest3.aspx");
        }
    }
}