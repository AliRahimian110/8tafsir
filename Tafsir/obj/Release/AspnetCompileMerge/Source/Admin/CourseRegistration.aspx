<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="CourseRegistration.aspx.cs" Inherits="Tafsir.Admin.CourseRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>لیست حضور و غیاب</p>
        </h2>
        <div class="innerBox">
            <table style="width: 90%" border="3" cellspacing="1px" align="center" valign="top" dir="rtl">
                <tr class="tableHeader">
                    <th>شناسه</th>
                    <th>نام </th>
                    <th>جلسه 1</th>
                    <th>جلسه 2</th>
                    <th>جلسه3</th>
                    <th>جلسه4</th>
                    <th>جلسه 5</th>
                    <th>جلسه 6</th>
                    <th>جلسه 7</th>
                    <th>جلسه 8</th>
                    <th>جلسه 9</th>
                    <th>جلسه 10</th>
                    <th>جلسه 11</th>
                    <th>جلسه 12</th>
                </tr>
                <asp:ListView ID="ListView1" runat="server">
                    
                    <ItemTemplate>
                        <tr>
                            <%--<td class="text-center"><%#Eval("id")%></td>--%>
                            <td class="ItemInList"><%#Eval("id")%></td>
                            <td class="ItemInList"><%#Eval("FirstName")%> <%#Eval("LastName")%></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>

                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
            
            <input type="button" value="Print" onClick="window.print()" style="padding: 2px 9px;margin: 2px 8px" class="Noprint">
        </div>
    </div>
</asp:Content>
