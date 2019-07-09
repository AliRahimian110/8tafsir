<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="TeacherRezoomeh.aspx.cs" Inherits="Tafsir.TeacherRezome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>رزومه اساتید</p>
        </h2>
        <div class="innerBox">

            <table style="width: 95%;" dir="rtl">
                <tbody>
                    <tr>
                        <td>
                            <div class="register_form">
                                <%--<h3>لیست اساتید ستاد تفسیر قرآن</h3>--%>
                                <table style="width: 90%; text-align: right; border-collapse: collapse; direction: rtl;" border="0">
                                    <tbody>
                                        <asp:ListView ID="ListView5" runat="server">
                                            <ItemTemplate>

                                                <tr>
                                                    <td>
                                                        <table style="width: 100%; border-collapse: collapse;" border="0">
                                                            <tbody>
                                                                <tr>
                                                                    <td style="width: 15%;" rowspan="6">
                                                                        <span>
                                                                            <img class="imgdefteacher" src="pic/teacher/<%# Eval("Image")%>" style="border: 1px solid darkolivegreen; border-radius: 4px; padding: 5px; width: 100px; height: 130px;" alt="">
                                                                        </span>
                                                                    </td>
                                                                    <td style="width: 85%;">
                                                                        <span class="teacherListLable">
                                                                            <strong>نام:</strong> </span>
                                                                        <span class="teacherInfo"><%# Eval("FirstName")%> <%# Eval("LastName")%> </span></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <span class="teacherInfoLable"><strong>مرتبه علمی:</strong></span>
                                                                        <span class="teacherInfo"><%# Eval("Grade")%></span></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <span class="teacherInfoLable"><strong>ایمیل:</strong></span>
                                                                        <span class="teacherInfo"><%# Eval("Email")%></span></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <span class="teacherInfoLable"><strong>رزومه:</strong></span>
                                                                        <span class="teacherInfo"><%# Eval("Rezome")%></span></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
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
