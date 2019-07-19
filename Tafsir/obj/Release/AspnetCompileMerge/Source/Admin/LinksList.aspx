<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="LinksList.aspx.cs" Inherits="Tafsir.Admin.LinksList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>لینک های مفید</p>
        </h2>
        <div class="innerBox">
            <div><a href="LinksInfo.aspx" class="Butt">اضافه کردن لینک مفید جدید</a></div>
            <br />
            <table style="width: 90%" border="3" cellspacing="1px" align="center" valign="top" dir="rtl">
                <tr class="tableHeader">
                    <%--<th>ردیف</th>--%>
                    <th>شناسه</th>
                    <th>عنوان </th>
                    <th>آدرس</th>
                    <th>نمایش</th>
                    <th>ویرایش</th>
                </tr>
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <%--<td class="text-center"><%#Eval("id")%></td>--%>
                            <td class="text-center"><%#Eval("id")%></td>
                            <td><%#Eval("TitleLink")%></td>
                            <td><%#Eval("Address")%></td>
                            <td class="text-center">
                                <asp:CheckBox ID="Chx5" runat="server" Checked='<%#Eval("Active")%>' onclick="return false" /></td>
                            <td class="text-center">
                                <a href="LinksInfo.aspx?Ac=1&id=<%#Eval("id")%>" target="_parent">
                                    <img src="/Images/edit.png" alt="مشخصات" /></a>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
        </div>
    </div>

</asp:Content>
