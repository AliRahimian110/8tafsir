using System;

namespace Tafsir
{
    public partial class Bookinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32( Request.QueryString["id"]);
                Repeater2.DataSource = new TafsirLib.BookName().Load(id);
                Repeater2.DataBind();
            }
            catch (Exception)
            {
                //var err = ex.Message;
            }
        }
    }
}