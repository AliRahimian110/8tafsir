using System;

namespace Tafsir.Admin
{
    public partial class QuestionNazarsanjiList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ListView1.DataSource = new TafsirLib.QuestionNazarsanji().Load();
                ListView1.DataBind();
            }
            catch (Exception)
            {
                //var err = ex.Message;
            }
        }
    }
}