<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="QuestionNazarsanjiList.aspx.cs" Inherits="Tafsir.Admin.QuestionNazarsanjiList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p> نظرسنجی اساتید</p>
        </h2>
        <div class="" style="box-shadow: 0px 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">
            <div><a href="BookInfo.aspx" class="Butt">اضافه کردن سوال نظرسنجی اساتید جدبد</a></div>
            <table class="table table-bordered table-condensed table-striped">
                <thead class="row">
                <tr style="background-color: #00bfff;text-align: center">
                    <td style="width: 0; padding: 0;margin: 0"></td>
                    <%--<td class="col-lg-1">ردیف</td>--%>
                    <td class="col-lg-1">شناسه</td>
                    <td class="col-lg-9">سوال </td>
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
                                <td class="col-lg-9"><%#Eval("Question")%></td>
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

</asp:Content>
