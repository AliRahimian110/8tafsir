<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="BookText.aspx.cs" Inherits="Tafsir.BookText" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p runat="server" id="titledore">متن کتاب</p>
        </h2>

        <div class="" style="box-shadow: 0 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">

            <table style="width: 95%;" dir="rtl">
                <tbody>

                <tr>
                    <td>
                        <div>
                            در حال توسعه هستیم ......
                        </div>

                    </td>
                </tr>
                </tbody>
            </table>
            
            
            
            
            
            
            
            
            
            
    <%--<div class="bgcolor-beige shadow-box-8 " style="display: inline-block">
        <div class="col-lg-3 bgcolor-azure shadow-box-8" style="padding:0">
            <div style="overflow: auto">
                <p class="color-red text-shado-8">فهرست کتاب</p>
                <hr />
                <ul style="max-height: 600px; overflow: auto">
                    <asp:Repeater ID="Repeater6" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <li><a class="link-1" href='<%# Page.ResolveUrl("~/Book/"+Eval("BookID")+"/"+Eval("ID"))%>'>
                                <%#Eval("Title")%></a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>

        <div class="col-lg-9" style="padding:0">
            <div class="text-center">
                <h1 runat="server" id="txtBookName" class="text-shado-800 font-name-strafcbd font-size-24"></h1>
                <h2 runat="server" id="txtWriter" class="text-shado-800 font-name-strafcbd font-size-24"></h2>
            </div>
            <div style="max-height:540px; overflow: auto">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2" >
                    <ItemTemplate>
                        <div class="margin-4 padding-4">
                            <h4 class="color-medium-blue"><%#Eval("Title").ToString().Replace('‏',' ')%></h4>
                            <p class="text-justify"><%#Eval("Text").ToString().Replace('‏',' ')%></p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <div class="width-pt-100 padding-5">
                    <a runat="server" href="#" id="linkn2" class="padding-2 float-right">« بعدی</a>
                    <a runat="server" href="#" id="linkp2" class="padding-2 float-left">قبلی »</a>
                </div>
            </div>
        </div>
    </div>--%>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        EnableCaching="False" CacheDuration="90" SelectCommand="Exec Book_Titles @bookid=@bookid">
        <SelectParameters>
            <asp:Parameter Name="bookid" Type="Int64" DefaultValue="0" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        EnableCaching="False" CacheDuration="60" SelectCommand="Exec Book_Texts @titleid=@titleid, @bookid=@bookid">
        <SelectParameters>
            <asp:Parameter Name="titleid" Type="Int64" DefaultValue="0" />
            <asp:Parameter Name="bookid" Type="Int64" DefaultValue="0" />
        </SelectParameters>
    </asp:SqlDataSource>
            
            


        </div>
    </div>

</asp:Content>
