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
                    var objEntity = new TafsirLib.Links().Get(id);

                    txtId.Value = objEntity.Id.ToString();
                    txtAddress.Value = objEntity.Address;
                    txtTitle.Value = objEntity.TitleLink;
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
                var id = Convert.ToInt32(Request.QueryString["id"]);
                var objEntity = new TafsirLib.Links().Get(id);

                objEntity.Address = txtAddress.Value;
                objEntity.TitleLink = txtTitle.Value;
                objEntity.Active = txtChecked.Checked;

                new TafsirLib.Links().Save(objEntity);
            }
            catch (Exception ex)
            {
            }
        }
    }
}