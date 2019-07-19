<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="MobaleghList.aspx.cs" Inherits="Tafsir.Admin.MobaleghList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>لیست کتب</p>
        </h2>
        <div class="innerBox">
            <%--<div><a href="NewsInfo.aspx" class="Butt">اضافه کردن خبر جدبد</a></div>--%>
            <br />
            <table style="width: 90%" border="3" cellspacing="1px" align="center" valign="top" dir="rtl">
                <tr class="tableHeader">
                    <th>شناسه</th>
                    <th>نام</th>
                    <th>عنوان</th>
                    <th>شماره تماس</th>
                    <th>ایمیل</th>
                    <th>شهر</th>
                    <th>ارسال شده</th>
                    <th>بررسی شده</th>
                    <th>ویرایش</th>
                </tr>
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td class="ItemInList"><%#Eval("id")%></td>
                            <td class="ItemInList"><%#Eval("FirstName")%> <%#Eval("LastName")%></td>
                            <td class="ItemInList"><%#Eval("ComName")%></td>
                            <td class="ItemInList"><%#Eval("Tel")%></td>
                            <td class="ItemInList"><%#Eval("Email")%></td>
                            <td class="ItemInList"><%#Eval("City")%></td>
                            <td class="text-center">
                                <asp:CheckBox ID="Chx5" runat="server" Checked='<%#Eval("Send")%>' onclick="return false" /></td>
                            <td class="text-center">
                                <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%#Eval("Checked")%>' onclick="return false" /></td>
                            <td class="text-center">
                                <a href="MobaleghInfo.aspx?id=<%#Eval("id")%>" target="_parent">
                                    <img src="/Images/editnews.png" alt="ویرایش" /></a>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
        </div>
    </div>

    <div class="panelPage">
        <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="10">
            <Fields>
                <asp:NextPreviousPagerField ButtonCssClass="Butt2" FirstPageText="&lt;&lt;" ShowFirstPageButton="True"
                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                <asp:NumericPagerField ButtonCount="10" CurrentPageLabelCssClass="Butt3" NextPageText=">"
                    NumericButtonCssClass="Butt2" PreviousPageText="<" NextPreviousButtonCssClass="Butt2" />
                <asp:NextPreviousPagerField ButtonCssClass="Butt2" LastPageText="&gt;&gt;" ShowLastPageButton="True"
                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
            </Fields>
        </asp:DataPager>
    </div>

</asp:Content>
