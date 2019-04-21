using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tafsir
{
    public partial class DarkhastMobalegh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void butSend_OnClick(object sender, EventArgs e)
        {
            var mobalegentity = new TafsirLib.Entity.MobalegEntity
            {
                FirstName = txtname.Value,
                ComName = txtnamecom.Value,
                Tel = txttel.Value,
                Email = txtemail.Value,
                Description = txtdoc.Value,
                InaertDate = TafsirLib.Tools.Shamsi.DateShamsiBaformat
            };


            var mobaleg = new TafsirLib.Mobaleg();
            mobaleg.Save(mobalegentity);
        }
    }
}