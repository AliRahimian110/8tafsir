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

                var ret = new TafsirLib.BookName().Save(objEntity);
            }
            catch (Exception)
            {
                //
            }
        }
    }
}