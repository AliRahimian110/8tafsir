using System;

namespace Tafsir.Admin
{
    public partial class QuestionNazarsanjiInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    var id = Convert.ToInt32(Request.QueryString["id"]);
                    var objEntity = new TafsirLib.QuestionNazarsanji().Get(id);

                    txtQuestion.Value = objEntity.Question;
                    txtTitle.Value = objEntity.Id.ToString();
                    txtChecked.Checked = objEntity.Active;
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
                var objEntity = new TafsirLib.QuestionNazarsanji().Get(id);

                objEntity.Question = txtQuestion.Value;
                objEntity.Active = txtChecked.Checked;

                new TafsirLib.QuestionNazarsanji().Save(objEntity);
            }
            catch (Exception ex)
            {
            }
        }
    }
}