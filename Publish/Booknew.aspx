<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Booknew.aspx.cs" Inherits="Tafsir.Books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .text-shado-4 {
            text-shadow: #cccccc;
        }

        .divlist {
            padding: 5px;
            margin: 5px;
            width: 49%;
            display: table;
            text-align: right;
            direction: rtl;
            float: right;
        }

        .booklisttitle {
            width: 100%;
            text-align: right;
            direction: rtl;
            float: right;
        }

        .bgcolor-999 {
            background-color: #999;
        }

        .border-c {
            background-color: #ccc;
        }

        .link-1{text-decoration: none}
        .link-1:hover{text-decoration: none;text-shadow: 2px 2px 8px #f00}
    </style>

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>کتب جدید و کتب پربازدید</p>
        </h2>
        <div class="innerBox">

            <table style="width: 95%;" dir="rtl">
                <tbody>
                <tr>
                    <td><b class="text-shado-4">کتب جدید</b><hr/></td>
                    <td><b class="text-shado-4">کتب پربازدید</b><hr/></td>
                </tr>
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
                        <td>
                            <asp:Repeater ID="Repeater1" runat="server">
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
