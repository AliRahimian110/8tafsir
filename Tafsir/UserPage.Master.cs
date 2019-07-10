using System;

namespace Tafsir
{
    public partial class Home : System.Web.UI.MasterPage
    {
        public static string PrevPage { get; set; } = "Index.aspx";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Url.LocalPath.ToLower() == "/index.aspx")
            {
                container.Visible = false;
            }
            
            var user = (TafsirLib.Entity.UserEntity)Session["UserAuthentication"] ?? new TafsirLib.Entity.UserEntity();

            if (user.Id > 0 && user.Active)
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