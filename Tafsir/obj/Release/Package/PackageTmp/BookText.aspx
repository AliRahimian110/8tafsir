<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="BookText.aspx.cs" Inherits="Tafsir.BookText" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p runat="server" id="titledore">متن کتاب</p>
        </h2>

        <div class="" style="box-shadow: 0 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">

            <div class="bgcolor-beige shadow-box-8 " style="display: inline-block">
                <div class="col-lg-3 bgcolor-azure shadow-box-8" style="padding: 0">
                    <div style="overflow: auto">
                        <p class="color-red text-shado-8">فهرست کتاب</p>
                        <hr />
                        <ul style="max-height: 600px; overflow: auto">
                            <asp:Repeater ID="RepTitle" runat="server">
                                <HeaderTemplate>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li><a class="link-1" href='<%# Page.ResolveUrl("~/Booktext/"+Eval("BookID")+"/"+Eval("ID"))%>'>
                                        <%#Eval("Title")%></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-9" style="padding: 0">
                    <div class="text-center">
                        <h1 runat="server" id="txtBookName" class="text-shado-800 font-name-strafcbd font-size-24"></h1>
                        <h2 runat="server" id="txtWriter" class="text-shado-800 font-name-strafcbd font-size-24"></h2>
                    </div>
                    <div style="max-height: 540px; overflow: auto">
                        <asp:Repeater ID="RepText" runat="server">
                            <ItemTemplate>
                                <div class="margin-4 padding-4">
                                    <h4 class="color-medium-blue"><%#Eval("Title")%></h4>
                                    <p class="text-justify"><%#Eval("Text")%></p>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%--<div class="width-pt-100 padding-5">
                    <a runat="server" href="#" id="linkn2" class="padding-2 float-right">« بعدی</a>
                    <a runat="server" href="#" id="linkp2" class="padding-2 float-left">قبلی »</a>
                            </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
