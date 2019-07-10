using System;

namespace Tafsir
{
    public partial class BookText : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            try {
                var book = new TafsirLib.BookName();

                var bookId = 0;
                bookId = Convert.ToInt32(Request.QueryString["id"]);

                var titleid = 0;
                titleid = Convert.ToInt32(Request.QueryString["tid"]);


                var bookEntity = book.Get(bookId);
                txtBookName.InnerText = bookEntity.BookName;
                txtWriter.InnerText = bookEntity.Writer + ' ' + bookEntity.Translator ;


                RepTitle.DataSource = new TafsirLib.BookParagraph().Load(bookId);
                RepTitle.DataBind();

                RepText.DataSource = titleid <= 0 ?
                    new TafsirLib.BookParagraph().GetFirst(bookId) :
                    new TafsirLib.BookParagraph().Get(titleid);
                RepText.DataBind();

            }
            catch (Exception ex)
            {
                var t = ex.Message;
            }
        }

        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        var book = new TafsirLib.BookName();

        //        var bookId = 0;
        //        var titleid = 0;


        //        if (Page.RouteData.Values["Bookid"] != null &&
        //            int.TryParse(Page.RouteData.Values["Bookid"].ToString(), out bookId)) ;

        //        if (Page.RouteData.Values["titleid"] != null &&
        //            int.TryParse(Page.RouteData.Values["titleid"].ToString(), out titleid)) ;

        //        //SqlDataSource1.SelectParameters["bookid"].DefaultValue =
        //        //    SqlDataSource2.SelectParameters["bookid"].DefaultValue = bookId.ToString();

        //        //SqlDataSource2.SelectParameters["titleid"].DefaultValue = titleid.ToString();

        //        var bookEntity = book.Get(bookId);

        //        Title = bookEntity.BookName;
        //        //txtBookName.InnerHtml = bookEntity.BookName.Replace('‏', ' ');

        //        //txtWriter.InnerHtml = bookEntity.Writer.Trim();
        //        //txtWriter.InnerHtml += " " + bookEntity.Translator.Trim();

        //        Title = bookEntity.BookName;

        //        MetaKeywords = bookEntity.BookName + " , " + bookEntity.Writer + " , " + bookEntity.Translator;


        //        MetaDescription = bookEntity.Description + " , " + MetaKeywords;

        //        //var mintitle = book.GetMinTitle(bookId);
        //        //if (titleid <= mintitle) { titleid = mintitle; }

        //        ////linkn1.HRef =
        //        //linkn2.HRef = string.Format("~/Book/{0}/{1}", bookId, titleid + 3);
        //        ////linkp1.HRef =
        //        //linkp2.HRef = string.Format("~/Book/{0}/{1}", bookId, titleid - 3);

        //        //if (titleid <= mintitle)
        //        //{
        //        //    //linkp1.Visible =
        //        //    linkp2.Visible = false;
        //        //}

        //        ////linkn1.Visible =
        //        //linkn2.Visible = linkp2.Visible = false;
        //    }
        //    catch (Exception ex)
        //    {
        //        var t = ex.Message;
        //    }
        //}

        //protected void Repeater1_OnItemDataBound(object sender, RepeaterItemEventArgs e)
        //{
        //    //linkn2.Visible = linkp2.Visible = (e.Item.ItemType == ListItemType.Item);
        //}
    }
}