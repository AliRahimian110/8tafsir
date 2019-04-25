using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir
{
    public partial class News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            var com = "Exec SPNewsGetType ";
            try
            {
                var v = Request.QueryString["ntid"];
                com += v.ToString();

                switch (v)
                {
                    case "1":
                        TitleNewsId.InnerText = "اخبار";
                        break;

                    case "2":
                        TitleNewsId.InnerText = "رویداد";
                        break;

                    case "3":
                        TitleNewsId.InnerText = "مقالات قرآنی و تفسیری";
                        break;

                    default:
                            TitleNewsId.InnerText = "اخبار";
                        break;
                }
            }
            catch (Exception ex)
            {
                var t = ex.Message;
            }

            SqlDataSource0.SelectCommand = com;
            SqlDataSource0.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        }
    }
}