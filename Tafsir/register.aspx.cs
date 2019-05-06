using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TafsirLib.Entity;

namespace Tafsir
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void butRegister_OnClick(object sender, EventArgs e)
        {
            var userentity = new UserEntity
            {
                Active = true,
                Email = txtemail.Value,
                UserName = txtemail.Value,
                Password = txtpassword.Value,
                RulId = 1
            };


            var user = new TafsirLib.User();

            var count = user.Checked(userentity.Email);

            if (count == 0)
            {
                //کاربر جدید
                var t = user.Save(userentity);
                Session["UserAuthentication"] = userentity.Email;
                Response.Redirect("Profile.aspx?id=new");
            }
            else if (count > 0)
            {
                //تکراری است
                texttitle.InnerHtml = "ایمیل مورد نظر شما قبلا در سیستم ثبت شده است!"+
                    "<br/> <a href=\"ForgatPassword.aspx\" >کلمه عبور خود را فراموش کرده اید؟</a>";
            }
            else
            {
                //error
                texttitle.InnerHtml = "خطا در ثبت اطلاعات ";
            }
        }
    }
}