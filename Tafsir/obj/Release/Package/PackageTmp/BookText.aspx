<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="BookText.aspx.cs" Inherits="Tafsir.BookText" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 98%; margin-right: 2px; margin-left: 2px; overflow: hidden;">
        <h2 class="speratorLine">
            <p runat="server" id="titledore">متن کتاب</p>
        </h2>

        <div class="" style="box-shadow: 0 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">

            <div style="padding: 2px; float: left; text-align: right; width: 80%; background-color: antiquewhite">
                <div style="text-align: center;background-color: burlywood">
                    <h2 runat="server" id="txtBookName" class="text-shado-800 font-size-18"></h2>
                    <h3 runat="server" id="txtWriter" class="text-shado-800 font-size-16"></h3>
                </div>
                <asp:Repeater ID="RepText" runat="server">
                    <ItemTemplate>
                        <h4 class="color-medium-blue"><%#Eval("Title")%></h4>
                        <p class="text-justify"><%#Eval("Text")%></p>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

            <div style="overflow: auto; padding: 2px; margin: 2px; background-color: beige">
                <p class="color-red text-shado-8" style="text-align: center">فهرست کتاب</p>
                <hr />
                <ul style="overflow: auto; width: 200px; float: right; text-align: right">
                    <asp:Repeater ID="RepTitle" runat="server">
                        <%--<HeaderTemplate></HeaderTemplate>--%>
                        <ItemTemplate>
                            <li style="display: block;"><a class="link-1" href='<%# Page.ResolveUrl("~/BookText.aspx?id="+Eval("BookID")+"&tid="+Eval("ID"))%>'>
                                <%#Eval("Title")%></a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>


        </div>
    </div>
</asp:Content>
