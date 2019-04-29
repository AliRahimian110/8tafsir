using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir.Admin
{
    public partial class BookList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ListView1.DataSource = new TafsirLib.BookName().Load();
                ListView1.DataBind();
            }
            catch (Exception)
            {
                //var err = ex.Message;
            }
            
        }

        protected void ListDataBound(object sender, EventArgs e)
        {
            
        }
    }
}