﻿using System;

namespace Tafsir.Admin
{
    public partial class UserList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ListView1.DataSource = new TafsirLib.User().Load();
                ListView1.DataBind();
            }
            catch (Exception)
            {
                //var err = ex.Message;
            }

        }

        protected void ListDataBound(object sender, EventArgs e)
        {

        }
    }
}