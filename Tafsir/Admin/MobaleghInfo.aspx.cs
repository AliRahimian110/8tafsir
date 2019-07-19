using System;

namespace Tafsir.Admin
{
    public partial class MobaleghInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    var id = Convert.ToInt32(Request.QueryString["id"]);
                    var objEntity = new TafsirLib.Mobaleg().Get(id);

                    txtName.Value = objEntity.FirstName;
                    txtTitle.Value = objEntity.ComName;
                    txtEmail.Value = objEntity.Email;
                    txtTel.Value = objEntity.Tel;
                    txtData.Value = objEntity.City;
                    txtDescription.InnerText = objEntity.Description;
                    txtChecked.Checked = objEntity.Checked;
                    txtSened.Checked = objEntity.Send;
                }
            }
            catch (Exception ex)
            {
                //
            }
        }

        protected void butUpData_OnClick(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32(Request.QueryString["id"]);
                var objEntity = new TafsirLib.Mobaleg().Get(id);

                butDelete.Visible = objEntity.Id > 0;
                objEntity.FirstName = txtName.Value;
                objEntity.ComName = txtTitle.Value;
                objEntity.Email = txtEmail.Value;
                objEntity.Tel = txtTel.Value;
                objEntity.City = txtData.Value;
                objEntity.Description = txtDescription.InnerText;
                objEntity.Checked = txtChecked.Checked;
                objEntity.Send = txtSened.Checked;

                if(new TafsirLib.Mobaleg().Save(objEntity)>0)
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('به روز رسانی انجام شد');", true);
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('خطا در به روز رسانی اطلاعات');", true);
                }
            }
            catch (Exception )
            {
            }
        }

        protected void butDelete_OnClick(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32(Request.QueryString["id"]);
                var ret = new TafsirLib.Mobaleg().Delete(id);

                if (ret > 0)
                {
                    //Response.Redirect("MobaleghList.aspx");
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('اطلاعات مورد نظر شما حذف شد');window.location.href = 'MobaleghList.aspx';", true);
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