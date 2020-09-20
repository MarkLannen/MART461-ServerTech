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
            lblGamesPlayed.Text = " ";
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Player_Registration.aspx?txtUsername=" + txtUsername.Text);

            lblGamesPlayed.Text = " ";
            if (cbSolitaire.Checked)
            {
                lblGamesPlayed.Text = "You have checked Checkbox 1.";
            }
            if (cbTetris.Checked)
            {
                lblGamesPlayed.Text += "You have checked Checkbox 2.";
            }
            if (cbPong.Checked)
            {
                lblGamesPlayed.Text += "You have checked Checkbox 3.";
            }
            if (!cbPong.Checked && !cbSolitaire.Checked && !cbTetris.Checked)
            {
                lblGamesPlayed.Text = "You have not selected anything!";
            }
        }
    }
}