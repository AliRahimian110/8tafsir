using System;

namespace Tafsir.Admin
{
    public partial class MobaleghInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32(Request.QueryString["id"]);
                var news = new TafsirLib.Mobaleg().Get(id);

                txtName.Value = news.ComName;
                txtTitle.Value = news.ComName;
                txtEmail.Value = news.Email;
                txtTel.Value = news.Tel;
                txtData.Value = news.City;
                txtDescription.Value = news.Description;


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
            }
            catch (Exception ex)
            {
            }
        }
    }
}