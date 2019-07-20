<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="LinksInfo.aspx.cs" Inherits="Tafsir.Admin.LinksInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>
                ویرایش لینک های مفید
            </p>
        </h2>
        <div class="innerBox">
            <div class="">
                <div class=" form_group">
                    <p><a href="LinksList.aspx" style="float: right; padding: 2px 5px; margin: 2px 8px">بازگشت</a><br />
                    </p>

                    <table style="width: 95%;" dir="rtl">
                        <tr class="">
                            <td width="10%" align="left"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="left">شناسه:&nbsp;</td>
                            <td>
                                <input runat="server" id="txtId" name="name" readonly="readonly" required="" type="text" size="100" maxlength="100" /><br />
                            </td>
                        </tr>
                        <tr>
                            <td align="left">فعال :</td>
                            <td>
                                <input type="checkbox" runat="server" id="txtChecked" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left">عنوان:&nbsp;</td>
                            <td>
                                <textarea runat="server" id="txtTitle" name="name" rows="2" type="text" style="width: 85%" maxlength="400"></textarea><br />
                            </td>
                        </tr>
                        <tr>
                            <td align="left">آدرس:</td>
                            <td>
                                <input runat="server" id="txtAddress" name="name" required="" type="text" style="width: 85%" maxlength="100" /><br />
                            </td>
                        </tr>
                        <tr>
                            <td align="left"></td>
                            <td>
                                <asp:Button runat="server" ID="Button1" OnClick="butUpData_OnClick" Text="ثبت" />
                                <asp:Button runat="server" ID="butDelete" OnClick="butDelete_OnClick" Text="حذف" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
