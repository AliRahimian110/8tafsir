using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir
{
    public partial class ForgatPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void butforgatemail_OnClick(object sender, EventArgs e)
        {
            try
            {
                var user = new TafsirLib.User();
                if (user.ForgatPassword(txtemail.Value))
                {
                    regform.Visible = false;
                    txtText.Visible = true;
                    txtText.InnerText = "ایمیل بازیابی رمز عبور ارسال شد.";
                }
                else
                {
                    regform.Visible = false;
                    txtText.Visible = true;
                    txtText.InnerText = "کاربر گرامی شما هنوز ثبت نام نکرده اید.";
                }
            }
            catch
            {
                //
            }
        }
    }
}