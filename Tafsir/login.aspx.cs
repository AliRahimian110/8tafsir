using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TafsirLib;

namespace Tafsir
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //txtpassword.Text = "000";
            //Login1.UserName
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (new User().Checked(txtusername.Value, txtpassword.Value))
            {
                Session.Timeout = 10;
                Session["UserAuthentication"] = txtusername.Value;
                Response.Redirect("Management/Default.aspx");
            }
            else
            {
                Session["UserAuthentication"] = string.Empty;
            }
        }
    }
}