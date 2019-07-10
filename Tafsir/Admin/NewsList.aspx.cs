using System;

namespace Tafsir.Admin
{
    public partial class NewsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var typeid = 1;
                var type = Request.QueryString["type"];
                if(string.IsNullOrEmpty(type))
                {
                    type = "news";
                }
                type = type.ToLower();


                switch (type)
                {
                    case "news":
                        typeid = 1;
                        break;

                    case "roydad":
                        typeid = 2;
                        break;

                    case "maqale":
                    default:
                        typeid = 3;
                        break;
                }

                ListView1.DataSource = new TafsirLib.News().Load(typeid.ToString());
                ListView1.DataBind();
            }
            catch (Exception)
            {
                //var err = ex.Message;
            }
        }
    }
}