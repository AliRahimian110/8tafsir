<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="NewsInfo.aspx.cs" Inherits="Tafsir.Admin.NewsInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>خبر</p>
        </h2>
        <div class="innerBox">
            <p><a href="NewsList.aspx" style="float: right; padding: 2px 5px; margin: 2px 8px">بازگشت</a><br />
            </p>
            <table style="width: 95%;" dir="rtl">
                <tr>
                    <td>
                        <div class="register_form">
                            <h3>افزودن خبر</h3>
                            <table style="width: 95%; margin-right: 1%;">
                                <tr>
                                    <td>
                                        <input runat="server" id="txtTitleNews" name="name" placeholder="عنوان خبر" required="" type="text" size="100" maxlength="100" style="width: 85%;" /><br />
                                        <tr>
                                            <td>
                                                <input type="text" id="pcal1" class="pdate" placeholder="تاریخ انتشار" required="" /><script type="text/javascript">var objCal1 = new AMIB.persianCalendar('pcal1');</script><br />
                                                <tr>
                                                    <td>
                                                        <select runat="server" id="txtnewstype" style="width: 150px;">
                                                            <option value="">-- نوع خبر --</option>
                                                            <option value="1">خبر</option>
                                                            <option value="2">رخداد</option>
                                                            <option value="3">مقالات قرآنی و تفسیری</option>
                                                        </select><br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <select runat="server" id="isActivate" style="width: 150px;">
                                                            <option value="">--  فعال/غیر فعال  --</option>
                                                            <option value="1">فعال</option>
                                                            <option value="2">غیر فعال</option>
                                                        </select><br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <textarea runat="server" id="txtDecs" name="name" placeholder="خلاصه خبر" rows="5" type="text" style="width: 85%" maxlength="400"></textarea><br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <textarea runat="server" id="txtTextNews" name="name" placeholder="متن خبر" rows="10" type="text" style="width: 85%"></textarea><script>tinymce.init({ selector: '#ContentPlaceHolder1_txtTextNews' });</script><br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>آپلود فایل تصویری<input type="file" name="imageFile" id="imageFile" title="لطفاً یک فایل تصویری انتخاب کنید!" value="تصویر خبر" accept=".jpg,.gif" onchange="CheckExtension(this,['jpg','gif']);" /></td>
                                                </tr>
                            </table>

                            <div class="col-lg-12 text-center">
                                <br />
                                <asp:Button runat="server" ID="butAddNews" OnClick="butAddNews_OnClick" Text="ثبت" />
                                <br />
                            </div>
                        </div>
                        <br />
                        <br />
                    </td>
                </tr>
            </table>

        </div>

    </div>


</asp:Content>
