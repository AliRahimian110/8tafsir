<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="TeacherList.aspx.cs" Inherits="Tafsir.Admin.TeacherList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>لیست اساتید</p>
        </h2>
        <div class="" style="box-shadow: 0px 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">
             <div><a href="#" class="Butt">اضافه کردن استاد جدبد</a></div>
            <table class="table table-bordered table-condensed table-striped">
                <thead class="row">
                <tr style="background-color: #00bfff;text-align: center">
                    <td style="width: 0; padding: 0;margin: 0"></td>
                    <td class="col-lg-1">شناسه</td>
                    <td class="col-lg-5">نام</td>
                    <td class="col-lg-2">تلفن</td>
                    <td class="col-lg-2">ایمیل</td>
                    <td class="col-lg-1">فعال</td>
                    <td class="col-lg-1">ویرایش</td>
                </tr>
                </thead>
                <tbody>
                    <asp:ListView ID="ListView1" runat="server">
                        <ItemTemplate>
                            <tr class="row">
                                <td class="col-lg-1 text-center"><%#Eval("id")%></td>
                                <td class="col-lg-5"><%#Eval("LastName")%> <%#Eval("FirstName")%></td>
                                <td class="col-lg-2"><%#Eval("TEL")%></td>
                                <td class="col-lg-2 text-center"><%#Eval("EMAIL")%></td>
                                <td class="col-lg-1 text-center">
                                    <asp:CheckBox ID="Chx5" runat="server" Checked='<%#Eval("Active")%>' onclick="return false" /></td>
                                <td class="col-lg-1">
                                    <a href="Teacherinfo.aspx?idb=<%#Eval("id")%>" target="_parent">
                                        <img src="/Images/edit.png" alt="ویرایش" /></a>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </tbody>
            </table>
        </div>
    </div>

</asp:Content>
