﻿using System;
using System.Web.UI.WebControls;

namespace Tafsir
{
    public partial class TeacherSurvey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var id = Convert.ToInt32(Request.QueryString["id"]);

                ListView5.DataSource = new TafsirLib.Teacher().Load(id);
                ListView5.DataBind();
                
                ListView1.DataSource = new TafsirLib.QuestionNazarsanji().Load();
                ListView1.DataBind();
            }
            catch (Exception)
            {
                //var err = ex.Message;
            }
        }
        protected void butUpData_OnClick(object sender, EventArgs e)
        {
            try
            {
                tt();
            }
            catch (Exception ex) { }
        }

        private void tt()
        {
            try
            {
                var t = ListView1.Items[1];
                var c = (RadioButton)t.FindControl("RButtonList1");
                var v = c.Text;
            }
            catch(Exception ex) {
                var m = ex.Message;
            }
        }
    }
}