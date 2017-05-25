using System;
using System.Collections.Generic;
using System.Configuration;
using MySql.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using MySql.Data.MySqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmTableTest : System.Web.UI.Page
{
    //Building String for the Customers Table
    StringBuilder customersTable = new StringBuilder();

    protected void Page_Load(object sender, EventArgs e)
    {
        //Bind the WashersGridView on page load
        BindWashersGridView();
        //CheckMysqlConnection();

        if (!Page.IsPostBack)
        {
            MySqlConnection con = new MySqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = "SELECT * FROM customers";
            cmd.Connection = con;
            MySqlDataReader dr = cmd.ExecuteReader();
            customersTable.Append("<table class=\"table table-bordered\">");
            customersTable.Append("<thead><tr><th>CustomerID</th><th>Name</th><th>Address</th><th>City</th><th>State</th><th>Zipcode</th><th>Phone</th><th>Email</th><th>Join Date</th>");
            customersTable.Append("</tr></thead>");

            if (dr.HasRows)
            {
                //Move through existing rows
                while (dr.Read())
                {
                    customersTable.Append("<tbody><tr>");
                    customersTable.Append("<td>" + dr[0] + "</td>");
                    customersTable.Append("<td>" + dr[1] + "</td>");
                    customersTable.Append("<td>" + dr[2] + "</td>");
                    customersTable.Append("<td>" + dr[3] + "</td>");
                    customersTable.Append("<td>" + dr[4] + "</td>");
                    customersTable.Append("<td>" + dr[5] + "</td>");
                    customersTable.Append("<td>" + dr[6] + "</td>");
                    customersTable.Append("<td>" + dr[7] + "</td>");
                    customersTable.Append("<td>" + dr[8] + "</td>");
                    customersTable.Append("</tr></tbody>");
                }
            }

            customersTable.Append("</table>");
            PlaceHolderCustomersTable.Controls.Add(new Literal { Text = customersTable.ToString() });
            dr.Close();

        }
    }

    //Method to bind the washers gridview
    private dsLavo BindWashersGridView()
    {
        //New Data Layer Object
        clsDataLayer myDataLayer = new clsDataLayer();

        //Call the GetAllWashers Method
        dsLavo washersListing = myDataLayer.GetAllWashers();

        //Retrieve the data
        gvWashers.DataSource = washersListing.washers;

        //Bind the data
        gvWashers.DataBind();
        Cache.Insert("LavoDataSet", washersListing);

        return washersListing;
    }

    private void WashersGridView()
    {
        clsDataLayer myDataLayer = new clsDataLayer();

        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();
        

    }

    /*Another Method
    private void CheckMysqlConnection()
    {
        using (MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["lavoConnectionStringTest"].ToString()))
        {
            con.Open();
            StringBuilder output = new StringBuilder();
            output.Append("<h1>Connection Successful</h1>");
            PlaceHolderCustomersTable.Controls.Add(new Literal { Text = output.ToString() });
        }
    }*/
}