<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Links.aspx.cs" Inherits="Tafsir.Links" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>لینک های مفید</p>
        </h2>

        <div class="innerBox">
            <table style="width: 95%;" dir="rtl">
                <tbody>
                    <tr>
                        <td>
                            <p id="pmain">
                                <asp:ListView ID="ListView5" runat="server">
                                    <ItemTemplate>
                                        <li style="list-style: none">
                                            <a style="text-decoration: none; font-size: 1.3em" href='<%# Eval("Address")%>' target="_parent">
                                                <%#Eval("TitleLink") %></a>
                                        </li>
                                    </ItemTemplate>
                                </asp:ListView>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

</asp:Content>
