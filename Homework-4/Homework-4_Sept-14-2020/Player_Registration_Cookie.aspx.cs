using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Homework_4_Sept_14_2020
{
    public partial class Player_Registration_Cookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string userName = txtUsername.Text;
            HttpCookie userNameCookie = new HttpCookie("userName_Cookie");
            userNameCookie.Name = "userName";
            userNameCookie.Value = userName;
            userNameCookie.Expires.AddDays(1);

            Response.SetCookie(userNameCookie);

            Response.Write("Cookie set.");

        }
        protected void btnGet_Click(object sender, EventArgs e)
        {

            string userName = Request.Cookies["userName"].Value;
            string cookieName = Request.Cookies["userName"].Name;

            if (userName != null)
            {
                Response.Write("Cookie Information: name: " + userName + "value" + userName);

            } else
            {
                Response.Write("Cookie not found");
                
            }

        }
    }
}