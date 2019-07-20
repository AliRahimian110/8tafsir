using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir.Admin
{
    public partial class CourseList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var typeid = 1;
                var ids = Request.QueryString["id"];
                int.TryParse(ids, out typeid);



                if (typeid == 1)
                {
                    TxtType.InnerText = "دروس حضوری";
                }
                else { 
                typeid = 2;
                    TxtType.InnerText = "دروس غیر حضوری";
                }





                ListView1.DataSource = new TafsirLib.Course().LoadType(typeid);
                ListView1.DataBind();
            }
            catch (Exception ex)
            {
                //var err = ex.Message;
            }
        }
    }
}