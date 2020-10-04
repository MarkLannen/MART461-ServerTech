using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Sept17MART461
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string myConnectionString = 
                ConfigurationManager.ConnectionStrings["ESportsTutoringConnectionString"].ToString();
          //  Response.Write(myConnectionString);
            SqlConnection myConnection;

            myConnection = new SqlConnection(myConnectionString);
            myConnection.Open();

            string myQuery = "SELECT SubjectID AS 'Subject ID', " +
                  " SubjectName as 'Subject Name' , " +
                "Active " +
                "FROM Subjects " +
                " ORDER BY SubjectName DESC";

            DataSet myDataSet = new DataSet();
            SqlCommand myCommand = new SqlCommand(myQuery);
            myCommand.Connection = myConnection;
            myCommand.CommandType = CommandType.Text;

            SqlDataAdapter myAdapter = new SqlDataAdapter(myCommand);
            myAdapter.Fill(myDataSet);
            myConnection.Close();

            gvSubjects.DataSource = myDataSet.Tables[0];
            gvSubjects.DataBind();
            

        }

        protected void btnCheckboxes_Click(object sender, EventArgs e)
        {
           /* string message = "Movies I like: ";
            bool movie1 = chkMovie1.Checked;
            bool movie2 = chkMovie2.Checked;
            bool movie3 = chkMovie3.Checked;

            if(movie1)
            {
                message += chkMovie1.Text + "<br />";
            }

            if (movie2)
            {
                message += chkMovie2.Text + "<br />";
            }
            if (movie3)
            {
                message += chkMovie3.Text + "<br />";
            }

            lblMovies.Text = message;*/
        }

        protected void btnFood_Click(object sender, EventArgs e)
        {
           
          /*  if (rbTaco.Checked)
            {
                lblFood.Text = "Food I like: " + rbTaco.Text;
            }
            else if (rbBurrito.Checked)
            {
                lblFood.Text = "Food I like: " + rbBurrito.Text;
            }
            else if(rbPizza.Checked)
            {
                lblFood.Text = "Food I like: " + rbPizza.Text;
            }*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}