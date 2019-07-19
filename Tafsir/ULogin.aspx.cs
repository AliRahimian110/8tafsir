using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir
{
    public partial class ULogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var student = new TafsirLib.Entity.UserEntity();
                try
                {
                    student = (TafsirLib.Entity.UserEntity)Session["UserAuth"] ?? new TafsirLib.Entity.UserEntity();
                }
                catch (Exception)
                {
                    student = new TafsirLib.Entity.UserEntity();
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
                    txtform.InnerText = "ورود به بخش مدیریت سایت";
                }
            }
            catch
            {

            }
        }


        protected void butLogin_OnClick(object sender, EventArgs e)
        {
            var user = new TafsirLib.User().Get(txtusername.Value, txtpassword.Value);
            //user.Password = "**************";

            if (user.Id > 0 && user.Active)
            {
                Session.Timeout = 10;
                Session["UserAuth"] = user;
                Response.Redirect("Admin//Index.aspx");
            }
            else
            {
                Session["UserAuth"] = new TafsirLib.Entity.UserEntity();
            }
        }

        protected void butExit_OnClick(object sender, EventArgs e)
        {
            Session.Timeout = 10;
            Session["UserAuth"] = new TafsirLib.Entity.UserEntity();
            Response.Redirect("Login.aspx");
        }
    }
}