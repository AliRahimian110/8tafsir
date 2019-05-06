using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                var type = Request.QueryString["id"];

                if (type.ToLower() == "new")
                {
                    texttitle.InnerHtml = "<b style=\"color:#32cd32\">ثبت نام با موفقیت انجام شد.</b>";
                }
            }
            catch (Exception)
            {
                //var err = ex.Message;
            }

            try
            {
                var user = (TafsirLib.Entity.UserEntity) Session["UserAuthentication"] ??
                           new TafsirLib.Entity.UserEntity();

                txtFirstName.Value = user.FirstName;
                txtLastName.Value = user.LastName;
                //txtBirthDate.Value = user.
                //txtCodeMeli.Value = user.

            }
            catch (Exception)
            {
                //var err = ex.Message;
            }
        }
    }
}