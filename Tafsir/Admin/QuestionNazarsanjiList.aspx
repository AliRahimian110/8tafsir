﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="QuestionNazarsanjiList.aspx.cs" Inherits="Tafsir.Admin.QuestionNazarsanjiList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>نظرسنجی اساتید</p>
        </h2>
        <div class="innerBox">
            <div><a href="BookInfo.aspx" class="Butt">اضافه کردن سوال نظرسنجی اساتید جدید</a></div>
            <br />
            <table style="width: 90%" border="3" cellspacing="1px" align="center" valign="top" dir="rtl">
                <tr class="tableHeader">
                    <%--<th class="col-lg-1">ردیف</th>--%>
                    <th>شناسه</th>
                    <th>سوال </th>
                    <th>فعال</th>
                    <th>ویرایش</th>
                </tr>
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <%--<td class="text-center"><%#Eval("id")%></td>--%>
                            <td class="text-center"><%#Eval("id")%></td>
                            <td width="50%"><%#Eval("Question")%></td>
                            <td class="text-center">
                                <asp:CheckBox ID="Chx5" runat="server" Checked='<%#Eval("Active")%>' onclick="return false" /></td>
                            <td class="text-center">
                                <a href="QuestionNazarsanjiInfo.aspx?Ac=1&id=<%#Eval("id")%>" target="_parent">
                                    <img src="/Images/edit.png" alt="مشخصات" /></a>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
        </div>
    </div>

</asp:Content>
