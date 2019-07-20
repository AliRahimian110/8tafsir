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

            <asp:ListView ID="ListSlide" runat="server">
                <ItemTemplate>
                    <div>
                        <img u="image" src="pic/Slide/<%#Eval("image") %>" />
                    </div>
                </ItemTemplate>
            </asp:ListView>

            <div u="any" style="position: absolute; display: block; top: 40px; right: 50px; width: 120px; height: 40px; z-index: 10;">

                <a class="share-icon share-googleplus" target="_blank" href="https://plus.google.com/u/0/106767186818474461104/posts" title="Share on Google Plus"></a>
                <a class="share-icon share-linkedin" target="_blank" href="https://www.linkedin.com/in/setad" title="Share on LinkedIn"></a>
                <a class="share-icon share-telegram" target="_blank" href="http://www.telegram.me/setad" title="Share on Telegram"></a>

            </div>
            <div u="any" class="textUnderLogo">
                ستاد تفسیر
                <br />
                <b>قرآن کریم</b>
            </div>
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




    <div class="myRow"><!--style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">-->
		 <h2 class="speratorLine"><p>کلیات و سرویس ها</p></h2>
		 <div class="myColumn">
					<center>
					<table style="width: 100%;" dir="rtl">
					 <tbody>
					 <tr>
					 <td ><img class="boxOfContentImages" src="images/overView.jpg"></td>
					 </tr>
					 <tr>
					 <td ><center><a href="about_us.htm" target="_self">آزمون آنلاین </a></center><br><br></td>
					 </tr>
					 <tr>
					 <td>راهنمای شرکت در آزمون</td>
					 </tr>
					 </tbody>
					 </table>
					 </center>
		</div>

		 <div class="myColumn">
					<center>
					<table style="width: 100%;" dir="rtl">
					 <tbody>
					 <tr>
					 <td ><img class="boxOfContentImages" src="images/newest_hozoori.jpg"></td>
					 </tr>
					 <tr>
					 <td ><center><a href="Dore_Hozori.html" target="_self">جدیدترین دوره آموزشی حضوری</a></center><br><br></td>
					 </tr>
					 <tr>
					 <td>توضیحات</td>
					 </tr>
					 </tbody>
					 </table>
					 </center>
		</div>

		<div class="myColumn">
					<center>
					<table style="width: 100%;" dir="rtl">
					 <tbody>
					 <tr>
					 <td ><img class="boxOfContentImages" src="images/newest_majazi.jpg"></td>
					 </tr>
					 <tr>
					 <td ><center><a href="Dore_majazi.html" target="_self">جدیدترین دوره آموزشی مجازی </a></center><br><br></td>
					 </tr>
					 <tr>
					 <td>توضیحات</td>
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
                        <asp:ListView ID="ListView1" runat="server">
                            <ItemTemplate>
                                <tr style="border-bottom: 1px">
                                    <td width="15%" align="center">
                                        <img class="imgdefnews" src="./pic/news/<%# Eval("Image")%>">
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


        <div style="width: 100%;">
            <h2 class="speratorLine">
                <p>آخرین رویداد ها</p>
            </h2>
            <div id="eventsContent">
                <div style="position: relative;" id="Div_events_1">

                    <table style="width: 95%;" dir="rtl">
                        <tbody>
                            <asp:ListView ID="ListView2" runat="server">
                                <ItemTemplate>
                                    <tr style="border-bottom: 1px">
                                        <td width="15%" align="center">
                                            <img class="imgdefnews" src="./pic/news/<%# Eval("Image")%>">
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
        </div>
    </div>
</asp:Content>
