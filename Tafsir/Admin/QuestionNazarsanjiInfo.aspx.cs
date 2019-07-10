using System;

namespace Tafsir.Admin
{
    public partial class QuestionNazarsanjiInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32(Request.QueryString["id"]);
                var obj = new TafsirLib.QuestionNazarsanji().Get(id);

                txtQuestion.Value = obj.Question;
                txtTitle.Value = obj.Id.ToString();
                txtEmail.Value = obj.Active.ToString();
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