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

                    <style>.t1 td{border:1px outset ;padding-right:5px}
                    </style>
                    <table style="width:100%;" dir="rtl">
                        <tbody class="t1">

                            <tr>
                                <td style="width: 100px">کتاب: </td>
                                <td><%#Eval("BookName")%> </td>
                            </tr>
                            <tr>
                                <td>نویسنده: </td>
                                <td><%#Eval("Writer")%> </td>
                            </tr>
                            <tr>
                                <td>مترجم: </td>
                                <td><%#Eval("Translator")%> </td>
                            </tr>
                            <tr>
                                <td>ناشر: </td>
                                <td><%#Eval("Publisher")%> </td>
                            </tr>
                            <tr>
                                <td>زبان: </td>
                                <td><%#Eval("Language")%> </td>
                            </tr>
                            <tr>
                                <td>تعداد صفحه: </td>
                                <td><%#Eval("Pages")%> </td>
                            </tr>
                            <tr>
                                <td>توضیحات: </td>
                                <td><%#Eval("Description")%> </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><a class="link-1" href='<%# Page.ResolveUrl("~/BookText.aspx?id="+Eval("ID") )%>'
                                                target="_parent">مطالعه</a></td>
                            </tr>

                        </tbody>
                    </table>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

</asp:Content>
