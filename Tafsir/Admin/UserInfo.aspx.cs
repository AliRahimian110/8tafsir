using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir.Admin
{
    public partial class UserInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    var id = Convert.ToInt32(Request.QueryString["id"]);
                    var objEntity = new TafsirLib.User().Get(id);

                    butDelete.Visible = objEntity.Id > 0;
                    txtid.Value = objEntity.Id.ToString();
                    txtfname.Value = objEntity.FirstName;
                    txtlname.Value = objEntity.LastName;
                    txtuname.Value = objEntity.UserName;
                    txtemail.Value = objEntity.Email;
                    //txttel.Value = obj.Tel;
                    //txtrezom.Value = obj.Rezome;
                    isActivate.Value = Convert.ToInt32(objEntity.Active) == 1 ? "1" : "2";
                    //gred.Value = obj.Grade;
                }
            }
            catch (Exception)
            {
                //var err = ex.Message;
            }
        }

        protected void butAddNews_OnClick(object sender, EventArgs e)
        {
            try
            {
                var objEntity = new TafsirLib.Entity.UserEntity
                {
                    Id = Convert.ToInt32(txtid.Value),
                    //Active = (isActivate.Value == "1").ToString(),
                    FirstName = txtfname.Value,
                    LastName = txtlname.Value,
                    UserName = txtuname.Value,
                    Email = txtemail.Value,
                    //Tel = txttel.Value,
                    //Rezome = txtrezom.Value,
                    //Active = isActivate.Value=="1"?1.ToString():0.ToString(),
                    //Grade = gred.Value,
                };


                objEntity.Active = Convert.ToBoolean(isActivate.Value == "1");

                if(new TafsirLib.User().Save(objEntity)>0)
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('به روز رسانی انجام شد');", true);
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('خطا در به روز رسانی اطلاعات');", true);
                }
            }
            catch (Exception)
            {
                //
            }
        }


        protected void butDelete_OnClick(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32(Request.QueryString["id"]);
                var ret = new TafsirLib.User().Delete(id);

                if (ret > 0)
                {
                    //Response.Redirect("UserList.aspx");
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('اطلاعات مورد نظر شما حذف شد');window.location.href = 'UserList.aspx';", true);
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('خطا در حذف اطلاعات');", true);
                }

            }
            catch (Exception ex)
            {
            }
        }
    }
}