using System;

namespace Tafsir
{
    public partial class Home : System.Web.UI.MasterPage
    {
        public static string PrevPage { get; set; } = "Index.aspx";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.Url.LocalPath.ToLower() == "/index.aspx")
                {
                    container.Visible = false;
                }

                var user = new TafsirLib.Entity.UserEntity();
                var student = new TafsirLib.Entity.StudentEntity();
                try
                {
                    user = (TafsirLib.Entity.UserEntity)Session["UserAuth"] ?? new TafsirLib.Entity.UserEntity();
                    student = (TafsirLib.Entity.StudentEntity)Session["StudAuth"] ?? new TafsirLib.Entity.StudentEntity();
                }
                catch
                {
                    user = new TafsirLib.Entity.UserEntity();
                    student = new TafsirLib.Entity.StudentEntity();
                }

                if (user.Id > 0 && user.Active)
                {
                    menoLogout.Visible = false;
                    menoStudent.Visible = false;
                    menoUser.Visible = true;
                }
                else if (student.Id > 0 && student.Active)
                {
                    menoLogout.Visible = false;
                    menoStudent.Visible = true;
                    menoUser.Visible = false;
                }
                else
                {
                    menoLogout.Visible = true;
                    menoStudent.Visible = false;
                    menoUser.Visible = false;
                }
            }
            catch { }
        }
    }
}