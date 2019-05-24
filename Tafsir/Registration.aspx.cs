using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var typeid = Request.QueryString["id"];

                switch (typeid)
                {
                    case "1":
                        titledore.InnerText = "ثبت نام دوره های حضوری";
                        break;

                    case "2":
                        titledore.InnerText = "ثبت نام دوره های مجازی";
                        break;

                    default:
                        typeid = "1";
                        titledore.InnerText = "ثبت نام دوره های حضوری";
                        break;
                }

                    ListView1.DataSource = new TafsirLib.Course().Load(typeid);
                    ListView1.DataBind();
                
            }
            catch (Exception ex)
            {
                var t = ex.Message;
            }
            
        }

        //protected void ButtSave_OnClik(object sender, EventArgs e)
        //{
        //    var itemsToDelete = new List<string>();

        //    var yourListView = ListView1;
        //    try
        //    {
        //        foreach (ListViewItem item in yourListView.Items)
        //        {
        //            CheckBox chkDelete = (CheckBox)item.FindControl("chk");
        //            if (chkDelete.Checked)
        //            {
        //                string yourID = item.DataItem["id"].ToString();
        //                itemsToDelete.Add(yourID);
        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        var t = ex.Message;
        //    }
        //}
    }
}