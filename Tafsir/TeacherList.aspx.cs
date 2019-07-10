using System;

namespace Tafsir
{
    public partial class TeacherList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ListView5.DataSource = new TafsirLib.Teacher().Load();
                ListView5.DataBind();
            }
            catch (Exception)
            {
                //var err = ex.Message;
            }
        }
    }
}