<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Booknew.aspx.cs" Inherits="Tafsir.Books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>کتب جدید و کتب پربازدید</p>
        </h2>
        <div class="innerBox">
            <table  style="width: 92%;"  dir="rtl">
            
            
                <tr>
                    <td>
                        <table>
                                <tr>
                                    <td style="text-align:center;"><b>کتب جدید</b><hr/><br/></td>
                                </tr>
                                
                                    <asp:Repeater ID="Repeater2" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><b><a class="linkNoor" href='<%# Page.ResolveUrl("~/Bookinfo.aspx?id="+Eval("ID") )%>'
                                                            target="_parent"><%#Eval("BookName").ToString().Replace('‏',' ')%></a> 
                                                    </b>
                                                    &nbsp; «<%#Eval("Writer")%>» &nbsp;
                                                <hr/></b></td>
                                            </tr>   
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    
                        </table>
                    </td>
                    <td>
                        <table>
                                <tr>
                                        <td style="text-align:center;"><b>کتب پربازدید</b><hr/><br/></td>
                                </tr>
  
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><b><a class="linkNoor" href='<%# Page.ResolveUrl("~/Bookinfo.aspx?id="+Eval("ID") )%>'
                                                            target="_parent"><%#Eval("BookName").ToString().Replace('‏',' ')%></a>
                                                    </b>
                                                    &nbsp; «<%#Eval("Writer")%>» &nbsp;
                                                <hr/></td>   
                                             </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
  
</asp:Content>
