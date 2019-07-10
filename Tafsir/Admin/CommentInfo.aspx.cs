using System;

namespace Tafsir.Admin
{
    public partial class CommentInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32(Request.QueryString["id"]);
                var objEntity = new TafsirLib.Comments().Get(id);

                txtName.Value = objEntity.Name;
                txtEmail.Value = objEntity.Email;
                txtData.Value = objEntity.DateTime;
                txtActive.Checked = objEntity.ShowMess;

                txtComment.Value = objEntity.Comment;
                txtReply.Value = objEntity.Reply;


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
            }
            catch (Exception ex)
            {
            }
        }
    }
}