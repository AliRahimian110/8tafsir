﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="MobaleghInfo.aspx.cs" Inherits="Tafsir.Admin.MobaleghInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>
                اطلاعات مبلغ
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
                <tr><td align="left">    عنوان:&nbsp;</td><td><input runat="server" id="txtTitle" name="name" readonly="readonly" required="" type="text" size="100" maxlength="100" /><br />
                </td></tr>
                <tr><td align="left">    Email: &nbsp;&nbsp;</td><td><input runat="server" id="txtEmail" name="name" readonly="readonly" required="" type="text" size="100" maxlength="100" /><br />
                </td></tr>
                <tr><td align="left">    شماره تماس:&nbsp;</td><td><input runat="server" id="txtTel" name="name" readonly="readonly" required="" type="text" size="100" maxlength="100" /><br />
                </td></tr>
                <tr><td align="left">    شهر :</td><td><input runat="server" id="txtData" name="name" readonly="readonly" required="" type="text" size="100" maxlength="100" /><br />
                </td></tr>
                <tr><td align="left">    </td><td><%--<input type="text" id="pcal1" class="pdate" placeholder="تاریخ" required="" />--%><script type="text/javascript">var objCal1 = new AMIB.persianCalendar('pcal1');</script><br />
                </td></tr>                                                 
                <tr><td align="left">    توضیحات:&nbsp;</td><td><textarea runat="server" id="txtDescription" name="name" readonly="readonly" rows="10" type="text" style="width: 85%" maxlength="400"></textarea><br />
                </td></tr>
                 <tr><td align="left"></td><td><asp:Button runat="server" ID="butAddNews" OnClick="butUpData_OnClick" Text="ثبت" /><br />
                </td></tr>
            </table>      
        </div>
    </div>
</asp:Content>