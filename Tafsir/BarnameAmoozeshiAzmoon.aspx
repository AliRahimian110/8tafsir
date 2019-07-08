<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="BarnameAmoozeshiAzmoon.aspx.cs" Inherits="Tafsir.BarnameAmoozeshiAzmoon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>ثبت نام</p>
        </h2>
        <div class="" style="box-shadow: 0px 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">

            <table style="width: 99%;" dir="rtl">
                <tbody>
                    <%--<tr><td ><img class="boxOfContentImages" src="images/overView.jpg"></td></tr>--%>
                    <tr>
                        <td>
                            <div class="register_form">
                                <h3 runat="server" id="titledore">فرم انتخاب دروس دوره مجازی</h3>
                                
                                <table style="width: 99%" border="3" cellspacing="1px" cellpading="10px"  align="center" valign="top">
                                    <thead class="row">
                                        <tr style="background-color: #00bfff; text-align: center">
                                            <th class="col-lg-1">ردیف</th>
                                            <th class="col-lg-2">شماره و گروه درس</th>
                                            <th class="col-lg-3">نام درس</th>
                                            <th class="col-lg-1">تعداد واحد</th>
                                            <th class="col-lg-3">نام استاد</th>
                                            <th class="col-lg-2">تاریخ آزمون نهایی</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:ListView ID="ListView1" runat="server">
                                            <ItemTemplate>
                                                <tr class="row">
                                                    <td class="col-lg-1 text-center"><%#Eval("Row")%></td>
                                                    <td class="col-lg-2 text-center"><%#Eval("NumberCourse")%></td>
                                                    <td class="col-lg-3"><%#Eval("Title")%></td>
                                                    <td class="col-lg-1 text-center"><%#Eval("VAHED")%></td>
                                                    <td class="col-lg-3"><%#Eval("TeacherName")%></td>
                                                    <td class="col-lg-2 text-center"><%#Eval("TimeQuiz")%></td>
                                                   
                                                </tr>
                                            </ItemTemplate>
                                        </asp:ListView>
                                    </tbody>
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

