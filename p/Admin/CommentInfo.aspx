<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="CommentInfo.aspx.cs" Inherits="Tafsir.Admin.CommentInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>
                نظر کاربر
            </p>
        </h2>
        <div class="innerBox">
             <table style="width: 95%;" dir="rtl">
                <tr class="tableHeader">
                    <td width="10%" align="left"></td>
                    <td></td>
                </tr>
                <tr><td align="left">نام:&nbsp;</td><td><input runat="server" id="txtName" name="name" readonly="readonly" required="" type="text" size="100" maxlength="100" /><br />
                </td></tr>
                <tr><td align="left">Email: &nbsp;&nbsp;</td><td><input runat="server" id="txtEmail" name="name" readonly="readonly" required="" type="text" size="100" maxlength="100" /><br />
                </td></tr>
                <tr><td align="left">تاریخ :</td><td><input runat="server" id="txtData" name="name" readonly="readonly" required="" type="text" size="100" maxlength="100" /><br />
                </td></tr>
                <tr><td align="left">نمایش :</td><td><input type="checkbox" runat="server" id="txtActive"/>
                </td></tr>
                <tr><td align="left">نظر کاربر:&nbsp;</td><td><textarea runat="server" id="txtComment" name="name" readonly="readonly" rows="10" type="text" style="width: 85%" maxlength="400"></textarea><br />
                </td></tr>
                <tr><td align="left">پاسخ:</td><td><textarea runat="server" id="txtReply" name="name" rows="10" type="text" style="width: 85%"></textarea><script>tinymce.init({ selector: '#txtTextNews' });</script><br />
                </td></tr>
                <tr><td align="left"></td><td>
                    <asp:Button runat="server" ID="butAddNews" OnClick="butUpData_OnClick" Text="ثبت" />
                </td></tr>
             </table>                       
        </div>
    </div>
</asp:Content>
