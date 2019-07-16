using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir.Admin
{
    public partial class LinksInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    var id = Convert.ToInt32(Request.QueryString["id"]);
                    var obj = new TafsirLib.Links().Get(id);

                    txtId.Value = obj.Id.ToString();
                    txtAddress.Value = obj.Address;
                    txtTitle.Value = obj.TitleLink;
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
                var obj = new TafsirLib.Links().Get(id);

                obj.Address = txtAddress.Value;
                obj.TitleLink = txtTitle.Value;
                obj.Active = txtChecked.Checked;

                new TafsirLib.Links().Save(obj);
            }
            catch (Exception ex)
            {
            }
        }
    }
}