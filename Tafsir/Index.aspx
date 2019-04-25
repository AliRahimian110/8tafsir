<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Tafsir.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="slider_container" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 1300px; height: 400px; overflow: hidden;">
        <!-- Loading Screen -->
        <div u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;">
            </div>
            <div style="position: absolute; display: block; background: url(../img/loading.gif) no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;">
            </div>
        </div>
        <!-- Slides Container -->
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 1300px; height: 400px; overflow: hidden;">
            <div>
                <img u="image" src="images/pic1.jpg" />

            </div>
            <div>
                <img u="image" src="images/pic2.jpg" />

            </div>
            <div>
                <img u="image" src="images/pic3.jpg" />

            </div>
            <div>
                <img u="image" src="images/pic4.jpg" />

            </div>
            <div u="any" style="position: absolute; display: block; top: 40px; right: 50px; width: 120px; height: 40px; z-index: 10;">

                <a class="share-icon share-googleplus" target="_blank" href="https://plus.google.com/u/0/106767186818474461104/posts" title="Share on Google Plus"></a>
                <a class="share-icon share-linkedin" target="_blank" href="https://www.linkedin.com/in/setad" title="Share on LinkedIn"></a>
                <a class="share-icon share-telegram" target="_blank" href="http://www.telegram.me/setad" title="Share on Telegram"></a>

            </div>
            <div u="any" style="position: absolute; width: 480px; height: 120px; top: 130px; left: 40px; padding: 5px; text-align: left; line-height: 20px; font-size: 19px; color: #FFFFFF; font-family: tahoma,Impact,Ostrich Sans,Trebuchet MS, Arial, Helvetica, sans-serif;">
                ستاد تفسیر
					<br/>
                <b>قرآن کریم</b>
            </div>
            <div u="any" style="position: absolute; width: 480px; height: 120px; top: 300px; left: 40px; padding: 5px; text-align: left; line-height: 36px; font-size: 30px; color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; color: #FFFFFF;">
                ستاد تفسیر قرآن کریم
            </div>
            <!-- QR Code Style -->
            <%--<style/>
                    @media only screen and (max-width: 980px) {
                        .qr_code {
                            display: none;
                        }
                <style/>--%>

            <a href="index.aspx">
                <img u="any" class="qr_code" src="images/ghoran.png" style="position: absolute; width: 100px; height: 100px; top: 30px; left: 40px; opacity: .7; filter: alpha(opacity=70);" />
            </a>
        </div>

        <!--#region Bullet Navigator Skin Begin -->

        <!-- bullet navigator container -->
        <div u="navigator" class="jssorb03" style="bottom: 26px; right: 6px;">
            <!-- bullet navigator item prototype -->
            <div u="prototype">
                <div u="numbertemplate"></div>
            </div>
        </div>

        <!-- Arrow Left -->
        <span u="arrowleft" class="jssora20l" style="top: 70px; left: 8px;"></span>
        <!-- Arrow Right -->
        <span u="arrowright" class="jssora20r" style="top: 70px; right: 8px;"></span>
        <!--#endregion Arrow Navigator Skin End -->
    </div>




    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>کلیات و سرویس ها</p>
        </h2>
        <div class="boxOfContent" style="width: 31%; float: right; margin-right: 10px;">
            <center>
            <table style="width: 100%;" dir="rtl">
                <tbody>
                <tr>
                    <td ><img class="boxOfContentImages" src="images/overView.jpg"></td>
                </tr>
                <tr>
                    <td ><center><a href="About.aspx" target="_self">درباره ما</a></center><br/><br/></td>
                </tr>
                <tr>
                    <td style="text-align: center;color: #2E2E2E; font-size: small;">کلیات و تاریخچه ستاد</td>
                </tr>
                </tbody>
            </table>
        </center>
        </div>

        <div class="boxOfContent" style="width: 31%; float: right; margin-right: 10px;">
            <center>
            <table style="width: 100%;" dir="rtl">
                <tbody>
                <tr>
                    <td ><img class="boxOfContentImages" src="images/newest_hozoori.jpg"></td>
                </tr>
                <tr>
                    <td ><center><a href="Dore_Hozori.html" target="_self">جدیدترین دوره آموزشی حضوری</a></center><br/><br/></td>
                </tr>
                <tr>
                    <td style="text-align: center;color: #2E2E2E; font-size: small;">توضیحات</td>
                </tr>
                </tbody>
            </table>
        </center>
        </div>

        <div class="boxOfContent" style="width: 31%; float: right; margin-right: 10px;">
            <center>
            <table style="width: 100%;" dir="rtl">
                <tbody>
                <tr>
                    <td ><img class="boxOfContentImages" src="images/newest_majazi.jpg"></td>
                </tr>
                <tr>
                    <td ><center><a href="Dore_majazi.html" target="_self">جدیدترین دوره آموزشی مجازی </a></center><br/><br/></td>
                </tr>
                <tr>
                    <td style="text-align: center;color: #2E2E2E; font-size: small;">تو ضیحات</td>
                </tr>
                </tbody>
            </table>
        </center>
        </div>

    </div>

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; direction: rtl">
        <div style="width: 100%;">
            <h2 class="speratorLine">
                <p>آخرین اخبار</p>
            </h2>
            <div id="newsContent">
                <table style="width: 95%;" dir="rtl">
                    <tbody>
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <%--<a style="text-decoration: none; font-size: 1.3em" href='<%# Eval("Address")%>' target="_parent"><%#Eval("TitleLink") %></a>--%>
                                <tr style="border-bottom: 1px">
                                    <td width="25%" align="center">
                                        <img style="width: 200px;" src="./imagesnews/<%# Eval("Image")%>">
                                    </td>
                                    <td>
                                        <h3 class="newsTitle" style="direction: rtl; text-align: justify; direction: rtl; line-height: 20px;">
                                            <%# Eval("TitleNews")%>
                                            <font class="published_date">&nbsp; <%# Eval("InsertDate")%> &nbsp;</font>
                                        </h3>
                                        <p style="text-align: justify; word-wrap: break-word; padding: 2px 9px">
                                            <%# Eval("Description")%> <a href="./NewsText.aspx?id='<%# Eval("Id")%>'">ادامه....</a>
                                            <hr />
                                        </p>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource SelectCommand="Exec SPNewsGetTypeTop 1" ID="SqlDataSource1"
                            EnableCaching="True" CacheDuration="30" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            runat="server"></asp:SqlDataSource>
                    </tbody>
                </table>
            </div>
        </div>


        <div style="width: 100%;">
            <h2 class="speratorLine">
                <p>آخرین رخدادها</p>
            </h2>
            <div id="eventsContent">
                <div style="position: relative;" id="Div_events_1">

                    <table style="width: 95%;" dir="rtl">
                        <tbody>
                            <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
                                <ItemTemplate>
                                    <%--<a style="text-decoration: none; font-size: 1.3em" href='<%# Eval("Address")%>' target="_parent"><%#Eval("TitleLink") %></a>--%>
                                    <tr style="border-bottom: 1px">
                                        <td width="25%" align="center">
                                            <img style="width: 200px;" src="./imagesnews/<%# Eval("Image")%>">
                                        </td>
                                        <td>
                                            <h3 class="newsTitle" style="direction: rtl; text-align: justify; direction: rtl; line-height: 20px;">
                                                <%# Eval("TitleNews")%>
                                                <font class="published_date">&nbsp; <%# Eval("InsertDate")%> &nbsp;</font>
                                            </h3>
                                            <p style="text-align: justify; word-wrap: break-word; padding: 2px 9px">
                                                <%# Eval("Description")%> <a href="./NewsText.aspx?id='<%# Eval("Id")%>'">ادامه....</a>
                                                <hr />
                                            </p>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:ListView>
                            <asp:SqlDataSource SelectCommand="Exec SPNewsGetTypeTop 2" ID="SqlDataSource2"
                                EnableCaching="True" CacheDuration="30" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                runat="server"></asp:SqlDataSource>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
