using System;

namespace Tafsir.Admin
{
    public partial class TeacherInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    var id = Convert.ToInt32(Request.QueryString["id"]);
                    var objEntity = new TafsirLib.Teacher().Get(id);

                    butDelete.Visible = objEntity.Id > 0;
                    txtid.Value = objEntity.Id.ToString();
                    txtfname.Value = objEntity.FirstName;
                    txtlname.Value = objEntity.LastName;
                    txtuname.Value = objEntity.UserName;
                    txtemail.Value = objEntity.Email;
                    txttel.Value = objEntity.Tel;
                    txtrezom.InnerText = objEntity.Rezome;
                    isActivate.Value = Convert.ToInt32(objEntity.Active) == 1 ? "1" : "2";
                    gred.Value = objEntity.Grade;
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
                var objEntity = new TafsirLib.Entity.TeacherEntity
                {
                    Id=Convert.ToInt32(txtid.Value),
                    //Active = (isActivate.Value == "1").ToString(),
                    FirstName = txtfname.Value,
                    LastName = txtlname.Value,
                    UserName = txtuname.Value,
                    Email = txtemail.Value,
                    Tel = txttel.Value,
                    Rezome = txtrezom.InnerText,
                    //Active = isActivate.Value=="1"?1.ToString():0.ToString(),
                    Grade = gred.Value,
                };
                

                objEntity.Active = Convert.ToBoolean (isActivate.Value == "1").ToString();

                if(new TafsirLib.Teacher().Save(objEntity)>0)
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
                var ret = new TafsirLib.Teacher().Delete(id);

                if (ret > 0)
                {
                    //Response.Redirect("TeacherList.aspx");
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('اطلاعات مورد نظر شما حذف شد');window.location.href = 'TeacherList.aspx';", true);
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