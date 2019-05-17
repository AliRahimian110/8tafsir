﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="TeacherList.aspx.cs" Inherits="Tafsir.TeacherList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>لیست اساتید</p>
        </h2>
        <div class="" style="box-shadow: 0px 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">

            <table style="width: 95%;" dir="rtl">
                <tbody>
                    <tr>
                        <td>
                            <div class="register_form">
                                <%--<h3>لیست اساتید ستاد تفسیر قرآن</h3>--%>
                                <%--<p>اساتید ستاد تفسیر قرآن</p>--%>
                                <table style="width: 90%; text-align: right; border-collapse: collapse; direction: rtl;" border="0">
                                    <tbody>
                                        <asp:ListView ID="ListView5" runat="server">
                                            <ItemTemplate>

                                                <tr style="height: 162px;">
                                                    <td style="height: 162px;">
                                                        <table style="width: 100%; border-collapse: collapse;" border="0">
                                                            <tbody>
                                                                <tr>
                                                                    <td style="width: 15%;" rowspan="6">
                                                                        <span style="font-family: tahoma,arial,helvetica,sans-serif;">
                                                                            <img src="pic/teacher/<%# Eval("Image")%>" class="imgdefteacher" style="border: 1px solid darkolivegreen; border-radius: 4px; padding: 5px; width: 100px; height: 130px;" alt="">
                                                                        </span>
                                                                    </td>
                                                                    <td style="width: 85%;">
                                                                        <span style="font-family: 'book antiqua', palatino, serif; font-size: 14pt; color: darkolivegreen;">
                                                                            <strong>نام:</strong> </span>
                                                                        <span style="font-family: tahoma,arial,helvetica,sans-serif;"><%# Eval("FirstName")%> <%# Eval("LastName")%> </span></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <span style="font-family: 'book antiqua', palatino, serif; font-size: 14pt; color: darkolivegreen;"><strong>مرتبه علمی:</strong></span>
                                                                        <span style="font-family: tahoma,arial,helvetica,sans-serif;"><%# Eval("Grade")%></span></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <span style="font-family: 'book antiqua', palatino, serif; font-size: 14pt; color: darkolivegreen;"><strong>ایمیل:</strong></span>
                                                                        <span style="font-family: tahoma,arial,helvetica,sans-serif;"><%# Eval("Email")%></span></td>
                                                                </tr>
                                                                <tr>
                                                                    <td> <a href="TeacherRezoomeh.aspx?id=<%# Eval("id")%>">رزومه</a> &nbsp; &nbsp; &nbsp; 
                                                                         <a href="TeacherNazarsanji.aspx?id=<%# Eval("id")%>">نظر سنجی</a> </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <br />
                                                        <hr />
                                                    </td>
                                                </tr>

                                            </ItemTemplate>
                                        </asp:ListView>
                                    </tbody>
                                </table>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>


</asp:Content>
