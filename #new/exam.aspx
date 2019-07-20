<%@ Page Title="" Language="C#" EnableViewState ="false" MasterPageFile ="~/UserPage.Master" AutoEventWireup="true" CodeBehind="exam.aspx.cs" Inherits="Tafsir.exam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 234px;
        }
        .auto-style2 {
            width: 100%;
            height: 66px;
        }
        .auto-style3 {
            width: 100%;
            height: 222px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div dir="rtl">

        <table class="auto-style3">
            <tr>
                <td class="text-right">
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style1">آزمون های قابل انتخاب</td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="ID" Width="400px">
                                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server"   OnClick="Button1_Click" Text="شروع آزمون" Width="120px" />   
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;<asp:HiddenField ID="exmh_s" runat="server" Value="0" />
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SPSelectExam" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:SessionParameter DefaultValue="-1" Name="user" SessionField="User_id" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="text-right" style="border-style: solid; border-width: 2px">
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                </td>
            </tr>
            <tr>
                <td class="text-right">&nbsp;<br />
&nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ثبت نتیجه" Width="120px" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
