using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TafsirLib;

namespace Tafsir
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack && Request.UrlReferrer!=null)
            //{ Home.PrevPage = Request.UrlReferrer.ToString(); }

            var user = (TafsirLib.Entity.UserEntity)Session["UserAuthentication"] ?? new TafsirLib.Entity.UserEntity();

            if (user.Id > 0)
            {
                loginform.Visible = false;
                butExit.Visible = true;
                txtform.InnerText = "کاربر گرامی [" + user.UserName + "] شما به سیستم لاگین کردید";
            }
            else
            {
                loginform.Visible = true;
                butExit.Visible = false;
                txtform.InnerText = "ورود به سیستم";
            }
        }

        protected void butLogin_OnClick(object sender, EventArgs e)
        {
            var user = new User().Get(txtusername.Value, txtpassword.Value);
            user.Password = "**************";

            if (user.Id > 0 && user.Active)
            {
                Session.Timeout = 10;
                Session["UserAuthentication"] = user;
                Response.Redirect(Home.PrevPage?? "Index.aspx");
            }
            else
            {
                Session["UserAuthentication"] = new TafsirLib.Entity.UserEntity();
            }
        }

        protected void butExit_OnClick(object sender, EventArgs e)
        {
            Session.Timeout = 10;
            Session["UserAuthentication"] = new TafsirLib.Entity.UserEntity();
            Response.Redirect("Login.aspx");
        }

        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    var user = (string) Session["UserAuthentication"] ?? "";

        //    if (user.Length > 0)
        //    {
        //        loginform.Visible = false;
        //        butExit.Visible = true;
        //        txtform.InnerText = "کاربر گرامی [" + user + "] شما به سیستم لاگین کردید";
        //    }
        //    else
        //    {
        //        loginform.Visible = true;
        //        butExit.Visible = false;
        //        txtform.InnerText = "ورود به سیستم";
        //    }
        //}

        //protected void butLogin_OnClick(object sender, EventArgs e)
        //{
        //    if (new User().Checked(txtusername.Value, txtpassword.Value))
        //    {
        //        Session.Timeout = 10;
        //        Session["UserAuthentication"] = txtusername.Value;
        //        Response.Redirect("Index.aspx");
        //    }
        //    else
        //    {
        //        Session["UserAuthentication"] = string.Empty;
        //    }
        //}

        //protected void butExit_OnClick(object sender, EventArgs e)
        //{
        //    Session.Timeout = 10;
        //    Session["UserAuthentication"] = string.Empty;
        //    Response.Redirect("Login.aspx");
        //}
    }
}