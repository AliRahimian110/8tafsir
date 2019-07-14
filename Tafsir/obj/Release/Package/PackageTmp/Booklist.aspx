<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Booklist.aspx.cs" Inherits="Tafsir.Booklist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>لیست کتب</p>
        </h2>
        <div class="innerBox">
            <table style="width: 92%;" dir="rtl">
                    <tr>
                        <td>
                            <asp:Repeater ID="Repeater2" runat="server">
                                <ItemTemplate>
                                    <tr>
                                                <td><b><a class="linkNoor" href='<%# Page.ResolveUrl("~/Bookinfo.aspx?id="+Eval("ID") )%>'
                                                target="_parent"><%#Eval("BookName").ToString().Replace('‏',' ')%></a> &nbsp; «<%#Eval("Writer")%>» &nbsp;
                                        <hr/></td>   
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </td>
                    </tr>
            </table>
        </div>
    </div>

</asp:Content>
