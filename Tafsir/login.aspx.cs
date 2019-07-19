using System;
using TafsirLib;

namespace Tafsir
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var student = new TafsirLib.Entity.StudentEntity();
                try
                {
                    student = (TafsirLib.Entity.StudentEntity)Session["StudAuth"] ?? new TafsirLib.Entity.StudentEntity();
                }
                catch (Exception)
                {
                    student = new TafsirLib.Entity.StudentEntity();
                }

                if (student.Id > 0 && student.Active)
                {
                    loginform.Visible = false;
                    butExit.Visible = true;
                    txtform.InnerText = "کاربر گرامی [" + student.UserName + "] شما به سیستم لاگین کردید";
                }
                else
                {
                    loginform.Visible = true;
                    butExit.Visible = false;
                    txtform.InnerText = "ورود به سیستم";
                }
            }
            catch
            {

            }
        }
        

        protected void butLogin_OnClick(object sender, EventArgs e)
        {
            var user = new Student().Get(txtusername.Value, txtpassword.Value);
            //user.Password = "**************";

            if (user.Id > 0 && user.Active)
            {
                Session.Timeout = 10;
                Session["StudAuth"] = user;
                Response.Redirect(Home.PrevPage?? "Index.aspx");
            }
            else
            {
                Session["StudAuth"] = new TafsirLib.Entity.StudentEntity();
            }
        }

        protected void butExit_OnClick(object sender, EventArgs e)
        {
            Session.Timeout = 10;
            Session["StudAuth"] = new TafsirLib.Entity.StudentEntity();
            Response.Redirect("Login.aspx");
        }
    }
}