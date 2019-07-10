using System;
using System.IO;

namespace Tafsir.Admin
{
    public partial class NewsInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32(Request.QueryString["id"]);
                var news = new TafsirLib.News().Get(id);



                txtTitleNews.Value = news.TitleNews;
                txtTextNews.Value = news.TextNews;
                txtDecs.Value = news.Description;
                //pcal1.Value = news.InsertDate;


            }
            catch (Exception)
            {
                //var err = ex.Message;
            }
        }

        protected void butAddNews_OnClick(object sender, EventArgs e)
        {
            try
            {

                var newsEntity = new TafsirLib.Entity.NewsEntity
                {
                    Active = isActivate.Value == "1",
                    InsertUser = 1,
                    Writer = "",
                    Image = UploadFile(),//"image.jpg",
                    Viewed = 0,
                    
                    TitleNews = txtTitleNews.Value,
                    TextNews = txtTextNews.Value,
                    Description = txtDecs.Value,
                    InsertDate = TafsirLib.Tools.Shamsi.DateShamsiBaformat,
                    Keyword = ""
                    
                };

                switch (txtnewstype.Value)
                {
                    case "1":
                        newsEntity.TypeId = 1;
                        break;

                    case "2":
                        newsEntity.TypeId = 2;
                        break;

                        default:
                        newsEntity.TypeId = 1;
                        break;
                }


                var news=new TafsirLib.News();
               var t = news.Save(newsEntity);


            }
            catch (Exception)
            {
                //
            }
        }

        protected string UploadFile()
        {
            try
            {
                //var randomname= Guid.NewGuid().ToString("N");
                var folderPath = Server.MapPath("~/pic/news/");
                var filepath = folderPath + Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(filepath);

                return  Path.GetFileName(FileUpload1.FileName);
            }
            catch (Exception)
            {
                return "image.jpg";
            }
        }
    }
}