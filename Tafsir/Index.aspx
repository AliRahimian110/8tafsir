<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Tafsir.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="slider_container" style="position: relative; margin: 0 auto;top: 0px; left: 0px; width: 1300px; height:400px; overflow: hidden;">
            <!-- Loading Screen -->
            <div u="loading" style="position: absolute; top: 0px; left: 0px;">
                <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block;
                    top: 0px; left: 0px; width: 100%; height: 100%;">
                </div>
                <div style="position: absolute; display: block; background: url(../img/loading.gif) no-repeat center center;
                    top: 0px; left: 0px; width: 100%; height: 100%;">
                </div>
            </div>
            <!-- Slides Container -->
            <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 1300px;height: 400px; overflow: hidden;">
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
				<div  u="any" style="position: absolute; width: 480px; height: 120px; top: 130px; left: 40px; padding: 5px;
					text-align: left; line-height: 20px;  font-size: 19px; color:#FFFFFF; 
					font-family: tahoma,Impact,Ostrich Sans,Trebuchet MS, Arial, Helvetica, sans-serif;">
					ستاد تفسیر
					<br><b>
					قرآن کریم</b>
				</div>
				<div  u="any" style="position: absolute; width: 480px; height: 120px; top: 300px; left: 40px; padding: 5px;
					text-align: left; line-height: 36px; font-size: 30px;  color:#FFFFFF; font-family:Arial, Helvetica, sans-serif;;
						color: #FFFFFF;">
						ستاد تفسیر قرآن کریم
				</div>
                <!-- QR Code Style -->
                <%--<style/>
                    @media only screen and (max-width: 980px) {
                        .qr_code {
                            display: none;
                        }
                <style/>--%>
                
                <a href="index.aspx"><img u="any" class="qr_code" src="images/ghoran.png" style="position: absolute; width: 100px; height: 100px; top: 30px; left: 40px; opacity: .7; filter: alpha(opacity=70);" /></a>
            </div>
         
            <!--#region Bullet Navigator Skin Begin -->
    
            <!-- bullet navigator container -->
            <div u="navigator" class="jssorb03" style="bottom: 26px; right: 6px;">
                <!-- bullet navigator item prototype -->
                <div u="prototype"><div u="numbertemplate"></div></div>
            </div>
     
            <!-- Arrow Left -->
            <span u="arrowleft" class="jssora20l" style="top: 70px; left: 8px;">
            </span>
            <!-- Arrow Right -->
            <span u="arrowright" class="jssora20r" style="top:70px; right: 8px;">
            </span>
            <!--#endregion Arrow Navigator Skin End -->
        </div>
    
    
    
    
    
    

    
    <div style="width:95%;margin-right:2.5%;margin-left:2.5%;overflow: hidden;">
    <h2 class="speratorLine"><p>کلیات و سرویس ها</p></h2>
    <div class="boxOfContent" style="width:31%;float:right;margin-right:10px; ">
        <center>
            <table style="width: 100%;" dir="rtl">
                <tbody>
                <tr>
                    <td ><img class="boxOfContentImages" src="images/overView.jpg"></td>
                </tr>
                <tr>
                    <td ><center><a href="About.aspx" target="_self">درباره ما</a></center><br><br></td>
                </tr>
                <tr>
                    <td style="text-align: center;color: #2E2E2E; font-size: small;">کلیات و تاریخچه ستاد</td>
                </tr>
                </tbody>
            </table>
        </center>
    </div>
        
    <div class="boxOfContent" style="width:31%;float:right;margin-right:10px; ">
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
                    <td style="text-align: center;color: #2E2E2E; font-size: small;">توضیحات</td>
                </tr>
                </tbody>
            </table>
        </center>
    </div>
        
    <div class="boxOfContent" style="width:31%;float:right;margin-right:10px; ">
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
                    <td style="text-align: center;color: #2E2E2E; font-size: small;">تو ضیحات</td>
                </tr>
                </tbody>
            </table>
        </center>
    </div>
                        
</div>

    <div style="width:95%;margin-right:2.5%;margin-left:2.5%; direction:rtl">
    <div style="width:100%;">
        <h2 class="speratorLine"><p>آخرین اخبار</p></h2>
        <div id="newsContent">
            <div style="position:relative;" id="Div_news_1">
                <table >
                    <tr>
                        <td width="25%" align="center" >
                            <img style="width:200px;" border=1 src="./News/NewsPic1_small.jpg" onclick="window.open('./News/NewsPic1.jpg','','notoolbar');" alt="مشاهده" > 									
                        </td>
                        <td><h3 class="newsTitle" style="direction:rtl;text-align: justify;direction:rtl;line-height:20px;">
                                مراسم رونمایی از تفسیر قرآن «شمس»  <font class="published_date" >&nbsp;(1394/12/09)&nbsp;</font>
                            </h3>
                          
                            <p style="text-align: justify;word-wrap:break-word;" >شفقنا- آیت الله محقق داماد در مراسم رونمایی از کتاب تفسیر «شمس» گفت: انتخاب پسندیده ای است که نام این تفسیر را شمس گذاشته اند و یکی از ویژگی های مهم این کتاب آن است که نگارنده از بسط زیاد در آن پرهیز کرده است هر چند که از موجزگویی و تلخیص نیز اجتناب کرده و اینگونه نیست که با یک اثر 50 جلدی مواجه باشیم و البته در دو سه جلد هم گرد نیامده است بلکه حد وسطی برای آن تعیین شده و در 10 مجلد تدوین یافته است.

                                به گزارش خبرنگار شفقنا؛ مراسم رونمایی از تفسیر 10 جلدی قرآن «شمس» با قلم حجت‌الاسلام‌و‌المسلمین مصطفی بروجردی، پیش از ظهر امروز یکشنبه 25 آذر با حضور آیت‌الله سیدمصطفی محقق داماد؛ رئیس گروه علم فرهنگستان علوم، سیدعباس عراقچی؛ حجت الاسلام نواب، حجت الاسلام دعایی، معاون وزیر امور خارجه، عیسی علیزاده؛ معاون فرهنگی جهاد دانشگاهی، هاشمی؛ معاون فرهنگی سازمان فرهنگ و ارتباطات اسلامی و جمعی از مسئولان فرهنگی نهادها و سازمان‌های مختلف در سالن کنفرانس سازمان قرآنی دانشگاهیان کشور برگزار شد.

                                در این مراسم پیام محمدجواد ظریف؛ وزیر امور خارجه توسط محمد حسن شیخ‌الاسلام؛رئیس دانشکده روابط بین‌الملل به مناسبت رونمایی از کتاب تفسیر قرآن «شمس» قرائت شد.<span class="newsfollow" ><a target="_self"  href='news_4.htm'  >ادامه خبر...</a></span></p>
                        </td>
                    </tr>
                </table>
                <hr/>
            </div>	
            <div style="position:relative;" id="Div_news_2">
                <table >
                    <tr>
                        <td width="25%" align="center">
                            <img style="width:200px;" border=1 src="./News/NewsPic2_small.jpg" onclick="window.open('./News/NewsPic2.jpg','','notoolbar');" alt="مشاهده" > 
									
                        </td>
                        <td><span class="newsTitle" style="direction:rtl;text-align: justify;direction:rtl;line-height:20px;">
                                <a target="_self"  href='news_2.htm' >اولین همایش ملی ....</a>	
                            </span>
                            <font class="published_date" >&nbsp;(1394/09/07)&nbsp;</font>
                            <p style="text-align: justify;word-wrap:break-word;" >به گزارش خبرگزاری کتاب ایران(ایبنا)، محمدرضا جعفری ــ معاون آموزش و پژوهش «ستاد عالی کانون‌های فرهنگی و هنری مساجد کشور» ــ در نشست خبری که پیش از ظهر امروز (چهارم خرداد 1394) در محل این ستاد برگزار شد، گفت: بنا داریم نیمه سال آینده از کتاب چهارجلدی «تفسیر همراه» رونمایی کنیم.

                                وی درباره موضوع این کتاب و مؤلفان آن اظهار کرد: این کتاب از سوی مترجمان و مفسران حوزه علمیه قم در حال تألیف است. برای تألیف این کتاب تصمیم گرفته شده است تا از هر صفحه قرآن یک آیه که در زندگی عموم مردم جامعه کاربرد دارد، انتخاب شود.
                                <span class="newsfollow" ><a target="_self"  href='news_3.htm'  >ادامه خبر...</a></span></p>
                        </td>
                    </tr>
                </table>
                <hr >
            </div>
        </div>                                  
    </div>    


    <div style="width:100%;">
        <h2 class="speratorLine"><p>آخرین رخدادها</p></h2>
        <div id="eventsContent">
            <div style="position:relative;" id="Div_events_1">
                <table >
                    <tr>
                        <td width="25%" align="center">
                            <img style="width:200px;" border=1 src="./Events/EventsPic1_small.jpg" onclick="window.open('./Events/EventsPic1.jpg','','notoolbar');" alt="مشاهده" > 
									
                        </td>
                        <td><span class="newsTitle" style="direction:rtl;text-align: justify;direction:rtl;line-height:20px;">
                                <a target="_self"  href='events_1.htm' >مسابقه بزرگ اینترنتی ویژه ماه رجب</a>	
                            </span>
                            <font calss="published_date" >&nbsp;(1398/01/07)&nbsp;</font>
                            <p style="text-align: justify;word-wrap:break-word;" >
                                تعداد سوالات این مسابقه ۲۰ سؤال به صورت چهارگزینه‌ای است، علاقمندان می‌توانند با مراجعه به لینک زیر سؤالات را دریافت و پس از مطالعه و پاسخگویی، جهت وارد کردن پاسخ‌های خود به بخش مسابقات سایت مراجعه کنند.<span class="newsfollow" ><a target="_self"  href='news_3.htm'  >ادامه...</a></span></p>
                        </td>
                    </tr>
                </table>
                <hr >
            </div>
            <div style="position:relative;" id="Div_events_2">
                <table >
                    <tr>
							
                        <td width="25%" align="center">
                            <img style="width:200px;" border=1 src="./Events/EventsPic2_small.jpg" onclick="window.open('./Events/EventsPic2.jpg','','notoolbar');" alt="مشاهده" > 
									
                        </td>
                        <td><span class="newsTitle" style="direction:rtl;text-align: justify;direction:rtl;line-height:20px;">
                                <a target="_self"  href='events_2.htm' >برگزاری مسابقه قرآنی تفسیر نور</a>	
                            </span>
                            <font calss="published_date" >&nbsp;(1398/06/07)&nbsp;</font>
                            <p style="text-align: justify;word-wrap:break-word;" >
                                مسابقه ویژه تالیان و قاریان طرح تلاوت نور مساجد استان است علاقمندان در این مسابقه در گروه های سنی زیر18سال، 18 تا سی سال و بالای سی سال می توانند تا 25 شهریور ماه سال جاری جهت شرکت در این مسابقه به سایت  مراجعه و ثبت نام کنند.

                                در گروه سنی از سه نفر برگزیده تقدیر می شود، نفرات اول در هر گروه در مراسم گرامیداشت ....
                                <span class="newsfollow" ><a target="_self"  href='news_3.htm'  >ادامه...</a></span></p>
                        </td>
                    </tr>
                </table>
                <hr >
            </div>
        </div>
    </div>	 
</div>
</asp:Content>
