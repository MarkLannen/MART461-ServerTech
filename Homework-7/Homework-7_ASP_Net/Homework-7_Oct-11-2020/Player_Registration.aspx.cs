using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Homework_7_Oct_11_2020
{
    public partial class Player_Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string myConnectionString = 
                ConfigurationManager.ConnectionStrings["EsportsConnectionString"].ToString();
            //Response.Write(myConnectionString);
            SqlConnection myConnection;
            Response.Write("Connection Open");
           

            myConnection = new SqlConnection(myConnectionString);
            myConnection.Open();

            string myQuery = "SELECT FirstName as 'First Name', LastName as 'Last Name', UserName as 'User Name', GamerTag as 'Gamer Tag' FROM Players ORDER BY UserName DESC";

            DataSet myDataSet = new DataSet();
            SqlCommand myCommand = new SqlCommand(myQuery);
            myCommand.Connection = myConnection;
            myCommand.CommandType = CommandType.Text;

            SqlDataAdapter myAdapter = new SqlDataAdapter(myCommand);
            myAdapter.Fill(myDataSet);
            myConnection.Close();

            gvUserName.DataSource = myDataSet.Tables[0];
            gvUserName.DataBind();

           // dataGrid.DataSource = myDataSet.Tables[0];
           //dataGrid.DataBind();

            string userName = Request.QueryString["txtUsername"];
            lblPlayerWelcome.Text = "Welcome to Griz Esports" + " " + userName;

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Player_Registration.aspx?txtUsername=" + txtUsername.Text);

            string userName = Request.QueryString["txtUsername"];
            lblPlayerWelcome.Text = "Welcome to Griz Esports" + " " + userName;

            if (cbSolitaire.Checked)
            {
                lblGamesPlayed.Text = "You have selected Solitaire.";
            }
            if (cbTetris.Checked)
            {
                lblGamesPlayed.Text += "You have selected Tetris.";
            }
            if (cbPong.Checked)
            {
                lblGamesPlayed.Text += "You have selected Pong.";
            }
            if (!cbPong.Checked && !cbSolitaire.Checked && !cbTetris.Checked)
            {
                lblGamesPlayed.Text = "You have not selected anything!";
            }


        }

        protected void txtPhone_TextChanged(object sender, EventArgs e)
        {

        }
    }
}