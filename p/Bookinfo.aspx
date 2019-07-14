<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Bookinfo.aspx.cs" Inherits="Tafsir.Bookinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>مشخصات کتاب</p>
        </h2>
        <div class="innerBox">
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>

                    
                    <table style="width:95%;" dir="rtl">
                            <tr>
                                <td>
                                    <span class="InfoLable">کتاب:</span>
                                    <span class="Info"><%#Eval("BookName")%></span> 
                                </td>
                            </tr>
                            <tr>
                                <td> 
                                    <span class="InfoLable">نویسنده: </span>
                                    <span class="Info"><%#Eval("Writer")%> </span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="InfoLable">مترجم: </span>
                                    <span class="Info"><%#Eval("Translator")%></span> 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="InfoLable">ناشر: </span>
                                    <span class="Info"><%#Eval("Publisher")%></span> 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="InfoLable">زبان: </span>
                                    <span class="Info"><%#Eval("Language")%></span> 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="InfoLable">تعداد صفحه: </span>
                                    <span class="Info"><%#Eval("Pages")%></span> 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="InfoLable">توضیحات: </span>
                                    <span class="Info"><%#Eval("Description")%></span> 
                                </td>
                            </tr>
                            <tr>
                                <td><a href='<%# Page.ResolveUrl("~/BookText.aspx?id="+Eval("ID") )%>'
                                                target="_parent">مطالعه</a></td>
                            </tr>

                    </table>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

</asp:Content>
