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
                FirstName = txtfname.Value,
                LastName = txtlname.Value,
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
            }
            else if (count > 0)
            {
                //تکراری است
            }
            else
            {
                //error
            }
        }
    }
}