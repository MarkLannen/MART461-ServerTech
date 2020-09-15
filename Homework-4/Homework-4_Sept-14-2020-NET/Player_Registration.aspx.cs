using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Homework_4_Sept_14_2020
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
            Response.Redirect("Player_Registration.aspx?txtUsername=" + txtUsername.Text);
        }
    }
}