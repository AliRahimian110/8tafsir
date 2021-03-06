﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir.Admin
{
    public partial class SlideInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    var id = Convert.ToInt32(Request.QueryString["id"]);
                    var objEntity = new TafsirLib.Slide().Get(id);

                    butDelete.Visible = objEntity.Id > 0;
                    txtImage.ImageUrl = "http://"+HttpContext.Current.Request.Url.Authority +@"/pic/slide/"+ objEntity.Image;
                    txtChecked.Checked = objEntity.Active;
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
                if (txtFile.HasFile)
                {
                    try
                    {
                        string filename = Path.GetFileName(txtFile.FileName);
                        txtFile.SaveAs(Server.MapPath("~/pic/slide/") + filename);
                        StatusLabel.Text = "براگذاری شده";
                    }
                    catch (Exception ex)
                    {
                        StatusLabel.Text = "خطا در بارکذاری تصویر";
                    }

                    var id = Convert.ToInt32(Request.QueryString["id"]);
                    var objEntity = new TafsirLib.Slide().Get(id);

                    objEntity.Image = txtFile.FileName;
                    objEntity.Active = txtChecked.Checked;

                    if( new TafsirLib.Slide().Save(objEntity) > 0)
                    {
                        txtImage.ImageUrl = "http://" + HttpContext.Current.Request.Url.Authority + @"/pic/slide/" + txtFile.FileName;
                        Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('به روز رسانی انجام شد');", true);
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('خطا در به روز رسانی اطلاعات');", true);
                    }
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
                var ret = new TafsirLib.Slide().Delete(id);

                if (ret > 0)
                {
                    //Response.Redirect("SlideList.aspx");
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('اطلاعات مورد نظر شما حذف شد');window.location.href = 'SlideList.aspx';", true);
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