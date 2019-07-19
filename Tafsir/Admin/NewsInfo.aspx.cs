using System;
using System.IO;

namespace Tafsir.Admin
{
    public partial class NewsInfo : System.Web.UI.Page
    {

        //protected string InsertDate { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    var id = Convert.ToInt32(Request.QueryString["id"]);
                    var objEntity = new TafsirLib.News().Get(id);

                    txtTitleNews.Value = objEntity.TitleNews;
                    txtWriter.Value = objEntity.Writer;
                    txtnewstype.Value = objEntity.TypeId.ToString();
                    isActivate.SelectedIndex = objEntity.Active ? 0 : 1;
                    txtDecs.InnerText = objEntity.Description;
                    txtTextNews.InnerText = objEntity.TextNews;
                    txtdate.Value = objEntity.InsertDate;

                    //this.InsertDate = objEntity.InsertDate;
                }
            }
            catch (Exception ex)
            {
                var err = ex.Message;
            }
        }
        
        protected void butUpData_OnClick(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32(Request.QueryString["id"]);
                var objEntity = new TafsirLib.News().Get(id);

                butDelete.Visible = objEntity.Id > 0;
                objEntity.Active = isActivate.Value == "1";
                objEntity.InsertUser = 1;
                //objEntity.Viewed = 0;

                objEntity.TitleNews = txtTitleNews.Value;
                objEntity.Writer = txtWriter.Value;
                objEntity.TextNews = txtTextNews.InnerText;
                objEntity.Description = txtDecs.InnerText;
                objEntity.InsertDate = txtdate.Value;
                //InsertDate = TafsirLib.Tools.Shamsi.DateShamsiBaformat,
                //objEntity.Keyword = "";

                objEntity.TypeId = (txtnewstype.Value == "2") ? 2 : 1;

                //objEntity.InsertDate = Page.Request.Form["pcal1"];


                if (txtFile.HasFile)
                {                   
                    objEntity.Image = UploadFile();
                }

                else if (!txtFile.HasFile && objEntity.Image.Length > 0)
                {
                }
                else
                {
                    objEntity.Image = "image.jpg";
                }

                if(new TafsirLib.News().Save(objEntity)>0)
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('به روز رسانی انجام شد');", true);
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('خطا در به روز رسانی اطلاعات');", true);
                }

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
                string filename = Path.GetFileName(txtFile.FileName);
                txtFile.SaveAs(Server.MapPath("~/pic/news/") + filename);
                return filename;
            }
            catch (Exception)
            {
                return "image.jpg";
            }
        }

        protected void butDelete_OnClick(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32(Request.QueryString["id"]);
                var ret = new TafsirLib.News().Delete(id);

                if (ret > 0)
                {
                    //Response.Redirect("NewsList.aspx");
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('اطلاعات مورد نظر شما حذف شد');window.location.href = 'NewsList.aspx';", true);
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