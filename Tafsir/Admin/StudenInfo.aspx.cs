using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir.Admin
{
    public partial class StudenInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    var id = Convert.ToInt32(Request.QueryString["id"]);
                    var obj = new TafsirLib.Student().Get(id);

                    txtid.Value = obj.Id.ToString();
                    txtfname.Value = obj.FirstName;
                    txtlname.Value = obj.LastName;
                    txtuname.Value = obj.UserName;
                    txtemail.Value = obj.Email;
                    txttel.Value = obj.Tel;
                    //txtrezom.Value = obj.Rezome;
                    isActivate.Value = Convert.ToInt32(obj.Active) == 1 ? "1" : "2";
                    //gred.Value = obj.Grade;
                }
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
                var entity = new TafsirLib.Entity.StudentEntity
                {
                    Id = Convert.ToInt32(txtid.Value),
                    //Active = (isActivate.Value == "1").ToString(),
                    FirstName = txtfname.Value,
                    LastName = txtlname.Value,
                    UserName = txtuname.Value,
                    Email = txtemail.Value,
                    Tel = txttel.Value,
                    //Rezome = txtrezom.Value,
                    //Active = isActivate.Value=="1"?1.ToString():0.ToString(),
                    //Grade = gred.Value,
                };


                entity.Active = Convert.ToBoolean(isActivate.Value == "1");

                var ret = new TafsirLib.Student().Save(entity);
            }
            catch (Exception)
            {
                //
            }
        }
    }
}