using System;

namespace Tafsir
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void butSend_OnClick(object sender, EventArgs e)
        {
            var comEnt = new TafsirLib.Entity.CommentsEntity
            {
                Email = txtemail.Value,
                Comment = txttext.Value,
                Name = txtname.Value,
                NewsId = 0,
                NewsType = 0,
                DateTime = TafsirLib.Tools.Shamsi.DateShamsiBaformat
            };

            var commment=new TafsirLib.Comments();
            if (commment.Save(comEnt) > 0)
            {
                bodydiv.Visible = false;
                TitleH3.InnerText = "درخواست ثبت شد.";
            }
        }
    }
}