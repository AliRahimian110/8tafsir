using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir
{
    public partial class UForgatPassword : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void butforgatemail_OnClick(object sender, EventArgs e)
        {
            try
            {
                if (txtemail.Value.Trim().Length == 0)
                {
                    txtText.InnerText = "کاربر گرامی ایمیل خورد را وارد نمایید.";
                    return;
                }

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