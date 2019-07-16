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
                    var obj = new TafsirLib.Mobaleg().Get(id);

                    txtName.Value = obj.FirstName;
                    txtTitle.Value = obj.ComName;
                    txtEmail.Value = obj.Email;
                    txtTel.Value = obj.Tel;
                    txtData.Value = obj.City;
                    txtDescription.Value = obj.Description;
                    txtChecked.Checked = obj.Checked;
                    txtSened.Checked = obj.Send;
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
                var obj = new TafsirLib.Mobaleg().Get(id);

                obj.FirstName = txtName.Value;
                obj.ComName = txtTitle.Value;
                obj.Email = txtEmail.Value;
                obj.Tel = txtTel.Value;
                obj.City = txtData.Value;
                obj.Description = txtDescription.Value;
                obj.Checked = txtChecked.Checked;
                obj.Send = txtSened.Checked;

                new TafsirLib.Mobaleg().Save(obj);
            }
            catch (Exception )
            {
            }
        }
    }
}