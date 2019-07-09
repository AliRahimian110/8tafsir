<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Tafsir.News" %>

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
                            <tr style="border-bottom: 1px">
                                <td width="25%" align="center">
                                    <img style="width: 200px;" src="./pic/news/<%# Eval("Image")%>" class="imgdefnews">
                                </td>
                                <td>
                                    <a href="./NewsText.aspx?id=<%# Eval("Id")%>"><h3 class="newsTitle">
                                        <%# Eval("TitleNews")%>
                                        <font class="published_date">&nbsp; <%# Eval("InsertDate")%> &nbsp;</font>
                                    </h3></a>
                                    <p class="newsText">
                                        <%# Eval("Description")%> <a href="./NewsText.aspx?id=<%# Eval("Id")%>">ادامه....</a>
                                        <hr />
                                    </p>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </tbody>
            </table>
        </div>
    </div>

</asp:Content>
