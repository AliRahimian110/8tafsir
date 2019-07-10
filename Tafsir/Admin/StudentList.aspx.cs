using System;

namespace Tafsir.Admin
{
    public partial class StudentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ListView1.DataSource = new TafsirLib.Student().Load();
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