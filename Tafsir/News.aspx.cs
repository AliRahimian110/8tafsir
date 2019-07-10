using System;

namespace Tafsir
{
    public partial class News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var type = Request.QueryString["ntid"];
                switch (type)
                {
                    case "2":
                        TitleNewsId.InnerText = "رویداد ها";
                        break;

                    case "3":
                        TitleNewsId.InnerText = "مقالات قرآنی و تفسیری";
                        break;

                    //case "1":
                    default:
                        type = "1";
                        TitleNewsId.InnerText = "اخبار";
                        break;
                }

                ListView5.DataSource = new TafsirLib.News().Load(type);
                ListView5.DataBind();
            }
            catch (Exception)
            {
                //var err = ex.Message;
            }
        } 
    }
}