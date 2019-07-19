using System;

namespace Tafsir
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ListComment.DataSource = new TafsirLib.Comments().Load(false);
                ListComment.DataBind();
            }
            catch (Exception)
            {
                //var err = ex.Message;
            }
        }

        protected void butSend_OnClick(object sender, EventArgs e)
        {
            var comEnt = new TafsirLib.Entity.CommentsEntity
            {
                Email = txtemail.Value,
                Comment = txttext.InnerText,
                Name = txtname.Value,
                NewsId = 0,
                NewsType = 0,
                DateTime = TafsirLib.Tools.Shamsi.DateShamsiBaformat
            };

            var commment=new TafsirLib.Comments();
            if (commment.Save(comEnt) > 0)
            {
                bodydiv.Visible = false;
                TitleH3.InnerText = "نظر شما ثبت شد.";
            }
        }
    }
}