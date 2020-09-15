using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Homework_4_Sept_14_2020
{
    public partial class Homework_4_Sessions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sessionInfo = txtSessionInfo.Text;

            Session["sessionVariable"] = sessionInfo;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write(Session["sessionVariable"]);
        }
    }
}