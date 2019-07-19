using System;

namespace Tafsir.Admin
{
    public partial class BookInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    var id = Convert.ToInt32(Request.QueryString["id"]);
                    var objEntity = new TafsirLib.BookName().Get(id);

                    butDelete.Visible = objEntity.Id > 0;
                    txtBookName.Value = objEntity.BookName;
                    txtwriter.Value = objEntity.Writer;
                    txtPublisher.Value = objEntity.Publisher;
                    txtKeyword.InnerText = objEntity.Keyword;
                    txtPages.Value = objEntity.Pages.ToString();
                    txtLan.Value = objEntity.Language;
                    txtDescription.InnerText = objEntity.Description;
                }
            }
            catch (Exception)
            {
                //var err = ex.Message;
            }
        }

        protected void butUpData_OnClick(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32(Request.QueryString["id"]);
                var objEntity = new TafsirLib.BookName().Get(id);

                objEntity.BookName = txtBookName.Value;
                objEntity.Writer = txtwriter.Value;
                objEntity.Publisher = txtPublisher.Value;
                objEntity.Keyword = txtKeyword.InnerText;
                objEntity.Language = txtLan.Value;
                objEntity.Description = txtDescription.InnerText;


                //objEntity.Pages = Convert.ToInt32(txtPages.Value);
                var page = 0;
                int.TryParse(txtPages.Value, out page);
                objEntity.Pages = page;

                if(new TafsirLib.BookName().Save(objEntity)>0)
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
                var ret = new TafsirLib.BookName().Delete(id);

                if (ret > 0)
                {
                    //Response.Redirect("BookList.aspx");
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('اطلاعات مورد نظر شما حذف شد');window.location.href = 'BookList.aspx';", true);
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