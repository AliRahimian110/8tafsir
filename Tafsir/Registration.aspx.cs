using System;
using System.Web;
using TafsirLib.Entity;

namespace Tafsir
{
    public partial class Registration : System.Web.UI.Page
    {
        private TafsirLib.Entity.StudentEntity Student { get; set; }=new StudentEntity();
        protected bool IsLogin()
        {
            try
            {
                Student = (TafsirLib.Entity.StudentEntity) Session["StudAuth"] ??
                           new TafsirLib.Entity.StudentEntity();

                if (Student.Id > 0)
                {
                    return true;
                }
                Response.Redirect("Login.aspx");
                return false;
            }
            catch (Exception)
            {
                return false;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Home.PrevPage = HttpContext.Current.Request.Url.AbsoluteUri; //"Registration.aspx";
            }
            catch (Exception) { }

            try
            {
                if (!IsLogin())
                {
                    return;
                }

                var crEntity = new CourseRegistrationEntity
                {
                    CourseId = Convert.ToInt32(Request.QueryString["Course"]),
                    StudentId = Student.Id,
                    DateTime = TafsirLib.Tools.Shamsi.DateShamsiBaformat
                };

                var cr = new TafsirLib.CourseRegistration().Save(crEntity);
            }
            catch (Exception ex)
            {
                var t = ex.Message;
            }

            try
            {
                if (!IsLogin())
                {
                    return;
                }

                var typeid = Request.QueryString["id"];

                switch (typeid)
                {
                    case "1":
                        titledore.InnerText = "ثبت نام دوره های حضوری";
                        break;

                    case "2":
                        titledore.InnerText = "ثبت نام دوره های مجازی";
                        break;

                    default:
                        typeid = "1";
                        titledore.InnerText = "ثبت نام دوره های حضوری";
                        break;
                }

                ListView1.DataSource = new TafsirLib.Course().Load(typeid, Student.Id.ToString());
                ListView1.DataBind();
            }
            catch (Exception ex)
            {
                var t = ex.Message;
            }
        }

        //protected void ButtSave_OnClik(object sender, EventArgs e)
        //{
        //    var itemsToDelete = new List<string>();

        //    var yourListView = ListView1;
        //    try
        //    {
        //        foreach (ListViewItem item in yourListView.Items)
        //        {
        //            CheckBox chkDelete = (CheckBox)item.FindControl("chk");
        //            if (chkDelete.Checked)
        //            {
        //                string yourID = item.DataItem["id"].ToString();
        //                itemsToDelete.Add(yourID);
        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        var t = ex.Message;
        //    }
        //}
    }
}