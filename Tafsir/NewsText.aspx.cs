using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir
{
    public partial class TextNews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            var com = "Exec SPNewsGet ";
            try
            {
                var id = Request.QueryString["id"];

                if (string.IsNullOrEmpty(id) && string.IsNullOrWhiteSpace(id))
                {
                    id = "0";
                }

                com += id;

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