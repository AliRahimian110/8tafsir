using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir
{
    public partial class BarnameAmoozeshiAzmoon : System.Web.UI.Page
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
                        titledore.InnerText = "برنامه آموزشی و آزمونها دوره های حضوری";
                        break;

                    case "2":
                        titledore.InnerText = "برنامه آموزشی و آزمونها دوره های مجازی";
                        break;

                    default:
                        titledore.InnerText = "برنامه آموزشی و آزمونها دوره ها";
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