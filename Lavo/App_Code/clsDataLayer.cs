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
using System.Text;
using System.Web.UI.WebControls;

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

            //Nunos constructor  contents
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
        /*
        public Boolean NewRequestVehicleInfo(string plateNumber, string plateState, string model, string sizeType, string custID)
        {
            Boolean success = true;
            string sqlStmt = "INSERT INTO vehicles (plateNumber, plateState, model, sizeType, customerID) VALUES (?plateNumber, ?plateState, ?model, ?sizeType, ?customerID)";
            MySqlCommand cmd = new MySqlCommand(sqlStmt, dbConnection);
            cmd.Connection = dbConnection;

            try
            {
                dbConnection.Open();
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
        }*/


        public void NewRequestVehicleInfo(string plateNumber, string plateState, string model, string sizeType, string saved, string primary, string custID)
        {
            //New DB connection
            MySqlConnection con = new MySqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();

            try
            {
                con.Open();

                string sql = "INSERT INTO vehicles (plateNumber, plateState, model, sizeType, saved, primaryDefault, customerID) ";
                sql += "VALUES (@plateNumber, @plateState, @model, @sizeType, @saved, @primary, @customerID)";

                MySqlCommand cmd = new MySqlCommand(sql, con);

                MySqlParameter param = new MySqlParameter("@plateNumber", plateNumber);
                cmd.Parameters.Add(param);

                cmd.Parameters.Add(new MySqlParameter("@plateState", plateState));
                cmd.Parameters.Add(new MySqlParameter("@model", model));
                cmd.Parameters.Add(new MySqlParameter("@sizeType", sizeType));
                cmd.Parameters.Add(new MySqlParameter("@saved", saved));
                cmd.Parameters.Add(new MySqlParameter("@primary", primary));
                cmd.Parameters.Add(new MySqlParameter("@customerID", custID));

                //Execute the query
                cmd.ExecuteNonQuery();

                //Close connection
                con.Close();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("3. Vehicle Insert Failure\nError code: " + ex.Number + "\n" + ex.StackTrace, "Vehicle information failure", MessageBoxButtons.OK, MessageBoxIcon.Error);
                con.Close();
            }

        }

        //Method to retrieve vehicleID
        public Int32 retrieveVehicleID(string custID, string plateNumber)
        {
            Int32 vehicleID = 0;

            //New DB connection
            MySqlConnection conn = new MySqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();

            try
            {
                conn.Open();
                string sql = "SELECT vehicleID FROM vehicles WHERE customerID = ?custID and plateNumber = ?plateNumber";
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                cmd.Connection = conn;
                cmd.CommandText = sql;
                cmd.Parameters.AddWithValue("?custID", custID);
                cmd.Parameters.AddWithValue("?plateNumber", plateNumber);
                MySqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.HasRows)
                {
                    while (sdr.Read())
                    {
                        vehicleID = sdr.GetInt32("vehicleID");
                    }
                    sdr.Close();
                }

                conn.Close();
            }
            catch (MySqlException ex)
            {
                errorcode = ex.Number;
                MessageBox.Show("10. VehicleID retrieval failure\nError code: " + getError() + "\n" + ex.ToString(), "VehicleID retrieval failure", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }

            return vehicleID;
        }

        //Method to retrieve current status
        public string currentStatus(string custID, string requestID)
        {
            string status = String.Empty;

            //New DB connection
            MySqlConnection conn = new MySqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();

            try
            {
                conn.Open();
                string sql = "SELECT status FROM requests WHERE customerID = ?custID and requestID = ?requestID";
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                cmd.Connection = conn;
                cmd.CommandText = sql;
                cmd.Parameters.AddWithValue("?custID", custID);
                cmd.Parameters.AddWithValue("?requestID", requestID);
                MySqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.HasRows)
                {
                    while (sdr.Read())
                    {
                        status = sdr.GetString("vehicleID");
                    }
                    sdr.Close();
                }

                conn.Close();
            }
            catch (MySqlException ex)
            {
                errorcode = ex.Number;
                MessageBox.Show("10. VehicleID retrieval failure\nError code: " + getError() + "\n" + ex.ToString(), "VehicleID retrieval failure", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }

            return status;
        }

        /*
        //New request adding request information (Date / Time / Service, etc)
        public Boolean NewRequestOrder(string dateTime, string service, string custID)
        {
            Boolean success = true;
            string sqlStmt = "INSERT INTO requests (dateRequested, serviceRequested, customerID) VALUES (?date, ?service, ?customerID)";

            try
            {
                dbConnection.Open();
                MySqlCommand cmd = new MySqlCommand(sqlStmt, dbConnection);
                cmd.Connection = dbConnection;
                cmd.CommandText = sqlStmt;
                cmd.Parameters.AddWithValue("?dateRequested", dateTime);
                cmd.Parameters.AddWithValue("?service", service);
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
        }*/

        //New request adding request information (Date / Time / Service, etc)
        public void NewRequestOrder(string dateTime, string service, string status, string performance, string addressID, string vehicleID, string custID)
        {
            //New DB connection
            MySqlConnection con = new MySqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();

            try
            {
                con.Open();

                string sql = "INSERT INTO requests (dateRequested, serviceRequested, status, washerPerformance, washAddressID, vehicleID, customerID) ";
                sql += "VALUES (@date, @service, @status, @performance, @addressID, @vehicleID, @customerID)";

                MySqlCommand cmd = new MySqlCommand(sql, con);

                MySqlParameter param = new MySqlParameter("@date", dateTime);
                cmd.Parameters.Add(param);

                cmd.Parameters.Add(new MySqlParameter("@service", service));
                cmd.Parameters.Add(new MySqlParameter("@status", status));
                cmd.Parameters.Add(new MySqlParameter("@performance", performance));
                cmd.Parameters.Add(new MySqlParameter("@addressID", addressID));
                cmd.Parameters.Add(new MySqlParameter("@vehicleID", vehicleID));
                cmd.Parameters.Add(new MySqlParameter("@customerID", custID));

                //Execute the query
                cmd.ExecuteNonQuery();

                //Close connection
                con.Close();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("4. Order Insert Failure\nError code: " + ex.Number + "\n" + ex.StackTrace, "Order details failure", MessageBoxButtons.OK, MessageBoxIcon.Error);
                con.Close();
            }
        }

        //New request adding request information (Date / Time / Service, etc) /w Key pickup and dropoff
        public void NewRequestOrderPremium(string dateTime, string service, string status, string performance, string pickUpID, string dropOffID, string addressID, string vehicleID, string custID)
        {
            //New DB connection
            MySqlConnection con = new MySqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();

            try
            {
                con.Open();

                string sql = "INSERT INTO requests (dateRequested, serviceRequested, status, washerPerformance, keyPickupAddressID, keyDropoffAddressID, washAddressID, vehicleID, customerID) ";
                sql += "VALUES (@date, @service, @status, @performance, @pickupID, @dropoffID, @addressID, @vehicleID, @customerID)";

                MySqlCommand cmd = new MySqlCommand(sql, con);

                MySqlParameter param = new MySqlParameter("@date", dateTime);
                cmd.Parameters.Add(param);

                cmd.Parameters.Add(new MySqlParameter("@service", service));
                cmd.Parameters.Add(new MySqlParameter("@status", status));
                cmd.Parameters.Add(new MySqlParameter("@performance", performance));
                cmd.Parameters.Add(new MySqlParameter("@pickupID", pickUpID));
                cmd.Parameters.Add(new MySqlParameter("@dropoffID", dropOffID));
                cmd.Parameters.Add(new MySqlParameter("@addressID", addressID));
                cmd.Parameters.Add(new MySqlParameter("@vehicleID", vehicleID));
                cmd.Parameters.Add(new MySqlParameter("@customerID", custID));

                //Execute the query
                cmd.ExecuteNonQuery();

                //Close connection
                con.Close();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("12. Order Insert /w Premium Failure\nError code: " + ex.Number + "\n" + ex.StackTrace, "Order details /w premium failure", MessageBoxButtons.OK, MessageBoxIcon.Error);
                con.Close();
            }
        }

        //New request adding address
        /*
        public Boolean NewRequestCarLocationAddress(string address, string city, string zipcode, string custID)
        {
            Boolean success = true;
            int zip = Int32.Parse(zipcode);
            int ID = Int32.Parse(custID);
            //Enconding enc = new UTF8Encoding(true, true);
            MySqlCommand cmd = dbConnection.CreateCommand();
            cmd.Connection = dbConnection;

            try
            {
                dbConnection.Open();
                string sqlStmt = "INSERT INTO addresses (address, city, zipcode, customerID) VALUES (?address, ?city, ?zipcode, ?customerID)";
                cmd.CommandText = sqlStmt;
                cmd.Parameters.AddWithValue("?address", address);
                cmd.Parameters.AddWithValue("?city", city);
                //cmd.Parameters.AddWithValue("?state", pickUpState);
                cmd.Parameters.AddWithValue("?zip", zip);
                cmd.Parameters.AddWithValue("?customerID", ID);

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
        }*/

        public void NewRequestCarLocationAddress(string address, string city, string zipcode, string custID)
        {
            //New DB connection
            MySqlConnection con = new MySqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();
            Int32 ID = Int32.Parse(custID);
            Int32 zip = Int32.Parse(zipcode);

            try
            {
                con.Open();

                string sql = "INSERT INTO addresses (customerID, address, city, zipcode) ";
                sql += "VALUES (@customerID, @address, @city, @zipcode)";

                MySqlCommand cmd = new MySqlCommand(sql, con);

                MySqlParameter param = new MySqlParameter("@customerID", ID);
                cmd.Parameters.Add(param);

                cmd.Parameters.Add(new MySqlParameter("@address", address));
                cmd.Parameters.Add(new MySqlParameter("@city", city));
                cmd.Parameters.Add(new MySqlParameter("@zipcode", zip));

                //Execute the query
                cmd.ExecuteNonQuery();

                //Close connection
                con.Close();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("5. Address Insert Failure\nError code: " + ex.Number + "\n" + ex.StackTrace, "Car location address failure", MessageBoxButtons.OK, MessageBoxIcon.Error);
                con.Close();
            }

        }

        //Method to retrieve addressID
        public Int32 retrieveAddressID(string custID, string address)
        {
            Int32 addressID = 0;

            //New DB connection
            MySqlConnection conn = new MySqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();

            try
            {
                conn.Open();
                string sql = "SELECT addressID FROM addresses WHERE customerID = ?custID and address = ?address";
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                cmd.Connection = conn;
                cmd.CommandText = sql;
                cmd.Parameters.AddWithValue("?custID", custID);
                cmd.Parameters.AddWithValue("?address", address);
                MySqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.HasRows)
                {
                    while (sdr.Read())
                    {
                        addressID = sdr.GetInt32("addressID");
                    }
                    sdr.Close();
                }

                conn.Close();
            }
            catch (MySqlException ex)
            {
                errorcode = ex.Number;
                MessageBox.Show("9. AddressID retrieval failure\nError code: " + getError() + "\n" + ex.ToString(), "AddressID retrieval failure", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }

            return addressID;
        }

        //Boolean New Request Pick Up Address
        public void NewRequestKeyPickUpAddress(string pickUpAddress, string pickUpCity, string pickUpZipcode, string custID)
        {
            Int32 ID = Int32.Parse(custID);
            Int32 zip = Int32.Parse(pickUpZipcode);

            //New DB connection
            MySqlConnection conn = new MySqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();

            try
            {
                conn.Open();

                string sql = "INSERT INTO addresses (customerID, address, city, zipcode) ";
                sql += "VALUES (@customerID, @address, @city, @zipcode)";

                MySqlCommand cmd = new MySqlCommand(sql, conn);

                MySqlParameter param = new MySqlParameter("@customerID", ID);
                cmd.Parameters.Add(param);

                cmd.Parameters.Add(new MySqlParameter("@address", pickUpAddress));
                cmd.Parameters.Add(new MySqlParameter("@city", pickUpCity));
                cmd.Parameters.Add(new MySqlParameter("@zipcode", zip));

                //Execute the query
                cmd.ExecuteNonQuery();

                //Close DB connection
                conn.Close();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("6. Address Insert Failure\nError code: " + ex.Number + "\n" + ex.StackTrace, "Pick up address failure", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }

        }

        //Boolean New Request Drop Off Address
        public void NewRequestKeyDropOffAddress(string dropOffAddress, string dropOffCity, string dropOffZipcode, string custID)
        {
            Int32 ID = Int32.Parse(custID);
            Int32 zip = Int32.Parse(dropOffZipcode);

            //New DB connection
            MySqlConnection conn = new MySqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();

            try
            {
                conn.Open();

                string sql = "INSERT INTO addresses (customerID, address, city, zipcode) ";
                sql += "VALUES (@customerID, @address, @city, @zipcode)";

                MySqlCommand cmd = new MySqlCommand(sql, conn);

                MySqlParameter param = new MySqlParameter("@customerID", ID);
                cmd.Parameters.Add(param);

                cmd.Parameters.Add(new MySqlParameter("@address", dropOffAddress));
                cmd.Parameters.Add(new MySqlParameter("@city", dropOffCity));
                cmd.Parameters.Add(new MySqlParameter("@zipcode", zip));

                //Execute the query
                cmd.ExecuteNonQuery();

                //Close DB connection
                conn.Close();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show("7. Address Insert Failure\nError code: " + ex.Number + "\n" + ex.StackTrace, "Drop off address failure", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }

        }

        public StringBuilder requestLookup(string customerID)
        {
            StringBuilder requestsTable = new StringBuilder();

            //New DB connection
            MySqlConnection conn = new MySqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();

            conn.Open();
            string sql = "SELECT customerID, dateRequested, serviceRequested FROM requests WHERE customerID = ?custID";
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = sql;
            cmd.Parameters.AddWithValue("?custID", customerID);
            MySqlDataReader dr = cmd.ExecuteReader();
            requestsTable.Append("<table class=\"table table-bordered\">");
            requestsTable.Append("<thead><tr><th>CustomerID</th><th>Requested Date</th><th>Requested Package</th>");
            requestsTable.Append("</tr></thead>");

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    requestsTable.Append("<tbody><tr>");
                    requestsTable.Append("<td>" + dr[0] + "</td>");
                    requestsTable.Append("<td>" + dr[1] + "</td>");
                    requestsTable.Append("<td>" + dr[2] + "</td>");
                    requestsTable.Append("</tr></tbody>");
                }
            }

            requestsTable.Append("</table>");

            conn.Close();

            return requestsTable;
            //PlaceHolderRequestsTable.Controls.Add(new Literal { Text = requestsTable.ToString() });
        }

        public StringBuilder addressLookup(string customerID)
        {
            StringBuilder addressTable = new StringBuilder();

            //New DB connection
            MySqlConnection conn = new MySqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();

            conn.Open();
            string sql = "SELECT customerID, address, city, zipcode FROM addresses WHERE customerID = ?custID";
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = sql;
            cmd.Parameters.AddWithValue("?custID", customerID);
            MySqlDataReader dr = cmd.ExecuteReader();
            addressTable.Append("<table class=\"table table-bordered\">");
            addressTable.Append("<thead><tr><th>CustomerID</th><th>Address</th><th>City</th><th>Zipcode</th>");
            addressTable.Append("</tr></thead>");

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    addressTable.Append("<tbody><tr>");
                    addressTable.Append("<td>" + dr[0] + "</td>");
                    addressTable.Append("<td>" + dr[1] + "</td>");
                    addressTable.Append("<td>" + dr[2] + "</td>");
                    addressTable.Append("<td>" + dr[3] + "</td>");
                    addressTable.Append("</tr></tbody>");
                }
            }

            addressTable.Append("</table>");

            conn.Close();

            return addressTable;
            //PlaceHolderRequestsTable.Controls.Add(new Literal { Text = requestsTable.ToString() });
        }

        public StringBuilder vehicleLookup(string customerID)
        {
            StringBuilder addressTable = new StringBuilder();

            //New DB connection
            MySqlConnection conn = new MySqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["lavoConnectionString"].ToString();

            conn.Open();
            string sql = "SELECT plateNumber, plateState, model, sizeType, saved FROM vehicles WHERE customerID = ?custID";
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = sql;
            cmd.Parameters.AddWithValue("?custID", customerID);
            MySqlDataReader dr = cmd.ExecuteReader();
            addressTable.Append("<table class=\"table table-bordered\">");
            addressTable.Append("<thead><tr><th>Plate Number</th><th>State</th><th>Model</th><th>Size</th><th>Saved</th>");
            addressTable.Append("</tr></thead>");

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    addressTable.Append("<tbody><tr>");
                    addressTable.Append("<td>" + dr[0] + "</td>");
                    addressTable.Append("<td>" + dr[1] + "</td>");
                    addressTable.Append("<td>" + dr[2] + "</td>");
                    addressTable.Append("<td>" + dr[3] + "</td>");
                    addressTable.Append("<td>" + dr[4] + "</td>");
                    addressTable.Append("</tr></tbody>");
                }
            }

            addressTable.Append("</table>");

            conn.Close();

            return addressTable;
            //PlaceHolderRequestsTable.Controls.Add(new Literal { Text = requestsTable.ToString() });
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
        Encoding enc = new UTF8Encoding(true, true);
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

    public Boolean validateEmployeeID(String ID)
    {
        MySqlConnection conn = new MySqlConnection(connString);
        string sql = "SELECT count(washerID)  FROM washers WHERE washerID = ?email";
        MySqlCommand cmd = new MySqlCommand(sql);
        MySqlDataAdapter sda = new MySqlDataAdapter();
        cmd.Connection = conn;
        MySqlDataReader sdr;
        try
        {
            conn.Open();
            sda.SelectCommand = cmd;
            cmd.Parameters.AddWithValue("?email", Convert.ToInt32(ID));
            int existingEmployees = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (existingEmployees > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        catch (MySqlException ex)
        {
            MessageBox.Show("9. Error code: " + ex.Number + "\n" + ex.StackTrace);
            return false;
        }
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
