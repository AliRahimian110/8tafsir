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

                    butDelete.Visible = objEntity.Id > 0;
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

                if(new TafsirLib.QuestionNazarsanji().Save(objEntity)>0)
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('به روز رسانی انجام شد');", true);
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('خطا در به روز رسانی اطلاعات');", true);
                }
            }
            catch (Exception ex)
            {
            }
        }


        protected void butDelete_OnClick(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32(Request.QueryString["id"]);
                var ret = new TafsirLib.QuestionNazarsanji().Delete(id);

                if (ret > 0)
                {
                    //Response.Redirect("QuestionNazarsanjiList.aspx");
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('اطلاعات مورد نظر شما حذف شد');window.location.href = 'QuestionNazarsanjiList.aspx';", true);
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