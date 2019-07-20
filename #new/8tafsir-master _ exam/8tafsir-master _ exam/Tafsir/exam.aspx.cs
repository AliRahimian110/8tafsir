using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Tafsir
{
    public partial class exam : System.Web.UI.Page
    {

        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserAuthentication"] == null)
                Response.Redirect("~/login.aspx");
				
            Session[""] = 1;// ((TafsirLib.Entity.UserEntity)Session["UserAuthentication"]).Id;
            if (!IsPostBack)
            {
                exmh_s.Value = "0";
                Label1.Text = "";
            }
            else
            {
                if (exmh_s.Value != "0")
                {
                    SqlCommand sql = new SqlCommand("select * from tbquestion where qs_status = 0 and exam_id = @s", cnn);
                    sql.Parameters.Clear();
                    sql.Parameters.AddWithValue("s", DropDownList1.SelectedValue);
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(sql);
                    if (cnn.State != ConnectionState.Open)
                        sql.Connection.Open();

                    da.Fill(dt);

                    if (cnn.State != ConnectionState.Closed)
                        sql.Connection.Close();

                    if (dt.Rows.Count == 0)
                    {
                        showmessage(sender, "سوال تعریف نشده");
                        return;
                    }

                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        TextBox txQ = new TextBox();
                        txQ.ID = "txQ" + (i).ToString();
                        txQ.Width = new Unit("100%");
                        txQ.TextMode = TextBoxMode.MultiLine;
                        txQ.ReadOnly = true;
                        txQ.BorderStyle = BorderStyle.None;
                        txQ.Text = "سوال " + (i + 1).ToString() + " : " + dt.Rows[i]["question"].ToString();
                        RadioButtonList rdbA = new RadioButtonList();
                        rdbA.ID = "rdbA" + dt.Rows[i]["id"].ToString();
                        rdbA.Width = new Unit("100%");
                        rdbA.RepeatDirection = RepeatDirection.Vertical;
                        rdbA.Items.Add("گزینه الف - " + dt.Rows[i]["an1"].ToString());
                        rdbA.Items.Add("گزینه ب - " + dt.Rows[i]["an2"].ToString());
                        rdbA.Items.Add("گزینه ج - " + dt.Rows[i]["an3"].ToString());
                        rdbA.Items.Add("گزینه د - " + dt.Rows[i]["an4"].ToString());
                        rdbA.Attributes.Add("runat", "server");
                        rdbA.SelectedIndexChanged += RdbA_SelectedIndexChanged;
                        rdbA.AutoPostBack = true;
                        PlaceHolder1.Controls.Add(txQ);
                        PlaceHolder1.Controls.Add(rdbA);
                        PlaceHolder1.Controls.Add(new LiteralControl("<br/>"));
                    }
                    sql = new SqlCommand("select exm_length from Tbexam where id = @id");
                    sql.Parameters.Clear();
                    sql.Parameters.AddWithValue("id", DropDownList1.SelectedValue);
                    sql.Connection = cnn;

                    if (cnn.State != ConnectionState.Open)
                        sql.Connection.Open();

                    int len = Convert.ToInt32(sql.ExecuteScalar());

                    if (cnn.State != ConnectionState.Closed)
                        sql.Connection.Close();
                    //Session["panel123"] = (object)PlaceHolder1;
                    Label1.Text = "مدت زمان پاسخگویی " + len.ToString() + " دقیقه میباشد .   موفق باشید ";
                }
                else
                {
                    PlaceHolder1.Controls.Clear();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sql = new SqlCommand("exec SPExamheaderSet @st,@ex");
            sql.Parameters.Clear();
            sql.Parameters.AddWithValue("ex", DropDownList1.SelectedValue);
            sql.Parameters.AddWithValue("st", Session["student_id"].ToString());
            sql.Connection = cnn;

            if (cnn.State != ConnectionState.Open)
                sql.Connection.Open();

            int ret = Convert.ToInt32(sql.ExecuteScalar());

            if (cnn.State != ConnectionState.Closed)
                sql.Connection.Close();

            if (ret == -1)
            {
                exmh_s.Value = "0";
                showmessage(sender,"خطا در ثبت");
                return;
            }

            if (ret == -2)
            {
                exmh_s.Value = "0";
                showmessage(sender, "آزمون قبلا برای شما ثبت شده است");
                return;
            }

            exmh_s.Value = ret.ToString();
        }

        private void RdbA_SelectedIndexChanged(object sender, EventArgs e)
        {
            RadioButtonList rdc = (RadioButtonList)sender;
            string qid = rdc.ID.Replace("rdbA", "");
            SqlCommand sql = new SqlCommand("exec SPExamdetailSet @examH_id,@qs_id,@ans");
            sql.Parameters.Clear();
            sql.Parameters.AddWithValue("examH_id", exmh_s.Value);
            sql.Parameters.AddWithValue("qs_id", qid);
            sql.Parameters.AddWithValue("ans", rdc.SelectedIndex + 1);
            sql.Connection = cnn;
            if (cnn.State != ConnectionState.Open)
                sql.Connection.Open();

            Convert.ToInt32(sql.ExecuteScalar());

            if (cnn.State != ConnectionState.Closed)
                sql.Connection.Close();
        }

        public void showmessage(object sender, string text)
        {
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", "alert('" + HttpUtility.HtmlEncode(text) + "')", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //int l = ((PlaceHolder)Session["panel123"]).Controls.Count;
            //foreach (Control c in ((PlaceHolder)Session["panel123"]).Controls)
            //{
            //    if (c.GetType() == new RadioButtonList().GetType())
            //    {
            //        RadioButtonList rdc = (RadioButtonList)c;
            //        if (rdc.SelectedIndex > -1)
            //        {
            //            string qid = rdc.ID.Replace("rdbA","");
            //            SqlCommand sql = new SqlCommand("exec SPExamdetailSet @examH_id,@qs_id,@ans");
            //            sql.Parameters.Clear();
            //            sql.Parameters.AddWithValue("examH_id", exmh_s.Value);
            //            sql.Parameters.AddWithValue("qs_id", qid);
            //            sql.Parameters.AddWithValue("ans", rdc.SelectedIndex+1);
            //            sql.Connection = cnn;
            //            if (cnn.State != ConnectionState.Open)
            //                sql.Connection.Open();

            //            Convert.ToInt32(sql.ExecuteScalar());

            //            if (cnn.State != ConnectionState.Closed)
            //                sql.Connection.Close();
            //        }
            //    }
            //}
            SqlCommand sql1 = new SqlCommand("exec SPExamheaderEndSet @ex");
            sql1.Parameters.Clear();
            sql1.Parameters.AddWithValue("ex", exmh_s.Value);
            sql1.Connection = cnn;

            if (cnn.State != ConnectionState.Open)
                sql1.Connection.Open();

            int ret = Convert.ToInt32(sql1.ExecuteScalar());

            if (cnn.State != ConnectionState.Closed)
                sql1.Connection.Close();

            if (ret < 0)
            {
                showmessage(sender, "خطا در ثبت");
                return;
            }
            else
            {
                showmessage(sender, "نتیجه آزمون با موفقیت ثبت شد");
                PlaceHolder1.Controls.Clear();
                Label1.Text = "";
                return;
            }

        }
    }
}