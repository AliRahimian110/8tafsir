<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="SlideInfo.aspx.cs" Inherits="Tafsir.Admin.SlideInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>
                ویرایش 
            </p>
        </h2>
        <div class="innerBox">
            <div class="">
                <div class=" form_group">
                    <p><a href="SlideList.aspx" style="float: right; padding: 2px 5px; margin: 2px 8px">بازگشت</a><br />
                    </p>
                    <table style="width: 95%;" dir="rtl">
                        <tr class="">
                            <td width="10%" align="left"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="left">فعال :</td>
                            <td>
                                <input type="checkbox" runat="server" id="txtChecked" /></td>
                        </tr>
                        <tr>
                            <td align="left">تصویر:&nbsp;</td>
                            <td>
                                <asp:Image runat="server" ID="txtImage" Style="max-width: 85%" /></td>
                        </tr>
                        <tr>
                            <td align="left">تصویر جدید:&nbsp;</td>
                            <td>
                                <asp:FileUpload ID="txtFile" runat="server" />
                                <asp:Label runat="server" ID="StatusLabel" Text=" " /></td>
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
