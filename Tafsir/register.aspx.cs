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
            var userentity = new UserEntity();

            userentity.Email = txtemail.Value;
            userentity.FirstName = txtfname.Value;
            userentity.UserName = txtusername.Value;
            userentity.Password = txtpassword.Value;

           var user=new TafsirLib.User();
           var t= user.Save(userentity);
        }
    }
}