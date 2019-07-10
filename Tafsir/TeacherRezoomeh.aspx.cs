using System;

namespace Tafsir
{
    public partial class TeacherRezome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32( Request.QueryString["id"]);

                ListView5.DataSource = new TafsirLib.Teacher().Load(id);
                ListView5.DataBind();
            }
            catch (Exception)
            {
                //var err = ex.Message;
            }
        }
    }
}