using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Homework_ASP-NET {
    public class Database
    {
        private SqlConnection openDatabase()
        {
            string myConnectionString =
               ConfigurationManager.ConnectionStrings["EsportsConnectionString"].ToString();
           
            SqlConnection myConnection;
            
            myConnection = new SqlConnection(myConnectionString);
            myConnection.Open();

            return myConnection;
        }

        public DataSet getQueryWithoutParameters(string query)
        {
            string myQuery = query;
            SqlConnection myConnecton = openDatabase();

            DataSet myDataSet = new DataSet();
            SqlCommand myCommand = new SqlCommand(myQuery);
            myCommand.Connection = myConnection;
            myCommand.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter myAdapter = new SqlDataAdapter(myCommand);
            myAdapter.Fill(myDataSet);

            return myDataSet;
        }

    }
}