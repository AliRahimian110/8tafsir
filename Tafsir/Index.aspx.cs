using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                ListSlide.DataSource = new TafsirLib.Slide().Load();
                ListSlide.DataBind();

                ListView1.DataSource = new TafsirLib.News().LoadTop(1);
                ListView1.DataBind();

                ListView2.DataSource = new TafsirLib.News().LoadTop(2);
                ListView2.DataBind();
            }
            catch (Exception)
            {
                //var err = ex.Message;
            }
        }
    }
}