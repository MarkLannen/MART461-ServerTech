using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Homework_ASPNET
{
    public class Players
    {
        public DataSet getAllPlayers() 
        {
            Database myDatabase = new Database();
            string myQuery = "spSelectAllPlayers";
            DataSet myDataSet = myDatabase.getQueryWithoutParameters(myQuery);

            return myDataSet;
        }

        public DataSet selectPlayerByPlayerID(int playerID)
        {
            Database myDatabase = new Database();
            string myQuery = "spSelectPlayerByPlayerID";
            SqlParameter[] myParameters = new SqlParameter[1];
            myParameters[0] = new SqlParameter("PlayerID", playerID);
            DataSet myDataSet = myDatabase.getQueryWithParameters(myQuery, myParameters);

            return myDataSet;
        }
    }
}