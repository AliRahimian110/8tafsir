﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TafsirAdmin 
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Url.LocalPath.ToLower() == "/index.aspx")
            {
                container.Visible = false;
            }

            var user = (TafsirLib.Entity.UserEntity) Session["UserAuthentication"] ?? new TafsirLib.Entity.UserEntity();

            menoLogin.Visible = user.Id > 0 && user.Active;
        }
    }
}