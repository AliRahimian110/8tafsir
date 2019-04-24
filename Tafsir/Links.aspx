<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Links.aspx.cs" Inherits="Tafsir.Links" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>لینک های مفید</p>
        </h2>

        <div class="" style="box-shadow: 0 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">

            <table style="width: 95%;" dir="rtl">
                <tbody>
                    <tr>
                        <td>
                            <p id="pmain">
                                <%--<a href="http://quran.inoor.ir">پایگاه جامع قرآنی(مرکز کامپیوتری نور)</a><br>
                                <a href="http://quran.anhar.ir">بخش قرآنی پایگاه انهار </a><br>
                                <a href="http://tanzil.ir">تنزیل </a><br>
                                <a href="http://quran.com">قرآن </a><br>
                                <a href="http://altafsir.com">التفسیر</a>--%>

                                <asp:ListView ID="ListView5" runat="server" DataSourceID="SqlDataSource0">
                                    <ItemTemplate>
                                        <li style="list-style: none">
                                            <a style="text-decoration: none; font-size: 1.3em" href='<%# Eval("Address")%>' target="_parent">
                                                <%#Eval("TitleLink") %>                                    
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:ListView>
                                <asp:SqlDataSource SelectCommand="Exec SPLinksLoad" ID="SqlDataSource0"
                                    EnableCaching="True" CacheDuration="120" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                    runat="server"></asp:SqlDataSource>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>

        </div>

    </div>



</asp:Content>
