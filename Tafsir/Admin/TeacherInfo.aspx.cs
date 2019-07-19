using System;

namespace Tafsir.Admin
{
    public partial class TeacherInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    var id = Convert.ToInt32(Request.QueryString["id"]);
                    var objEntity = new TafsirLib.Teacher().Get(id);

                    txtid.Value = objEntity.Id.ToString();
                    txtfname.Value = objEntity.FirstName;
                    txtlname.Value = objEntity.LastName;
                    txtuname.Value = objEntity.UserName;
                    txtemail.Value = objEntity.Email;
                    txttel.Value = objEntity.Tel;
                    txtrezom.Value = objEntity.Rezome;
                    isActivate.Value = Convert.ToInt32(objEntity.Active) == 1 ? "1" : "2";
                    gred.Value = objEntity.Grade;
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
                var objEntity = new TafsirLib.Entity.TeacherEntity
                {
                    Id=Convert.ToInt32(txtid.Value),
                    //Active = (isActivate.Value == "1").ToString(),
                    FirstName = txtfname.Value,
                    LastName = txtlname.Value,
                    UserName = txtuname.Value,
                    Email = txtemail.Value,
                    Tel = txttel.Value,
                    Rezome = txtrezom.Value,
                    //Active = isActivate.Value=="1"?1.ToString():0.ToString(),
                    Grade = gred.Value,
                };
                

                objEntity.Active = Convert.ToBoolean (isActivate.Value == "1").ToString();

                var ret = new TafsirLib.Teacher().Save(objEntity);
            }
            catch (Exception)
            {
                //
            }
        }
    }
}