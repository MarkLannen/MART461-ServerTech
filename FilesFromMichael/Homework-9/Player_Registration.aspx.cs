using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Homework_ASPNET
{
    public partial class Player_Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Database myDatabase = new Database();

            string myQuery = "spSelectAllPlayers";
            DataSet myDataSet =  myDatabase.getQueryWithoutParameters(myQuery);


            //myConnection.Close();

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