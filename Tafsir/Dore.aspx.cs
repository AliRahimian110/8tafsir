using System;

namespace Tafsir
{
    public partial class DoreMajazi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var com = "Exec SPNewsGetType ";
            try
            {
                var v = Request.QueryString["id"];
                com += v.ToString();

                switch (v)
                {
                    case "1":
                        titledore.InnerText = "دوره های حضوری";
                        break;

                    case "2":
                        titledore.InnerText = "دوره های مجازی";
                        break;

                    default:
                        titledore.InnerText = "دوره ها";
                        break;
                }
            }
            catch (Exception ex)
            {
                var t = ex.Message;
            }

            //SqlDataSource0.SelectCommand = com;
            //SqlDataSource0.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        }
    }
}