<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="BookInfo.aspx.cs" Inherits="Tafsir.Admin.BookInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>عنوان</p>
        </h2>
        <div class="" style="box-shadow: 0px 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">

            <table style="width: 95%;" dir="rtl">
                <tbody>
                    <tr>
                        <td>
                            <div class="register_form">
                                <h3>ثبت کتب در سایت</h3>
                                <p>لطفاً فرم زیر را به دقت تکمیل نمایید</p>
                                <div class="row">
                                    <div class="col-lg-12 form_group">
                                        <%--<input type="radio" id="book" name="manuscriptType" value="1" checked>کتاب
                        <input type="radio" id="publication" name="manuscriptType" value="2">مقاله<br/>--%>
                                        <input name="BookName" placeholder="عنوان  کتاب" required="" type="text"><br />
                                        <input name="writer" placeholder="نام و نام خانوادگی نویسنده" required="" type="text"><br />
                                        <input name="Publisher" placeholder="نام ناشر" required="" type="text"><br />
                                        <input name="Keyword" placeholder="کلید واژه" required="" type="text"><br />
                                        <input name="Pages" placeholder="تعداد صفحات" pattern="[0-9]" required="" type="text" style="text-align: left; direction: ltr;"><br />
                                        <select id="LastGrade" style="width: 150px;">
                                            <option value="">زبان کتاب / مقاله</option>
                                            <option value="1">فارسی</option>
                                            <option value="2">عربی</option>
                                            <option value="3">انگلیسی</option>
                                        </select><br />
                                        <textarea id="txtTextDescription" name="Description" placeholder="توضیحات" rows="15" type="text" style="width: 400px"></textarea><script>tinymce.init({ selector: '#txtTextDescription' });</script><br />
                                        آپلود فایل
                                            <input type="file" name="Resoumeh" id="Resoumeh" title="لطفاً رزومه خود را در فرمت pdf یا word بارگذاری نمایید" value=" رزومه" accept=".pdf,.doc,.docx" onchange="CheckExtension(this,['pdf','doc','docx']);">
                                    </div>
                                </div>
                                <div class="col-lg-12 text-center">
                                    <br />
                                    <button class="primary-btn">Submit</button>
                                </div>
                            </div>

                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

</asp:Content>
