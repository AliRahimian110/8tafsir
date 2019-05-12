<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="TeacherNazarsanji.aspx.cs" Inherits="Tafsir.TeacherSurvey" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>نظر سنجی اساتید</p>
        </h2>
        <div class="" style="box-shadow: 0px 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">


            <table style="width: 95%;" dir="rtl">
                <tbody>
                    <tr>
                        <td>
                            <asp:ListView ID="ListView5" runat="server">
                                <ItemTemplate>
                                    <h3>فرم نظرسنجی استاد <%# Eval("FirstName")%> <%# Eval("LastName")%></h3>
                                </ItemTemplate>
                            </asp:ListView>
                            <p align="center"></p>
                            <style>.tb1 tr td,.tb1 tr th{ text-align: center}</style>
                            <table border="3" cellspacing="1px" cellpadding="10px" width="800px" height="200px" align="center" valign="top" class="tb1">
                                <tr style="background-color: rgb(0,0,100); color: white">
                                    <th>ردیف</th>
                                    <th>شاخص های نظرسنجی</th>
                                    <th>عالی <br/> (20)</th>
                                    <th>خیلی خوب <br/> (17-19)</th>
                                    <th>خوب <br/> (15-17)</th>
                                    <th>متوسط <br/> (12-15)</th>
                                    <th>ضعیف <br/> (زیر12)</th>
                                </tr>

                                <asp:ListView ID="ListView1" runat="server">
                                    <ItemTemplate>
                                        <tr>

                                            <td align="center"><%# Eval("id")%></td>
                                            <td style="text-align: right"><%# Eval("Question")%></td>
                                            <td>
                                                <input name="radio_<%# Eval("id")%>_1" type="radio" value="radio_<%# Eval("id")%>_1" /></td>
                                            <td>
                                                <input name="radio_<%# Eval("id")%>_2" type="radio" value="radio_<%# Eval("id")%>_2" /></td>
                                            <td>
                                                <input name="radio_<%# Eval("id")%>_3" type="radio" value="radio_<%# Eval("id")%>_3" /></td>
                                            <td>
                                                <input name="radio_<%# Eval("id")%>_4" type="radio" value="radio_<%# Eval("id")%>_4" /></td>
                                            <td>
                                                <input name="radio_<%# Eval("id")%>_5" type="radio" value="radio_<%# Eval("id")%>_5" /></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:ListView>
                                
                            </table>

                            <p align="center">: سایر نظرات و پیشنهادات خود را در کادر زیروارد نمایید</p>
                            <p align="center">
                                <textarea name="text" cols="80" rows="10">		</textarea>
                            </p>
                            <p style="text-align: center;">
                                <input type="submit" value="ارسال" name="submit" />
                            </p>
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
