﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="UserList.aspx.cs" Inherits="Tafsir.Admin.UserList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>لیست کاربران</p>
        </h2>
        <div class="" style="box-shadow: 0px 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">
            <div><a href="BookInfo.aspx" class="Butt">اضافه کردن کاربر جدبد</a></div>
            <table class="table table-bordered table-condensed table-striped">
                <thead class="row">
                <tr style="background-color: #00bfff;text-align: center">
                    <td style="width: 0; padding: 0;margin: 0"></td>
                    <%--<td class="col-lg-1">ردیف</td>--%>
                    <td class="col-lg-1">شناسه</td>
                    <td class="col-lg-3">نام </td>
                    <td class="col-lg-3">یوزر</td>
                    <td class="col-lg-3">ایمیل</td>
                    <td class="col-lg-1">فعال</td>
                    <td class="col-lg-1">ویرایش</td>
                </tr>
                </thead>
                <tbody>
                    <asp:ListView ID="ListView1" runat="server">
                        <ItemTemplate>
                            <tr class="row">
                                <%--<td class="col-lg-1 text-center"><%#Eval("id")%></td>--%>
                                <td class="col-lg-1 text-center"><%#Eval("id")%></td>
                                <td class="col-lg-3"><%#Eval("FirstName")%> <%#Eval("LastName")%></td>
                                <td class="col-lg-3"><%#Eval("UserName")%></td>
                                <td class="col-lg-3 text-center"><%#Eval("Email")%></td>
                                <td class="col-lg-1 text-center">
                                    <asp:CheckBox ID="Chx5" runat="server" Checked='<%#Eval("Active")%>' onclick="return false" /></td>
                                <td class="col-lg-1">
                                    <a href="UserInfo.aspx?Ac=1&idb=<%#Eval("id")%>" target="_parent">
                                        <img src="/Images/edit.png" alt="مشخصات" /></a>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </tbody>
            </table>
        </div>
    </div>

    <div class="panelPage">
        <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="50">
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