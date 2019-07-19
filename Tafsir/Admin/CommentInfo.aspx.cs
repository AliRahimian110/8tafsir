using System;

namespace Tafsir.Admin
{
    public partial class CommentInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    var id = Convert.ToInt32(Request.QueryString["id"]);
                    var objEntity = new TafsirLib.Comments().Get(id);

                    butDelete.Visible = objEntity.Id > 0;
                    txtName.Value = objEntity.Name;
                    txtEmail.Value = objEntity.Email;
                    txtData.Value = objEntity.DateTime;
                    txtActive.Checked = objEntity.ShowMess;

                    txtComment.InnerText = objEntity.Comment;
                    txtReply.InnerText = objEntity.Reply;
                }
            }
            catch (Exception ex)
            {
                //
            }
        }

        protected void butUpData_OnClick(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32(Request.QueryString["id"]);
                var objEntity = new TafsirLib.Comments().Get(id);
                
                objEntity.ShowMess= txtActive.Checked;
                objEntity.Comment = txtComment.InnerText;
                objEntity.Reply = txtReply.InnerText;

                if (new TafsirLib.Comments().Save(objEntity) > 0)
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('به روز رسانی انجام شد');",true);
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('خطا در به روز رسانی اطلاعات');",true);
                }
            }
            catch (Exception ex)
            {
            }
        }

        protected void butDelete_OnClick(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32(Request.QueryString["id"]);
                var ret = new TafsirLib.Comments().Delete(id);

                if (ret > 0)
                {    
                    //Response.Redirect("CommentsList.aspx");
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('اطلاعات مورد نظر شما حذف شد');window.location.href = 'CommentsList.aspx';", true);
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('خطا در حذف اطلاعات');", true);
                }
            }
            catch (Exception ex)
            {
            }
        }
    }
}