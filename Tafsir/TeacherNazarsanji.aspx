<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="TeacherNazarsanji.aspx.cs" Inherits="Tafsir.TeacherSurvey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

	<div style="width:95%;margin-right:2.5%;margin-left:2.5%;overflow: hidden;">
			 <h2 class="speratorLine"><p>نظر سنجی اساتید</p></h2>
			 <div class=""  style="box-shadow:0px 1px 4px rgba(0,0,0,0.95); border-radius:3px;margin-left:10px;margin-right:10px;margin-bottom:10px">
					
						<table style="width: 95%;" dir="rtl">
						 <tbody>
						 <tr>
						 <!--<td ><img class="boxOfContentImages" src="images/overView.jpg"></td>-->
						 </tr>
						 <tr>
						 <td >
						 
						 	 
						 
						 	<form action="post_nzarsanji.html" method="post">
									<br/>
									<h3>فرم نظرسنجی تدریس اساتید توسط دانشجویان</h3>
									<p align="center">  </p><br/>
										<table border="3"cellspacing="1px" cellpadding="10px" width="800px" height="200px" align="center"valign="top">
											<tr style=" background-color:rgb(0,0,100);color:white ">
												<th>ردیف</th>
												<th>شاخص های نظرسنجی</th>
												<th>عالی(20)</th>
												<th>خیلی خوب(17-19)</th>
												<th>خوب(15-17)</th>
												<th>متوسط(12-15)</th>
												<th>ضعیف(زیر12)</th>
											</tr>
											<tr>
												<td align="center">1</td>
												<td align="right">تسلط استاد بر موضوع درس</td>
												<td><input name="radio1" type="radio" value="radio_1"/></td>
												<td><input name="radio1" type="radio" value="radio_2"/></td>
												<td><input name="radio1" type="radio" value="radio_3"/></td>
												<td><input name="radio1" type="radio" value="radio_4"/></td>
												<td><input name="radio1" type="radio" value="radio_5"/></td>
											
												
											</tr>
											<tr>
												<td align="center">2</td>
												<td align="right">دانش عمومی استاد در رشته تحصیلی</td>
												<td><input name="radio2" type="radio" value="radio_1"/></td>
												<td><input name="radio2" type="radio" value="radio_2"/></td>
												<td><input name="radio2" type="radio" value="radio_3"/></td>
												<td><input name="radio2" type="radio" value="radio_4"/></td>
												<td><input name="radio2" type="radio" value="radio_5"/></td>
												
												
											</tr>
											<tr>
												<td align="center">3</td>
												<td align="right">جامع نگري و ژرف اندیشی استاد در ارائه مباحث</td>
												<td><input name="radio3" type="radio" value="radio_1"/></td>
												<td><input name="radio3" type="radio" value="radio_2"/></td>
												<td><input name="radio3" type="radio" value="radio_3"/></td>
												<td><input name="radio3" type="radio" value="radio_4"/></td>
												<td><input name="radio3" type="radio" value="radio_5"/></td>
													
												
											</tr>
											<tr>
												<td align="center">4</td>
												<td align="right">توانایی انتقال مطالب اساسی درس</td>
												<td><input name="radio4" type="radio" value="radio_1"/></td>
												<td><input name="radio4" type="radio" value="radio_2"/></td>
												<td><input name="radio4" type="radio" value="radio_3"/></td>
												<td><input name="radio4" type="radio" value="radio_4"/></td>
												<td><input name="radio4" type="radio" value="radio_5"/></td>
												
												
											</tr>
											<tr>
												<td align="center">5</td>
												<td align="right">داشتن طرح درس مناسب و جامعیت و پیوستگی در ارائه مطالب</td>
												<td><input name="radio5" type="radio" value="radio_1"/></td>
												<td><input name="radio5" type="radio" value="radio_2"/></td>
												<td><input name="radio5" type="radio" value="radio_3"/></td>
												<td><input name="radio5" type="radio" value="radio_4"/></td>
												<td><input name="radio5" type="radio" value="radio_5"/></td>
												
												
											</tr>
											<tr>
												<td align="center">6</td>
												<td align="right">کوشش براي طرح مباحث جدید و استفاده از منابع روز آمد</td>
												<td><input name="radio6" type="radio" value="radio_1"/></td>
												<td><input name="radio6" type="radio" value="radio_2"/></td>
												<td><input name="radio6" type="radio" value="radio_3"/></td>
												<td><input name="radio6" type="radio" value="radio_4"/></td>
												<td><input name="radio6" type="radio" value="radio_5"/></td>
												
												
											</tr>
											<tr>
												<td align="center">7</td>
												<td align="right">تناسب راهبردها و شیوه هاي آموزش با اهداف درس</td>
												<td><input name="radio7" type="radio" value="radio_1"/></td>
												<td><input name="radio7" type="radio" value="radio_2"/></td>
												<td><input name="radio7" type="radio" value="radio_3"/></td>
												<td><input name="radio7" type="radio" value="radio_4"/></td>
												<td><input name="radio7" type="radio" value="radio_5"/></td>
												
												
											</tr>
											<tr>
												<td align="center">8</td>
												<td align="right">استفاده از شیوه هاي ارزشیابی مناسب از دانشجو با توجه به اهداف درس</td>
												<td><input name="radio8" type="radio" value="radio_1"/></td>
												<td><input name="radio8" type="radio" value="radio_2"/></td>
												<td><input name="radio8" type="radio" value="radio_3"/></td>
												<td><input name="radio8" type="radio" value="radio_4"/></td>
												<td><input name="radio8" type="radio" value="radio_5"/></td>
												
												
											</tr>
											<tr>
												<td align="center">9</td>
												<td align="right">شرکت دادن دانشجو در مباحث درس</td>
												<td><input name="radio9" type="radio" value="radio_1"/></td>
												<td><input name="radio9" type="radio" value="radio_2"/></td>
												<td><input name="radio9" type="radio" value="radio_3"/></td>
												<td><input name="radio9" type="radio" value="radio_4"/></td>
												<td><input name="radio9" type="radio" value="radio_5"/></td>
											
												
											</tr>
											<tr>
												<td align="center">10</td>
												<td align="right">ایجاد انگیزه و رغبت در دانشجو جهت تحقیق و مطالعه</td>
												<td><input name="radio10" type="radio" value="radio_1"/></td>
												<td><input name="radio10" type="radio" value="radio_2"/></td>
												<td><input name="radio10" type="radio" value="radio_3"/></td>
												<td><input name="radio10" type="radio" value="radio_4"/></td>
												<td><input name="radio10" type="radio" value="radio_5"/></td>
												
											</tr>
											<tr>
												<td align="center">11</td>
												<td align="right">نحوه مدیریت کلاس</td>
												<td><input name="radio11" type="radio" value="radio_1"/></td>
												<td><input name="radio11" type="radio" value="radio_2"/></td>
												<td><input name="radio11" type="radio" value="radio_3"/></td>
												<td><input name="radio11" type="radio" value="radio_4"/></td>
												<td><input name="radio11" type="radio" value="radio_5"/></td>
												
											</tr>
											<tr>
												<td align="center">12</td>
												<td align="right">امکان ارتباط( حضوري و غیر حضوري) با استاد در خارج از کلاس</td>
												<td><input name="radio12" type="radio" value="radio_1"/></td>
												<td><input name="radio12" type="radio" value="radio_2"/></td>
												<td><input name="radio12" type="radio" value="radio_3"/></td>
												<td><input name="radio12" type="radio" value="radio_4"/></td>
												<td><input name="radio12" type="radio" value="radio_5"/></td>
												
											</tr>
											<tr>
												<td align="center">13</td>
												<td align="right"> آداب و رفتار اجتماعی با دانشجویان و احترام متقابل</td>
												<td><input name="radio13" type="radio" value="radio_1"/></td>
												<td><input name="radio13" type="radio" value="radio_2"/></td>
												<td><input name="radio13" type="radio" value="radio_3"/></td>
												<td><input name="radio13" type="radio" value="radio_4"/></td>
												<td><input name="radio13" type="radio" value="radio_5"/></td>
												
											</tr>
											<tr>
												<td align="center">14</td>
												<td align="right">واکنش منطقی و معقول به پیشنهادها،انتقادها و دیدگاههاي دانشجویان</td>
												<td><input name="radio14" type="radio" value="radio_1"/></td>
												<td><input name="radio14" type="radio" value="radio_2"/></td>
												<td><input name="radio14" type="radio" value="radio_3"/></td>
												<td><input name="radio14" type="radio" value="radio_4"/></td>
												<td><input name="radio14" type="radio" value="radio_5"/></td>
												
											</tr>
											<tr>
												<td align="center">15</td>
												<td align="right">گشاده روئی استاد و تکریم دانشجو</td>
												<td><input name="radio15" type="radio" value="radio_1"/></td>
												<td><input name="radio15" type="radio" value="radio_2"/></td>
												<td><input name="radio15" type="radio" value="radio_3"/></td>
												<td><input name="radio15" type="radio" value="radio_4"/></td>
												<td><input name="radio15" type="radio" value="radio_5"/></td>
												
											</tr>

											
										</table>

									<p align="center">: سایر نظرات و پیشنهادات خود را در کادر زیروارد نمایید</p>
									<p align="center">
										<textarea name="text" cols="80" rows="10">
										
										</textarea>
											
									</p>
									<p style="text-align:center;"><input type="submit" value="ارسال" name="submit" /></p>
									</form>
						 
						 
						 
						 
						
						 
						 
						 <br><br></td>
						 </tr>
						 <tr>
						 <td style="text-align: center;color: #2E2E2E; font-size: small;"></td>
						 </tr>
						 </tbody>
						 </table>
						 
			</div>
	
	</div>
			
			
	

</asp:Content>
