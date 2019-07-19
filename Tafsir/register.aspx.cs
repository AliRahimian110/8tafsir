using System;
using TafsirLib.Entity;

namespace Tafsir
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void butRegister_OnClick(object sender, EventArgs e)
        {try
            {
                var studententity = new StudentEntity
                {
                    Active = true,
                    Email = txtemail.Value,
                    UserName = txtemail.Value,
                    Password = txtpassword.Value,
                };

                var student = new TafsirLib.Student();
                var count = student.Checked(studententity.Email);

                if (count == 0)
                {
                    //کاربر جدید
                    var studentid = student.Save(studententity);
                    Session["StudAuth"] = student.Get(studentid);
                    Response.Redirect("Profile.aspx?id=new");
                }
                else if (count > 0)
                {
                    //تکراری است
                    texttitle.InnerHtml = "ایمیل مورد نظر شما قبلا در سیستم ثبت شده است!" +
                        "<br/> <a href=\"ForgatPassword.aspx\" >کلمه عبور خود را فراموش کرده اید؟</a>";
                }
                else
                {
                    //error
                    texttitle.InnerHtml = "خطا در ثبت اطلاعات ";
                }
            }
            catch { }
        }
    }
}