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
            try
            {
                var ids = Request.QueryString["id"];
                ListView5.DataSource = new TafsirLib.News().Get(ids);
                ListView5.DataBind();
            }
            catch (Exception)
            {
                //var err = ex.Message;
            }
        }
    }
}