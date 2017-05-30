using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
using System.Net;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for clsDataLayer
/// </summary>
/// 

public class clsDataLayer
{   
    MySqlConnection dbConnection;

    // Constructor 
    public clsDataLayer()
    {
        // Constructor with connection string
        MySqlConnection dbConnection = new MySqlConnection();
        dbConnection.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();
    }

    // Method to fill a dataset with all requests
    public dsLavo GetAllRequests()
    {
        //Building SQL select statement
        MySqlDataAdapter sqlDataAdapter = new MySqlDataAdapter("select * from requests;", dbConnection);

        //Method to fill the dataset
        dsLavo myDataSet = new dsLavo();
        sqlDataAdapter.Fill(myDataSet.requests);

        //Return the dataset
        return myDataSet;
    }

    // Method to fill a dataset with all washers
    public dsLavo GetAllWashers()
    {
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();

        //Building SQL select statement
        MySqlDataAdapter sqlDataAdapter = new MySqlDataAdapter("select username, name, phone, email from washers", con);

        //Method to fill the dataset
        dsLavo myDataSet = new dsLavo();
        sqlDataAdapter.Fill(myDataSet);
        //sqlDataAdapter.Fill(myDataSet.washers);

        //Return the dataset
        return myDataSet;
    }

    public void InsertCustomer(string name, string address, string city, string state, string zipcode, string phone, string email, string password)
    {
        //Set DB connection string
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();

        //Open DB connection
        con.Open();

        //New DB command
        string sqlStmt = "INSERT INTO customers (name, address, city, state, zipcode, phone, email, password) ";
        sqlStmt += "VALUES (@Name, @Address, @City, @State, @Zipcode, @Phone, @Email, @Password)";
        MySqlCommand cmd = new MySqlCommand(sqlStmt, con);

        //Inserting new user information
        MySqlParameter param = new MySqlParameter("@Email", email);
        cmd.Parameters.Add(param);

        cmd.Parameters.Add(new MySqlParameter("@Name", name));
        cmd.Parameters.Add(new MySqlParameter("@Address", address));
        cmd.Parameters.Add(new MySqlParameter("@City", city));
        cmd.Parameters.Add(new MySqlParameter("@State", state));
        cmd.Parameters.Add(new MySqlParameter("@Zipcode", zipcode));
        cmd.Parameters.Add(new MySqlParameter("@Phone", phone));
        cmd.Parameters.Add(new MySqlParameter("@Password", password));

        //Execute the query
        cmd.ExecuteNonQuery();

        //Close DB connection
        con.Close();
    }
}
