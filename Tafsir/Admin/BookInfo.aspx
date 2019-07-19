<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="BookInfo.aspx.cs" Inherits="Tafsir.Admin.BookInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>عنوان</p>
        </h2>
        <div class="innerBox">
            <table style="width: 95%;" dir="rtl">
                <tr>
                    <td>
                        <div class="register_form">
                            <p>
                                <a href="BookList.aspx" style="float: right; padding: 2px 5px; margin: 2px 8px">بازگشت</a><br />
                            </p>
                            <p class="textTozihat">لطفاً فرم زیر را به دقت تکمیل نمایید</p>
                            <table style="width: 95%; margin-right: 1%;">
                                <tr>
                                    <td><%--<input type="radio" id="book" name="manuscriptType" value="1" checked>کتاب</td></tr>
                                <tr><td><input type="radio" id="publication" name="manuscriptType" value="2">مقاله<br/>--%></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input name="BookName" placeholder="عنوان  کتاب" required="" type="text"><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input name="writer" placeholder="نام و نام خانوادگی نویسنده" required="" type="text"><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input name="Publisher" placeholder="نام ناشر" required="" type="text"><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input name="Keyword" placeholder="کلید واژه" required="" type="text"><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input name="Pages" placeholder="تعداد صفحات" pattern="[0-9]+" required="" type="text" style="text-align: left; direction: ltr;"><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <select id="LastGrade" style="width: 150px;">
                                            <option value="">زبان کتاب / مقاله</option>
                                            <option value="1">فارسی</option>
                                            <option value="2">عربی</option>
                                            <option value="3">انگلیسی</option>
                                        </select><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <textarea id="txtTextDescription" name="Description" placeholder="توضیحات" rows="15" type="text" style="width: 80%"></textarea><script>tinymce.init({ selector: '#txtTextDescription' });</script><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>آپلود فایل<input type="file" name="Resoumeh" id="Resoumeh" title="لطفاً رزومه خود را در فرمت pdf یا word بارگذاری نمایید" value=" رزومه" accept=".pdf,.doc,.docx" onchange="CheckExtension(this,['pdf','doc','docx']);"></td>
                                </tr>
                            </table>
                            <div class="text-center">
                                <br />
                                <button class="primary-btn">ارسال</button>
                                <br />
                            </div>
                        </div>

                    </td>
                </tr>
            </table>
        </div>
    </div>

</asp:Content>
