using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
using System.Net;
using System.Data;
using System.Configuration;
using System.Windows.Forms;

/// <summary>
/// Summary description for clsDataLayer
/// </summary>
/// 

public class clsDataLayer
{   
    MySqlConnection dbConnection;
    private Boolean authenticated;
    private string previlege;
    private string name;
    private long userID;
    private string connString;
    private int errorcode;

    // Constructor 
    public clsDataLayer()
    {
        //Constructor with connection string
        dbConnection = new MySqlConnection();
        dbConnection.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();
        connString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();
        authenticated = false;
        previlege = "none";
        name = "none";
        userID = 0;
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
    //New request adding vehicle information
    public Boolean NewRequestVehicleInfo(string plateNumber, string plateState, string model, string sizeType, string custID)
    {
        Boolean success = true;
        MySqlCommand cmd = dbConnection.CreateCommand();
        cmd.Connection = dbConnection;

        try
        {
            dbConnection.Open();
            string sqlStmt = "INSERT INTO vehicles(plateNumber, plateState, model, sizeType, customerID ) values (?plateNumber , ?plateState , ?model , ?sizeType, ?customerID )";
            cmd.CommandText = sqlStmt;
            cmd.Parameters.AddWithValue("?plateNumber", plateNumber);
            cmd.Parameters.AddWithValue("?plateState", plateState);
            cmd.Parameters.AddWithValue("?model", model);
            cmd.Parameters.AddWithValue("?sizeType", sizeType);
            cmd.Parameters.AddWithValue("?customerID", custID);

            //Execute the query
            cmd.ExecuteNonQuery();

            //Close DB connection
            dbConnection.Close();
        }
        catch (MySqlException ex)
        {
            MessageBox.Show("3. Vehicle Insert Failure\nError code: " + ex.Number + "\n" + ex.StackTrace, "Vehicle information failure", MessageBoxButtons.OK, MessageBoxIcon.Error);
            dbConnection.Close();
            success = false;
        }

        return success;
    }

    //New request adding request information (Date / Time / Service, etc)
    public Boolean NewRequestOrder(string dateTime, string size, string custID)
    {
        Boolean success = true;
        MySqlCommand cmd = dbConnection.CreateCommand();
        cmd.Connection = dbConnection;

        try
        {
            dbConnection.Open();
            string sqlStmt = "INSERT INTO requests(dateRequested, serviceRequested, customerID ) values (?date , ?service , ?customerID )";
            cmd.CommandText = sqlStmt;
            cmd.Parameters.AddWithValue("?dateRequested", dateTime);
            cmd.Parameters.AddWithValue("?service", size);
            cmd.Parameters.AddWithValue("?customerID", custID);

            //Execute the query
            cmd.ExecuteNonQuery();

            //Close DB connection
            dbConnection.Close();
        }
        catch (MySqlException ex)
        {
            MessageBox.Show("4. Order Insert Failure\nError code: " + ex.Number + "\n" + ex.StackTrace, "Order details failure", MessageBoxButtons.OK, MessageBoxIcon.Error);
            dbConnection.Close();
            success = false;
        }

        return success;
    }

    //New request adding address
    public Boolean NewRequestCarLocationAddress(string address, string city, string zipcode, string custID)
    {
        Boolean success = true;
        int zip = Int32.Parse(zipcode);
        //Enconding enc = new UTF8Encoding(true, true);
        MySqlCommand cmd = dbConnection.CreateCommand();
        cmd.Connection = dbConnection;

        try
        {
            dbConnection.Open();
            string sqlStmt = "INSERT INTO addresses(address, city, zipcode, customerID) values (?address , ?city , ?zipcode , ?customerID )";
            cmd.CommandText = sqlStmt;
            cmd.Parameters.AddWithValue("?address", address);
            cmd.Parameters.AddWithValue("?city", city);
            //cmd.Parameters.AddWithValue("?state", pickUpState);
            cmd.Parameters.AddWithValue("?zip", zip);
            cmd.Parameters.AddWithValue("?customerID", custID);

            //Execute the query
            cmd.ExecuteNonQuery();

            //Close DB connection
            dbConnection.Close();
        }
        catch (MySqlException ex)
        {
            MessageBox.Show("5. Address Insert Failure\nError code: " + ex.Number + "\n" + ex.StackTrace, "Car location address failure", MessageBoxButtons.OK, MessageBoxIcon.Error);
            dbConnection.Close();
            success = false;
        }

        return success;
    }

    //Boolean New Request Pick Up Address
    public Boolean NewRequestKeyPickUpAddress(string pickUpAddress, string pickUpCity, string pickUpZipcode, string custID)
    {
        Boolean success = true;
        int pickUpZip = Int32.Parse(pickUpZipcode);       
        //Enconding enc = new UTF8Encoding(true, true);
        MySqlCommand cmd = dbConnection.CreateCommand();
        cmd.Connection = dbConnection;

        try
        {
            dbConnection.Open();
            string sqlStmt = "INSERT INTO addresses(address, city, zipcode, customerID) values (?address , ?city , ?zipcode , ?customerID )";
            cmd.CommandText = sqlStmt;
            cmd.Parameters.AddWithValue("?address", pickUpAddress);
            cmd.Parameters.AddWithValue("?city", pickUpCity);
            //cmd.Parameters.AddWithValue("?state", pickUpState);
            cmd.Parameters.AddWithValue("?zip", pickUpZip);
            cmd.Parameters.AddWithValue("?customerID", custID);

            //Execute the query
            cmd.ExecuteNonQuery();

            //Close DB connection
            dbConnection.Close();
        }
        catch (MySqlException ex)
        {
            MessageBox.Show("6. Address Insert Failure\nError code: " + ex.Number + "\n" + ex.StackTrace, "Pick up address failure", MessageBoxButtons.OK, MessageBoxIcon.Error);
            dbConnection.Close();
            success = false;
        }

        return success;
    }

    //Boolean New Request Drop Off Address
    public Boolean NewRequestKeyDropOffAddress(string dropOffAddress, string dropOffCity, string dropOffZipcode, string custID)
    {
        Boolean success = true;
        int dropOffZip = Int32.Parse(dropOffZipcode);
        //Enconding enc = new UTF8Encoding(true, true);
        MySqlCommand cmd = dbConnection.CreateCommand();
        cmd.Connection = dbConnection;

        try
        {
            dbConnection.Open();
            string sqlStmt = "INSERT INTO addresses(address, city, zipcode, customerID) values (?address , ?city , ?zipcode , ?customerID )";
            cmd.CommandText = sqlStmt;
            cmd.Parameters.AddWithValue("?address", dropOffAddress);
            cmd.Parameters.AddWithValue("?city", dropOffCity);
            //cmd.Parameters.AddWithValue("?state", pickUpState);
            cmd.Parameters.AddWithValue("?zip", dropOffZip);
            cmd.Parameters.AddWithValue("?customerID", custID);

            //Execute the query
            cmd.ExecuteNonQuery();

            //Close DB connection
            dbConnection.Close();
        }
        catch (MySqlException ex)
        {
            MessageBox.Show("7. Address Insert Failure\nError code: " + ex.Number + "\n" + ex.StackTrace, "Drop off address failure", MessageBoxButtons.OK, MessageBoxIcon.Error);
            dbConnection.Close();
            success = false;
        }

        return success;
    }

    //Nuno's Authentication Code
    //Boolean authentication method
    public Boolean authenticate(String email, String password)
    {
        MySqlConnection conn = new MySqlConnection(connString);
        try
        {
            conn.Open();
            string sql = "SELECT customerID, name FROM customers WHERE email = ?email and password= ?password";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.Connection = conn;
            cmd.CommandText = sql;
            cmd.Parameters.AddWithValue("?email", email);
            cmd.Parameters.AddWithValue("?password", password);
            MySqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    userID = sdr.GetInt64("customerID");
                    name = sdr.GetString("name");
                    previlege = "Customer";
                }
                authenticated = true;
                sdr.Close();
            }
            else
            {
                sdr.Close();
                sql = "SELECT washerID, name, title FROM washers WHERE email = ?email and password= ?password";
                cmd = new MySqlCommand(sql, conn);
                cmd.Connection = conn;
                cmd.CommandText = sql;
                cmd.Parameters.AddWithValue("?email", email);
                cmd.Parameters.AddWithValue("?password", password);
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    userID = sdr.GetInt64("washerID");
                    name = sdr.GetString("name");
                    previlege = sdr.GetString("title");
                }
                authenticated = true;
                sdr.Close();
            }
            String idString = String.Concat(userID);
            System.Console.WriteLine("user ID is:" + userID + "\nName is" + name + "\nprevilege is" + previlege + "\n");
            conn.Close();
        }
        catch (MySqlException ex)
        {
            errorcode = ex.Number;
            MessageBox.Show("3. Authentication failure\nError code: " + getError() + "\n" + ex.ToString(), "Authentication failure", MessageBoxButtons.OK, MessageBoxIcon.Error);
            conn.Close();
            return false;
        }
   ;
        return authenticated;
    }

    public Boolean lookupExisting(string email)
    {

        MySqlConnection conn = new MySqlConnection(connString);
        string sql = "SELECT count(email)  FROM customers WHERE email = ?email";
        MySqlCommand cmd = new MySqlCommand(sql);
        MySqlDataAdapter sda = new MySqlDataAdapter();
        cmd.Connection = conn;
        MySqlDataReader sdr;
        try
        {
            conn.Open();
            sda.SelectCommand = cmd;
            cmd.Parameters.AddWithValue("?email", email);
            int existingEmails = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (existingEmails < 0)
            {
                return true;
            }
            else
            {
                sql = "SELECT COUNT(email)  FROM washers WHERE email = ?email";
                cmd = new MySqlCommand(sql);
                sda = new MySqlDataAdapter();
                cmd.Connection = conn;
                sda.SelectCommand = cmd;
                cmd.Parameters.AddWithValue("?email", email);
                existingEmails = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (existingEmails < 0)
                {
                    conn.Close();
                    return true;
                }
            }
            conn.Close();
            return false;
        }
        catch (MySqlException ex)
        {
            errorcode = ex.Number;
            conn.Close();
            MessageBox.Show("6. Sign Up Failure\nError code: " + getError(), "Thank you", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return true;
        }
    }
    //this method adds a record to the table customers
    public Boolean addUser(String email, String password, String name, String phone, String address, String city, String state, String zipcode)
    {
        long phoneN = Int64.Parse(phone);
        int zip = Int32.Parse(zipcode);
        //Encoding enc = new UTF8Encoding(true, true);
        MySqlConnection conn = new MySqlConnection(connString);
        MySqlCommand cmd = conn.CreateCommand();
        cmd.Connection = conn;
        try
        {
            conn.Open();
            //these are the mandatory fields to be inserted)
            string sql = "Insert into customers(name, address, city, state, zipcode,  phone, email, password) values ( ?name , ?address , ?city , ?state , ?zip , ?phone , ?email , ?password )";
            cmd.CommandText = sql;
            cmd.Parameters.AddWithValue("?name", name);
            cmd.Parameters.AddWithValue("?address", address);
            cmd.Parameters.AddWithValue("?city", city);
            cmd.Parameters.AddWithValue("?state", state);
            cmd.Parameters.AddWithValue("?zip", zip);
            cmd.Parameters.AddWithValue("?phone", phoneN);
            cmd.Parameters.AddWithValue("?email", email);
            cmd.Parameters.AddWithValue("?password", password);
            cmd.ExecuteNonQuery();

            conn.Close();
        }
        catch (MySqlException ex)
        {

            MessageBox.Show("7. Sign Up  Failure\nError code: " + ex.Number + "\n" + ex.StackTrace, "Sign Up failure", MessageBoxButtons.OK, MessageBoxIcon.Error);
            conn.Close();
            return false;
        }

        return true;
    }

    /*Extra verify user method included
    public static dsUser VerifyUser(string Database, string Username, string Password)
    {
        dsUser DS;
        string server = "helios.secondmoonsoftware.com";
        string dbUsername = "lavo";
        string dbPassword = "9hL2My0d6edR";
        string dbName = "lavo";
        MySqlConnection conn = new MySqlConnection(server, dbUsername, dbPassword, dbName);

        string sql = " SELECT c.email, c.password, w.username, w.password w.title " +
            "FROM customers c LEFT JOIN requests r ON c.customerID = r.customerID " +
            "FROM washers w LEFT JOIN requests r ON w.washerID = r.washerID " +
            "WHERE(c.email IS '" + Username + "' OR w.username IS '" + Username + "') " +
            "AND(c.password IS '" + Password + "' OR w.password IS '" + Password + "') ";


        MySqlDataAdapter sqlDA = new MySqlDataAdapter(sql, conn);
        sqlDA.Fill(DS);
        return DS;
        //I know that it's a security vulnerability  to return a Dataset but we can go over it later
    }*/

        public string getPrevilege()
    {
        return previlege;
    }
    public String getName()
    {
        return name;
    }
    public long getID()
    {
        return userID;
    }
    public string getError()
    {
        return errorcode.ToString();
    }

    /*Retired methods below
     
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

    //Method for new requests - Date / Time?
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
    }*/


}
