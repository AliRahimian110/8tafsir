using System;

namespace Tafsir
{
    public partial class Books : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Repeater1.DataSource = new TafsirLib.BookName().LoadVisit();
                Repeater1.DataBind();

                Repeater2.DataSource = new TafsirLib.BookName().LoadNew();
                Repeater2.DataBind();
            }
            catch (Exception)
            {
                //var err = ex.Message;
            }
        }
    }
}