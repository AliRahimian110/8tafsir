using System;

namespace Tafsir
{
    public partial class BarnameAmoozeshiAzmoon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                var typeid = Request.QueryString["id"];

                switch (typeid)
                {
                    case "1":
                        titledore.InnerText = "برنامه آموزشی و آزمونها دوره های حضوری";
                        break;

                    case "2":
                        titledore.InnerText = "برنامه آموزشی و آزمونها دوره های مجازی";
                        break;

                    default:
                        typeid = "1";
                        titledore.InnerText = "برنامه آموزشی و آزمونها دوره های حضوری";
                        break;
                }

                ListView1.DataSource = new TafsirLib.Course().Load(typeid);
                ListView1.DataBind();
            }
            catch (Exception ex)
            {
                var t = ex.Message;
            }



        }
        
    }
}