using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TafsirAdmin
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Url.LocalPath.ToLower() == "/index.aspx")
            {
                container.Visible = false;
            }

            var user = (string)Session["UserAuthentication"] ?? "";

            if (user.Length > 0)
            {
                menoLogout.Visible = false;
                menoLogin.Visible = true;
                //txtusername.InnerText = user;
            }
            else
            {
                menoLogout.Visible = true;
                menoLogin.Visible = false;
                //txtusername.InnerText = " ";
            }
        }
    }
}