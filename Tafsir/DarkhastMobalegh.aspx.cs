﻿using System;

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
                Description = txtdoc.InnerText,
                InaertDate = TafsirLib.Tools.Shamsi.DateShamsiBaformat
            };


            var mobaleg = new TafsirLib.Mobaleg();
            if (mobaleg.Save(mobalegentity)>0)
            {
                bodydiv.Visible = false;
                TitleH3.InnerText = "درخواست ثبت شد.";
            }
        }
    }
}