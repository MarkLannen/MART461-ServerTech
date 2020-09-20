using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Homework_5_Sept_21_2020_NET
{
    public partial class Player_Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
    }
}