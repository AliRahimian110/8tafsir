﻿using System;

namespace Tafsir.Admin
{
    public partial class TeacherInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32(Request.QueryString["id"]);
                var teacher = new TafsirLib.Teacher().Get(id);
               
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
                    Image = "image.jpg",
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
    }
}