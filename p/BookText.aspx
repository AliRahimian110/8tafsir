<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="BookText.aspx.cs" Inherits="Tafsir.BookText" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 98%; margin-right: 2px; margin-left: 2px; overflow: hidden;">
        <h2 class="speratorLine">
            <p runat="server" id="titledore">متن کتاب</p>
        </h2>

        <div class="innerBox"><!--<tr class="tableHeader">-->
            <table style="width:95%" border="3" cellspacing="1px"   align="center" dir="rtl">
                <tr>
                    <td width="15%">
                        <table>
                                <tr>
                                    <th class="BookTextTitle">  
                                        فهرست کتاب
                                        <hr/></th>
                                </tr>
                                <asp:Repeater ID="RepTitle" runat="server">
                                    <%--<HeaderTemplate></HeaderTemplate>--%>
                                    <ItemTemplate>
                                        <tr><td>
                                            <a href='<%# Page.ResolveUrl("~/BookText.aspx?id="+Eval("BookID")+"&tid="+Eval("ID"))%>'>
                                            <%#Eval("Title")%></a>
                                        </td></tr>
                                    </ItemTemplate>
                                </asp:Repeater>       
                        </table>
                    </td>
                    <td width="85%" valign="top">
                        <table>
                                <tr>
                                    <th class="BookTextTitle">
                                    
                                        <h2 runat="server" id="txtBookName"></h2>
                                        <h3 runat="server" id="txtWriter"></h3>
                                    
                                    <hr/></th>
                                </tr>
                                <asp:Repeater ID="RepText" runat="server">
                                    <ItemTemplate>
                                        <tr><td>
                                            <h4><%#Eval("Title")%></h4>
                                            <p><%#Eval("Text")%></p>
                                        </td></tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                        </table>
                    </td>
                </tr>
            </table>
            
        </div>
    </div>
</asp:Content>
