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
        //Constructor with connection string
        dbConnection = new MySqlConnection();
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

        //New SQL statement
        string sqlStmt = "INSERT INTO customers (name, address, city, state, zipcode, phone, email, password) ";
        sqlStmt += "VALUES (@Name, @Address, @City, @State, @Zipcode, @Phone, @Email, @Password)";

        //New DB command
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

    //Method to validate an existing user
    public bool ValidateUser(string email, string password)
    {
        //New DB connection
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();

        //Open DB connection
        con.Open();

        //Building SQL statement
        string sqlStmt = "SELECT * FROM customers WHERE email = @email AND password = @password";

        //New mySQL command
        MySqlCommand dbCommand = new MySqlCommand(sqlStmt, con);

        //Adding the parameters
        dbCommand.Parameters.Add(new MySqlParameter("@email", email));
        dbCommand.Parameters.Add(new MySqlParameter("@password", password));

        //New data reader object
        MySqlDataReader dr = dbCommand.ExecuteReader();

        //Boolean for success
        Boolean isValidAccount = dr.Read();

        con.Close();

        return isValidAccount;
    }

    //Methods for processing a new request below
    //New request adding address
    public void NewRequestAddress(string address, string city, string zipcode, string custID)
    {
        //Open DB connection
        dbConnection.Open();

        //Building SQL statement
        string sqlStmt = "INSERT INTO addresses (address, city, zipcode, customerID) ";
        sqlStmt += "VALUES (@Address, @City, @Zipcode, @CustomerID)";

        //New mySQL command
        MySqlCommand dbCommand = new MySqlCommand(sqlStmt, dbConnection);

        //Adding parameters
        MySqlParameter param = new MySqlParameter("@Address", address);
        dbCommand.Parameters.Add(param);

        dbCommand.Parameters.Add(new MySqlParameter("@City", city));
        dbCommand.Parameters.Add(new MySqlParameter("@Zipcode", zipcode));
        dbCommand.Parameters.Add(new MySqlParameter("@CustomerID", custID));

        //Execute the query
        dbCommand.ExecuteNonQuery();

        //Close DB connection
        dbConnection.Close();
    }

    //New request 
    public void NewRequestKeyAddresses(string pickUpAddress, string pickUpCity, string pickUpZipcode, string dropOffAddress, string dropOffCity, string dropOffZipcode, string custID)
    {
            //Open DB connection
            dbConnection.Open();

            //Building SQL statement
            string sqlStmt = "INSERT INTO addresses (address, city, zipcode, customerID) ";
            sqlStmt += "VALUES (@Address, @City, @Zipcode, @CustomerID)";

            //New mySQL command
            MySqlCommand dbCommand = new MySqlCommand(sqlStmt, dbConnection);

            //Adding parameters
            MySqlParameter param = new MySqlParameter("@Address", pickUpAddress);
            dbCommand.Parameters.Add(param);

            dbCommand.Parameters.Add(new MySqlParameter("@City", pickUpCity));
            dbCommand.Parameters.Add(new MySqlParameter("@Zipcode", pickUpZipcode));
            dbCommand.Parameters.Add(new MySqlParameter("@CustomerID", custID));

            //Execute the query
            dbCommand.ExecuteNonQuery();

            //Close DB connection
            dbConnection.Close();

            //Open DB connection
            dbConnection.Open();

            //Building SQL statement
            string sqlStmt2 = "INSERT INTO addresses (address, city, zipcode, customerID) ";
            sqlStmt2 += "VALUES (@Address, @City, @Zipcode, @CustomerID)";

            //New mySQL command
            MySqlCommand dbCommand2 = new MySqlCommand(sqlStmt2, dbConnection);

            //Adding parameters
            MySqlParameter param2 = new MySqlParameter("@Address", dropOffAddress);
            dbCommand.Parameters.Add(param2);

            dbCommand.Parameters.Add(new MySqlParameter("@City", dropOffCity));
            dbCommand.Parameters.Add(new MySqlParameter("@Zipcode", dropOffZipcode));
            dbCommand.Parameters.Add(new MySqlParameter("@CustomerID", custID));

            //Execute the query
            dbCommand.ExecuteNonQuery();

            //Close DB connection
            dbConnection.Close();       
    }


    //Retired methods below
    /*//Method for new requests - Date / Time?
    public void InsertDateRequested(string datedRequested)
    {
        //Open DB connection
        dbConnection.Open();

        //New DB command
        string sqlStmt = "INSERT INTO requests (dateRequested) VALUES (@dateRequested)";

        MySqlCommand cmd = new MySqlCommand(sqlStmt, dbConnection);

        //Inserting new user information
        MySqlParameter param = new MySqlParameter("@dateRequested", datedRequested);
        cmd.Parameters.Add(param);

        //Execute the query
        cmd.ExecuteNonQuery();

        //Close DB connection
        dbConnection.Close();
    }

    //Method for new requests - Vehicle information
    public void InsertVehicleDetails(string plateNumber, string plateState, string model)
    {
        //Open DB connection
        dbConnection.Open();

        //Building SQL statement
        string sqlStmt = "INSERT INTO vehicles (plateNumber, plateState, model) ";
        sqlStmt += "VALUES (@plateNumber, @plateState, @model) ";
        sqlStmt += "WHERE customerID = @customerID";

        //New DB command 
        MySqlCommand cmd = new MySqlCommand(sqlStmt, dbConnection);

        //Inserting new user information
        MySqlParameter param = new MySqlParameter("@plateNumber", plateNumber);
        cmd.Parameters.Add(param);

        cmd.Parameters.Add(new MySqlParameter("@plateState", plateState));
        cmd.Parameters.Add(new MySqlParameter("@model", model));
        //cmd.Parameters.Add(new MySqlParameter("@customerID", customerSessionID here));

        //Execute the query
        cmd.ExecuteNonQuery();

        //Close DB connection
        dbConnection.Close();
    }*/


}
