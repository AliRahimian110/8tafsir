<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Tafsir.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <p>
            <iframe width="1300" height="400" id="gmap_canvas" src="https://maps.google.com/maps?q=Iran%20University%20of%20Science%20and%20Technology&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
        </p>
    </div>
    
    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <div style="width: 25%; height: 100%; float: right">
            <div class="generalbox">
                <div class="boxHeader">
                    <div>
                        <h2 class="speratorLine">
                            <p>تماس با ما</p>
                        </h2>
                    </div>
                </div>
                <div class="boxContent">
                    <div class="customtitle">
                        <img src="images/contactImage.jpg" alt="" width="250" height="188" />
                        <p style="text-align: right;"><strong>آدرس:</strong></p>
                        <p style="text-align: right;">
                            تهران، ستاد تفسیر قرآن کریم یک مؤسسه آموزشی،<br />
                            <br />
                            <span><strong>کدپستی :</strong> 11111-11111</span>
                            <br />
                            <span><strong>صندوق پستی :</strong> 111/11111</span>
                        </p>
                        <p style="text-align: right;" dir="rtl">
                            <strong>تلفکس :</strong><br />
                            <span dir="ltr">+98 (21) 11111111</span><br />
                            <strong style="font-size: 12px;"></strong>
                        </p>
                        <p style="text-align: right;" dir="rtl"><strong>ایمیل:</strong></p>
                        <p style="text-align: right;">support@setad.ir</p>
                    </div>
                </div>
            </div>
        </div>

        <div style="width: 60%; height: 100%; float: right; margin-right: 60px; margin-top: 10px; direction: rtl; font-family: tahoma; font-size: 12px;">
            <h2 class="speratorLine">
                <p>فرم تماس</p>
            </h2>
            <h3 runat="server" id="TitleH3" style="color: limegreen"></h3>
            <div runat="server" id="bodydiv">
                <br/>
                    <fieldset>
                        <legend>ارسال ایمیل. لطفاً فیلدهای ستاره دار را پر کنید!</legend>
                        <br/>
                        <br/>
                        *<input runat="server" id="txtname" name="txtname" placeholder="نام و نام خانوادگی" required="" type="text" /><br />
                        <br/>
                        &nbsp;&nbsp;
                    <input runat="server" id="txttel" name="txttel" placeholder="شماره تماس" required="" type="tel" style="text-align: left" /><br/>
                        <br/>
                        *<input runat="server" id="txtemail" name="txtemail" placeholder="ایمیل" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$"
                            required="" type="email" /><br/>
                        <br/>
                        *<input runat="server" id="txttitle" name="txttitle" placeholder="موضوع" required="" type="text" /><br/>
                        <br/>
                        *<textarea runat="server" id="txttext" name="txttext" placeholder="متن پیام" rows="15" type="text" style="width: 400px"></textarea><br/>
                        <br/>
                        <asp:Button runat="server" ID="butSend" OnClick="butSend_OnClick" Text="ارسال" />
                        <%--<input runat="server" id="" type="button" value="ارسال ایمیل" onclick="NPost('SaveContact', 'contactForm');">--%><br/>
                        <br/>
                    </fieldset>
            </div>
        </div>
    </div>




    <%--<div style="width:95%;margin-right:2.5%;margin-left:2.5%;overflow: hidden;">
        <h2 class="speratorLine"><p>تماس با ما</p></h2>

        <div class=""  style="box-shadow:0 1px 4px rgba(0,0,0,0.95); border-radius:3px;margin-left:10px;margin-right:10px;margin-bottom:10px">
					
            <table style="width: 95%;" dir="rtl">
                <tbody>
                <tr><td><br/><br/><br/></td></tr>
                <tr><td><br/><br/><br/></td></tr>
                </tbody>
            </table>
						 
        </div>
	
    </div>--%>
</asp:Content>
