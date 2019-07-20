<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="NazarsanjiInfo.aspx.cs" Inherits="Tafsir.Admin.NazarsanjiInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>نظر سنجی اساتید</p>
        </h2>
        <div class="innerBox">
            <p><a href="TeacherList.aspx" style="float:right;padding:2px 5px;margin:2px 8px">بازگشت</a><br /></p>

            <table style="width: 95%;" dir="rtl">
                <tbody>
                    <tr>
                        <td>
                            <asp:listview id="ListView5" runat="server">
                                <ItemTemplate>
                                    <h3>نتیجه نظرسنجی استاد <%# Eval("FirstName")%> <%# Eval("LastName")%></h3>
                                </ItemTemplate>
                            </asp:listview>
                            <p align="center"></p>
                            <table style="width: 90%" border="3" cellspacing="1px" align="center" valign="top">
                                <tr class="tableHeader">
                                    <th>ردیف</th>
                                    <th>شاخص های نظرسنجی</th>
                                    <th style="width: 80px">نمره نظرسنجی</th>
                                </tr>

                                <asp:listview id="ListView1" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td align="center"><%# Eval("id")%></td>
                                            <td style="text-align: right"><%# Eval("Question")%></td> 
                                            <td style="text-align: right"><%--<%# Eval("Result")%>--%></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:listview>

                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

</asp:Content>
