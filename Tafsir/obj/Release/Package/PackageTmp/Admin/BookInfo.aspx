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
                            <p class="textTozihat">لطفاً فرم زير را به دقت تکميل نماييد</p>
                            <table style="width: 95%; margin-right: 1%;">

                                <tr>
                                    <td align="left" style="width: 150px">عنوان  کتاب : </td>
                                    <td>
                                        <input runat="server" id="txtBookName" name="name" placeholder="عنوان  کتاب" required="" type="text" style="width:300px"/><br />
                                    </td>
                                </tr>

                                <tr>
                                    <td align="left">نويسنده : </td>
                                    <td>
                                        <input runat="server" id="txtwriter" placeholder="نام و نام خانوادگي نويسنده" required="" type="text"  style="width:300px"/><br />
                                    </td>
                                </tr>

                                <tr>
                                    <td align="left">ناشر : </td>
                                    <td>
                                        <input runat="server" id="txtPublisher" placeholder="نام ناشر" required="" type="text"  style="width:300px"/><br />
                                    </td>
                                </tr>

                                <tr>
                                    <td align="left">صفحات : </td>
                                    <td>
                                        <input runat="server" id="txtPages" name="Pages" placeholder="تعداد صفحات" pattern="[0-9]+" required="" type="text" style="text-align: left; direction: ltr;" /><br />
                                    </td>
                                </tr>

                                <tr>
                                    <td align="left">زبان : </td>
                                    <td>
                                        <select runat="server" id="txtLan" style="width: 150px;">
                                            <option value="1">فارسي</option>
                                            <option value="2">عربي</option>
                                            <option value="3">انگليسي</option>
                                        </select><br />
                                    </td>
                                </tr>

                                <tr>
                                    <td align="left">توضیحات : </td>
                                    <td>
                                        <textarea runat="server" id="txtDescription" name="Description" placeholder="توضيحات" rows="15" type="text" style="width: 80%"></textarea><script>tinymce.init({ selector: '#txtDescription' });</script><br />
                                    </td>
                                </tr>

                                <tr>
                                    <td align="left">کليد واژه : </td>
                                    <td>
                                        <textarea runat="server" id="txtKeyword" name="Keyword" placeholder="توضيحات" rows="15" type="text" style="width: 80%"></textarea><script>tinymce.init({ selector: '#txtKeyword' });</script><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left"></td>
                                    <td>
                                        <asp:Button runat="server" ID="butAddNews" OnClick="butUpData_OnClick" Text="ثبت" /><br />
                                    </td>
                                </tr>
                            </table>
                        </div>

                    </td>
                </tr>
            </table>
        </div>
    </div>

</asp:Content>
