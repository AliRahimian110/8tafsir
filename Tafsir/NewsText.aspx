<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="NewsText.aspx.cs" Inherits="Tafsir.TextNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p runat="server" id="TitleNewsId">اخبار</p>
        </h2>

        <div class="innerBox">
            <table style="width: 100%;" dir="rtl">
                <tbody>
                    <asp:ListView ID="ListView5" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <h3 class="newsTitle">
                                        <%# Eval("TitleNews")%><font class="published_date">&nbsp; <%# Eval("InsertDate")%> &nbsp;</font>
                                    </h3>
                                </td>
                            </tr>

                            <tr>
                                <td align="center">
                                    <img style="width: 280px;" src="./pic/news/<%# Eval("Image")%>" class="imgdefnews"></td>
                            </tr>

                            <tr style="border-bottom: 1px">
                                <td>
                                    <p class="newsText"><%# Eval("TextNews")%></p>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </tbody>
            </table>
        </div>
    </div>

</asp:Content>
