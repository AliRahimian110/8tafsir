<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="BarnameAmoozeshiAzmoon.aspx.cs" Inherits="Tafsir.BarnameAmoozeshiAzmoon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>ثبت نام</p>
        </h2>
        <div class="innerBox">

            <table style="width: 99%;" dir="rtl">
                <tbody>
                    <%--<tr><td ><img class="boxOfContentImages" src="images/overView.jpg"></td></tr>--%>
                    <tr>
                        <td>
                            <div class="register_form">
                                <h3 runat="server" id="titledore">فرم انتخاب دروس دوره مجازی</h3>
                                <br />
                                <table style="width:90%" border="3" cellspacing="1px"   align="center" valign="top">

                                        <tr class="tableHeader">
                                            <th>ردیف</th>
                                            <th>شماره و گروه درس</th>
                                            <th>نام درس</th>
                                            <th>تعداد واحد</th>
                                            <th>نام استاد</th>
                                            <th>تاریخ آزمون نهایی</th>
                                        </tr>

                                        <asp:ListView ID="ListView1" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td class="text-center"><%#Eval("Row")%></td>
                                                    <td class="text-center"><%#Eval("NumberCourse")%></td>
                                                    <td class="">
                                                        <%--<%#Eval("Title")%>--%>
                                                        <a href="/Course.aspx?id=<%#Eval("ID")%>" target="_parent" class="btn btn-default" > <%#Eval("Title")%> </a>
                                                    </td>
                                                    <td class="text-center"><%#Eval("VAHED")%></td>
                                                    <td class=""><%--<%#Eval("TeacherName")%>--%>
                                                        <a href=" /TeacherRezoomeh.aspx?id=<%#Eval("ID")%>" target="_parent" class="btn btn-default" > <%#Eval("TeacherName")%> </a>
                                                    </td>
                                                    <td class="text-center"><%#Eval("TimeQuiz")%></td>
                                                   
                                                </tr>
                                            </ItemTemplate>
                                        </asp:ListView>

                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center; color: #2E2E2E; font-size: small;"></td>
                    </tr>
                </tbody>
            </table>

        </div>

    </div>

</asp:Content>

