<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Booklist.aspx.cs" Inherits="Tafsir.Booklist" %>
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
            <p>لیست کتب</p>
        </h2>
        <div class="" style="box-shadow: 0px 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">
            <table style="width: 95%;" dir="rtl">
                <tbody>
                    <tr>
                        <td>
                            <asp:Repeater ID="Repeater2" runat="server">
                                <ItemTemplate>
                                    <div class="row border-c " style="margin: 0">
                                        <div class="booklisttitle col-lg-6 col-md-6 col-sm-6">
                                            <a class="link-1" href='<%# Page.ResolveUrl("~/BookText.aspx?"+Eval("ID") )%>'
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
