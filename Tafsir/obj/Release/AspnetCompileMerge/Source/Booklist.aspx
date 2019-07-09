<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Booklist.aspx.cs" Inherits="Tafsir.Booklist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>لیست کتب</p>
        </h2>
        <div class="innerBox">
            <table style="width: 95%;" dir="rtl">
                <tbody>
                    <tr>
                        <td>
                            <asp:Repeater ID="Repeater2" runat="server">
                                <ItemTemplate>
                                    <div class="row border-c " style="margin: 0">
                                        <div class="booklisttitle col-lg-6 col-md-6 col-sm-6">
                                            <a class="link-1" href='<%# Page.ResolveUrl("~/Bookinfo.aspx?id="+Eval("ID") )%>'
                                                target="_parent"><%#Eval("BookName").ToString().Replace('‏',' ')%></a> &nbsp; «<%#Eval("Writer")%>» &nbsp;
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

</asp:Content>
