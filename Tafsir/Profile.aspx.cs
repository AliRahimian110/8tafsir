using System;

namespace Tafsir
{
    public partial class Profile : System.Web.UI.Page
    {
        private TafsirLib.Entity.StudentEntity student = new TafsirLib.Entity.StudentEntity();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["id"].ToLower() == "new")
                {
                    texttitle.InnerHtml = "<b style=\"color:#32cd32\">ثبت نام با موفقیت انجام شد.</b>";
                }
            }
            catch (Exception)
            {
            }

            try
            {student = (TafsirLib.Entity.StudentEntity)Session["StudAuth"];
                    student = new TafsirLib.Student().Get(student.Id);
                if (!IsPostBack)
                {                    
                    txtFirstName.Value = student.FirstName;
                    txtLastName.Value = student.LastName;
                    txtBirthDate.Value = student.BirthDate;
                    txtTel.Value = student.Tel;
                }
            }
            catch (Exception)
            {
                student = new TafsirLib.Entity.StudentEntity();
            }

            if (student.Id <= 0 || student.Active == false)
            {
                Session["StudAuth"] = null;
                Response.Redirect("~\\Login.aspx");
            }
        }

        protected void butSend_OnClick(object sender, EventArgs e)
        {
            try
            {
                student.FirstName = txtFirstName.Value;
                student.LastName = txtLastName.Value;
                student.BirthDate = txtBirthDate.Value;
                student.Tel = txtTel.Value;

                var t = new TafsirLib.Student().Save(student);
            }
            catch (Exception ex) { var t = ex.Message; }
        }
    }
}