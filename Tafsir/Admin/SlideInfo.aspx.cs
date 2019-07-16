using System;
using System.Collections.Generic;
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
                    var obj = new TafsirLib.Slide().Get(id);

                    txtQuestion.Value = obj.Image;
                    txtChecked.Checked = obj.Active;
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
                var obj = new TafsirLib.Slide().Get(id);

                obj.Image = txtQuestion.Value;
                obj.Active = txtChecked.Checked;

                new TafsirLib.Slide().Save(obj);
            }
            catch (Exception ex)
            {
            }
        }
    }
}