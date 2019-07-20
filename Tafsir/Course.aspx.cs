using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir
{
    public partial class Course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //if (!IsPostBack)
                //{
                //    txtTeacher.DataTextField = "LastName";
                //    txtTeacher.DataValueField = "Id";
                //    txtTeacher.DataSource = new TafsirLib.Teacher().ListFullName();
                //    txtTeacher.DataBind();
                //}
            }
            catch (Exception ex)
            {
                var t = ex.Message;
            }

            try
            {
                if (!IsPostBack)
                {
                    var id = Convert.ToInt32(Request.QueryString["id"]);
                    var objEntity = new TafsirLib.Course().Get(id);

                    //butDelete.Visible = objEntity.Id > 0;

                    //txtID.Value = objEntity.Id;
                    txtNumberCourse.InnerText = objEntity.NumberCourse;
                    txtVAHED.InnerText = objEntity.Vahed.ToString();
                    txtTitle.InnerText = objEntity.Title;
                    txtDateStart.InnerText = objEntity.DateStart;
                    txtTimeCourse.InnerText = objEntity.TimeCourse;
                    txtTimeQuiz.InnerText = objEntity.TimeQuiz;
                    txtLength.InnerText = objEntity.Length;
                    txtAddress.InnerText = objEntity.Address;
                    txtDescription.InnerText = objEntity.Description;
                    //txtLink.Value = objEntity.Link;
                    //txtActive.Checked = objEntity.Active;


                    txtTypeCourse.InnerText = objEntity.TypeCourse == 1 ? "حضوری" : "غیر حضوری";

                    var tea = new TafsirLib.Teacher().Get(objEntity.TeacherId);
                    txtTeacher.InnerText = tea.FirstName + ' ' + tea.LastName;
                }
            }
            catch (Exception ex)
            {
                //
            }
        }

        //protected void butUpData_OnClick(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        var id = Convert.ToInt32(Request.QueryString["id"]);
        //        var objEntity = new TafsirLib.Course().Get(id);

        //        //objEntity.Id=txtID.Value;
        //        objEntity.NumberCourse = txtNumberCourse.Value;
        //        objEntity.Title = txtTitle.Value;
        //        objEntity.DateStart = txtDateStart.Value;
        //        objEntity.TimeCourse = txtTimeCourse.Value;
        //        objEntity.TimeQuiz = txtTimeQuiz.Value;
        //        objEntity.Length = txtLength.Value;
        //        objEntity.Address = txtAddress.Value;
        //        objEntity.Description = txtDescription.InnerText;
        //        objEntity.Link = txtLink.Value;
        //        objEntity.Active = txtActive.Checked;
        //        objEntity.TypeCourse = (txtTypeCourse.Value == "2") ? 2 : 1;

        //        var temp = 0;
        //        int.TryParse(txtTeacher.SelectedValue, out temp);
        //        objEntity.TeacherId = temp;
                
        //        int.TryParse(txtVAHED.Value, out temp);
        //        objEntity.Vahed = temp;
                
        //        if (new TafsirLib.Course().Save(objEntity) > 0)
        //        {
        //            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('به روز رسانی انجام شد');", true);
        //        }
        //        else
        //        {
        //            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('خطا در به روز رسانی اطلاعات');", true);
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //    }
        //}

        //protected void butDelete_OnClick(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        var id = Convert.ToInt32(Request.QueryString["id"]);
        //        var ret = new TafsirLib.Course().Delete(id);

        //        if (ret > 0)
        //        {
        //            //Response.Redirect("CourseList.aspx");
        //            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('اطلاعات مورد نظر شما حذف شد');window.location.href = 'CourseList.aspx';", true);
        //        }
        //        else
        //        {
        //            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('خطا در حذف اطلاعات');", true);
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //    }
        //}
    }
}