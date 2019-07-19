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
                    txtDescription.Value = objEntity.Description;
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

                objEntity.FirstName = txtName.Value;
                objEntity.ComName = txtTitle.Value;
                objEntity.Email = txtEmail.Value;
                objEntity.Tel = txtTel.Value;
                objEntity.City = txtData.Value;
                objEntity.Description = txtDescription.Value;
                objEntity.Checked = txtChecked.Checked;
                objEntity.Send = txtSened.Checked;

                new TafsirLib.Mobaleg().Save(objEntity);
            }
            catch (Exception )
            {
            }
        }
    }
}