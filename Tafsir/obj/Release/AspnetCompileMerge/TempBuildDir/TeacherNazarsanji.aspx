<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="TeacherNazarsanji.aspx.cs" Inherits="Tafsir.TeacherSurvey" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .trido table {
            width: 400px;
        }

        .trido tbody {
            display: flex;
        }

        .trido td {
            padding: 0 5px;
        }
    </style>

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>نظر سنجی اساتید</p>
        </h2>
        <div class="innerBox">

            <table style="width: 95%;" dir="rtl">
                <tbody>
                    <tr>
                        <td>
                            <asp:listview id="ListView5" runat="server">
                                <ItemTemplate>
                                    <h3>فرم نظرسنجی استاد <%# Eval("FirstName")%> <%# Eval("LastName")%></h3>
                                </ItemTemplate>
                            </asp:listview>
                            <p align="center"></p>
                            <table style="width: 90%" border="3" cellspacing="1px" align="center" valign="top">
                                <tr class="tableHeader">
                                    <th>ردیف</th>
                                    <th>شاخص های نظرسنجی</th>
                                    <th style="width: 500px">نمره نظرسنجی</th>
                                </tr>

                                <asp:listview id="ListView1" runat="server">
                                    <ItemTemplate>
                                        <tr>

                                            <td align="center"><%# Eval("id")%></td>
                                            <td style="text-align: right"><%# Eval("Question")%></td>
                                            <td class="trido">   
                                                <asp:RadioButtonList ID="RButtonList1" runat="server">
                                                    <asp:ListItem Text="عالی" Value="5" />
                                                    <asp:ListItem Text="خیلی خوب" Value="4" /> 
                                                    <asp:ListItem Text="خوب" Value="3" />
                                                    <asp:ListItem Text="متوسط" Value="2" />                                                    
                                                    <asp:ListItem Text="ضعیف" Value="1" />
                                                </asp:RadioButtonList>
                                            </td>

                                            <td><input id="Radio1" type="radio" value='<%# DataBinder.Eval(Container.DataItem, "id") %>' name="choice1" />
                                                <input id="Radio2" type="radio" value='<%# DataBinder.Eval(Container.DataItem, "id") %>' name="choice2" />
                                                <input id="Radio3" type="radio" value='<%# DataBinder.Eval(Container.DataItem, "id") %>' name="choice3" />
                                                <input id="Radio4" type="radio" value='<%# DataBinder.Eval(Container.DataItem, "id") %>' name="choice4" />
                                                <input id="Radio5" type="radio" value='<%# DataBinder.Eval(Container.DataItem, "id") %>' name="choice5" /></td>
                                         </tr>
                                    </ItemTemplate>
                                </asp:listview>

                                <tr><td align="left"></td><td><asp:Button runat="server" ID="Button1" OnClick="butUpData_OnClick" Text="ثبت" /><br />
                            </table>

                            <%--<p align="center">: سایر نظرات و پیشنهادات خود را در کادر زیروارد نمایید</p>
                            <p align="center">
                                <textarea name="text" cols="80" rows="10"></textarea>
                            </p>--%>
                            <br />
                            <p style="text-align: center;">
                                <input type="submit" value="ارسال" name="submit" />
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

</asp:Content>
