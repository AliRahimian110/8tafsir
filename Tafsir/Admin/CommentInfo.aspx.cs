using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir.Admin
{
    public partial class CommentInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32(Request.QueryString["idb"]);
                var news = new TafsirLib.Comments().Get(id);



                txtName.Value = news.Name;
                txtEmail.Value = news.Email;
                txtData.Value = news.DateTime;


                txtComment.Value = news.Comment;
                txtReply.Value = news.Reply;


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