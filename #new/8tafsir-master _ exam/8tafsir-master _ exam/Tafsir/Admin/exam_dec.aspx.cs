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
    public partial class exam_dec : System.Web.UI.Page
    {

        SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clear();
                clear_1();
                exm_ss.Value = "-1";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            clear();
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (Menu1.SelectedValue == "0")
                MultiView1.SetActiveView(View1);
            else
            if (Menu1.SelectedValue == "1")
                MultiView1.SetActiveView(View2);
            else
            if (Menu1.SelectedValue == "2")
                MultiView1.SetActiveView(View3);
        }

        protected void save_exm_Click(object sender, EventArgs e)
        {
            if (exm_title.Text.Trim().Length == 0)
            {
                showmessage(sender, "عنوان آزمون را وارد کنید");
                return;
            }
            if (dd_course.SelectedIndex < 0)
            {
                showmessage(sender, "دوره آموزشی را انتخاب کنید");
                return;
            }
            if (exm_len.Text.Trim().Length == 0)
            {
                showmessage(sender, "مدت آزمون را وارد کنید");
                return;
            }
            if (exm_date.Text.Trim().Length == 0)
            {
                showmessage(sender, "تاریخ برگزاری آزمون را وارد کنید");
                return;
            }
            if (exm_time.Text.Trim().Length == 0)
            {
                showmessage(sender, "زمان برگزاری آزمون را وارد کنید");
                return;
            }
            string date = exm_date.Text.Trim();
            if (date.Substring(6, 1) == "/")
            {
                date = date.Substring(0, 5) + "0" + date.Substring(5);
            }
            if (date.Length == 9)
            {
                date = date.Substring(0, 8) + "0" + date.Substring(8);
            }
            SqlCommand sql = new SqlCommand("exec SPExamSet @id,@title,@c_id,@len,@date,@time");
            sql.Parameters.Clear();
            sql.Parameters.AddWithValue("id",exm_s.Value);
            sql.Parameters.AddWithValue("title",exm_title.Text.Trim());
            sql.Parameters.AddWithValue("c_id",dd_course.SelectedItem.Value);
            sql.Parameters.AddWithValue("len",exm_len.Text);
            sql.Parameters.AddWithValue("date",date);
            sql.Parameters.AddWithValue("time", exm_time.Text);
            sql.Connection = cnn;

            if (cnn.State != ConnectionState.Open)
                sql.Connection.Open();

            int ret = Convert.ToInt32(sql.ExecuteScalar());

            if (cnn.State != ConnectionState.Closed)
                sql.Connection.Close();

            if (exm_s.Value == "0")
            {
                if (ret > 0)
                {
                    showmessage(sender,"آزمون با موفقیت ثبت شد");
                    GridView1.DataBind();
                    clear();
                    return;
                }
                else
                {
                    showmessage(sender, "خطا در ثبت");
                    return;
                }
            }
            else
            {
                if (ret.ToString()  == exm_s.Value)
                {
                    showmessage(sender, "تغییرات با موفقیت ثبت شد");
                    GridView1.DataBind();
                    clear();
                    return;
                }
                else
                {
                    showmessage(sender, "خطا در ثبت");
                    return;
                }
            }
        }

        private void clear()
        {
            exm_s.Value = "0";
            exm_date.Text = "";
            exm_time.Text = "";
            exm_len.Text = "";
            exm_title.Text = "";
            dd_course.SelectedIndex = -1;
            exm_title.Focus();
        }

        private void clear_1()
        {
            qs_s.Value = "0";
            question.Text = "";
            ans_1.Text = "";
            ans_2.Text = "";
            ans_3.Text = "";
            ans_4.Text = "";
            ans_c.Text = "";
            p_score.Text = "";
            n_score.Text = "0";
        }

        public void showmessage(object sender, string text)
        {
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", "alert('" + HttpUtility.HtmlEncode(text) + "')", true);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand sql = new SqlCommand("select * from tbexam where id = @s", cnn);
            sql.Parameters.Clear();
            sql.Parameters.AddWithValue("s",GridView1.SelectedRow.Cells[1].Text);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(sql);
            if (cnn.State != ConnectionState.Open)
                sql.Connection.Open();

            da.Fill(dt);

            if (cnn.State != ConnectionState.Closed)
                sql.Connection.Close();
            if (dt.Rows.Count != 1)
            {
                showmessage(sender, "خطا در بارگزاری");
                return;
            }
            exm_s.Value = dt.Rows[0][0].ToString();
            exm_date.Text = dt.Rows[0][4].ToString();
            exm_len.Text = dt.Rows[0][3].ToString();
            exm_time.Text = dt.Rows[0][5].ToString();
            exm_title.Text = dt.Rows[0][1].ToString();
            dd_course.SelectedValue = dt.Rows[0][2].ToString();
        }

        protected void del_exm_Click(object sender, EventArgs e)
        {
            if (exm_s.Value == "0")
            {
                showmessage(sender, "آزمونی انتخاب نشده است");
                return;
            }
            SqlCommand sql = new SqlCommand("exec SPExamSet @id,@title,@c_id,@len,@date,@time");
            sql.Parameters.Clear();
            sql.Parameters.AddWithValue("id", -1 * Convert.ToInt32(exm_s.Value));
            sql.Parameters.AddWithValue("title", "");
            sql.Parameters.AddWithValue("c_id", "");
            sql.Parameters.AddWithValue("len", "");
            sql.Parameters.AddWithValue("date", "");
            sql.Parameters.AddWithValue("time", "");
            sql.Connection = cnn;

            if (cnn.State != ConnectionState.Open)
                sql.Connection.Open();

            int ret = Convert.ToInt32(sql.ExecuteScalar());

            if (cnn.State != ConnectionState.Closed)
                sql.Connection.Close();

            if (exm_s.Value != "-1")
            {
                if (ret.ToString() == exm_s.Value)
                {
                    showmessage(sender, "آزمون با موفقیت حذف شد");
                    GridView1.DataBind();
                    clear();
                    return;
                }
                else
                {
                    showmessage(sender, "خطا در حذف");
                    return;
                }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (qs_s.Value == "0")
            {
                showmessage(sender, "سوالی انتخاب نشده است");
                return;
            }
            SqlCommand sql = new SqlCommand("exec SPQuestionSet @Id, @exam_id, @question, @ans_1, @ans_2, @ans_3, @ans_4, @ans_c, @p_score, @n_score");
            sql.Parameters.Clear();
            sql.Parameters.AddWithValue("id", "-"+qs_s.Value);
            sql.Parameters.AddWithValue("exam_id", exm_ss.Value);
            sql.Parameters.AddWithValue("question", question.Text.Trim());
            sql.Parameters.AddWithValue("ans_1", ans_1.Text.Trim());
            sql.Parameters.AddWithValue("ans_2", ans_2.Text.Trim());
            sql.Parameters.AddWithValue("ans_3", ans_3.Text.Trim());
            sql.Parameters.AddWithValue("ans_4", ans_4.Text.Trim());
            sql.Parameters.AddWithValue("ans_c", ans_c.Text.Trim());
            sql.Parameters.AddWithValue("p_score", p_score.Text.Trim());
            sql.Parameters.AddWithValue("n_score", n_score.Text.Trim());
            sql.Connection = cnn;

            if (cnn.State != ConnectionState.Open)
                sql.Connection.Open();

            int ret = Convert.ToInt32(sql.ExecuteScalar());

            if (cnn.State != ConnectionState.Closed)
                sql.Connection.Close();

            if (qs_s.Value != "-1")
            {
                if (ret.ToString() == qs_s.Value)
                {
                    showmessage(sender, "سوال با موفقیت حذف شد");
                    GridView2.DataBind();
                    clear();
                    return;
                }
                else
                {
                    showmessage(sender, "خطا در حذف");
                    return;
                }
            }
        }

        protected void qs_save_Click(object sender, EventArgs e)
        {
            if (dd_exam.SelectedIndex < 0)
            {
                showmessage(sender, " آزمون را انتخاب کنید");
                return;
            }
            if (question.Text.Trim().Length == 0)
            {
                showmessage(sender, "عنوان سوال وارد نشده");
                return;
            }
            if (ans_1.Text.Trim().Length == 0)
            {
                showmessage(sender, "'گزینه اول وارد نشده");
                return;
            }
            if (ans_2.Text.Trim().Length == 0)
            {
                showmessage(sender, "'گزینه دوم وارد نشده");
                return;
            }
            if (ans_3.Text.Trim().Length == 0)
            {
                showmessage(sender, "'گزینه سوم وارد نشده");
                return;
            }
            if (ans_4.Text.Trim().Length == 0)
            {
                showmessage(sender, "'گزینه چهارم وارد نشده");
                return;
            }
            if (ans_c.Text.Trim().Length == 0)
            {
                showmessage(sender, "گزینه صحیح انتخاب نشده");
                return;
            }
            if (p_score.Text.Trim().Length == 0)
            {
                showmessage(sender, "نمره سوال وارد نشده");
                return;
            }
            if (n_score.Text.Trim().Length == 0)
            {
                showmessage(sender, "نمره منفی وارد نشده");
                return;
            }
            SqlCommand sql = new SqlCommand("exec SPQuestionSet @Id, @exam_id, @question, @ans_1, @ans_2, @ans_3, @ans_4, @ans_c, @p_score, @n_score");
            sql.Parameters.Clear();
            sql.Parameters.AddWithValue("id", qs_s.Value);
            sql.Parameters.AddWithValue("exam_id",exm_ss.Value);
            sql.Parameters.AddWithValue("question", question.Text.Trim());
            sql.Parameters.AddWithValue("ans_1", ans_1.Text.Trim());
            sql.Parameters.AddWithValue("ans_2", ans_2.Text.Trim());
            sql.Parameters.AddWithValue("ans_3", ans_3.Text.Trim());
            sql.Parameters.AddWithValue("ans_4", ans_4.Text.Trim());
            sql.Parameters.AddWithValue("ans_c", ans_c.Text.Trim());
            sql.Parameters.AddWithValue("p_score", p_score.Text.Trim());
            sql.Parameters.AddWithValue("n_score", n_score.Text.Trim());
            sql.Connection = cnn;

            if (cnn.State != ConnectionState.Open)
                sql.Connection.Open();

            int ret = Convert.ToInt32(sql.ExecuteScalar());

            if (cnn.State != ConnectionState.Closed)
                sql.Connection.Close();

            if (qs_s.Value == "0")
            {
                if (ret > 0)
                {
                    showmessage(sender, "سوال با موفقیت ثبت شد");
                    GridView2.DataBind();
                    clear_1();
                    return;
                }
                else
                {
                    showmessage(sender, "خطا در ثبت");
                    return;
                }
            }
            else
            {
                if (ret.ToString() == qs_s.Value)
                {
                    showmessage(sender, "تغییرات با موفقیت ثبت شد");
                    GridView2.DataBind();
                    clear_1();
                    return;
                }
                else
                {
                    showmessage(sender, "خطا در ثبت");
                    return;
                }
            }
        }

        protected void qs_cancel_Click(object sender, EventArgs e)
        {
            clear_1();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            clear_1();
            exm_ss.Value = dd_exam.SelectedValue;
            GridView2.DataBind();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand sql = new SqlCommand("select * from tbquestion where id = @s", cnn);
            sql.Parameters.Clear();
            sql.Parameters.AddWithValue("s", GridView2.SelectedRow.Cells[1].Text);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(sql);
            if (cnn.State != ConnectionState.Open)
                sql.Connection.Open();

            da.Fill(dt);

            if (cnn.State != ConnectionState.Closed)
                sql.Connection.Close();
            if (dt.Rows.Count != 1)
            {
                showmessage(sender, "خطا در بارگزاری");
                return;
            }
            qs_s.Value = dt.Rows[0][0].ToString();
            question.Text = dt.Rows[0][2].ToString();
            ans_1.Text = dt.Rows[0][3].ToString();
            ans_2.Text = dt.Rows[0][4].ToString();
            ans_3.Text = dt.Rows[0][5].ToString();
            ans_4.Text = dt.Rows[0][6].ToString();
            ans_c.Text = dt.Rows[0][7].ToString();
            p_score.Text = dt.Rows[0][8].ToString();
            n_score.Text = dt.Rows[0][9].ToString();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            GridView3.DataBind();
        }
    }
}