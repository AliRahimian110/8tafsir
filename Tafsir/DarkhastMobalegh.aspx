<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="DarkhastMobalegh.aspx.cs" Inherits="Tafsir.DarkhastMobalegh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%">
        <h2 class="speratorLine">
            <p>درخواست مبلغ</p>
        </h2>
        <div class="" style="box-shadow: 0px 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">
            <table style="width: 95%;" dir="rtl">
                <tbody>
                    <tr>
                        <!--<td ><img class="boxOfContentImages" src="images/overView.jpg"></td>-->
                    </tr>
                    <tr>
                        <td>
                            <h3 runat="server" id="TitleH3" style="color: limegreen"></h3>
                            <div runat="server" id="bodydiv" class="register_form">
                                <h3>درخواست مبلغ</h3>
                                <p>در صورت نیاز به مبلغ قزآنی لطفاً فرم زیر را پر کنید و دکمه ارسال را بفشارید، ما در اسرع وقت با شما تماس خواهیم گرفت</p>

                                <div class="row">
                                    <div class="col-lg-12 form_group">
                                        <input runat="server" id="txtname" name="name" placeholder="نام و نام خانوادگی در خواست کننده" required="" type="text" /><br />
                                        <input runat="server" id="txtnamecom" name="namecom" placeholder="نام ارگان یا مرکز مطبوع" required="" type="text" /><br />
                                        <input runat="server" id="txttel" name="tel" placeholder="شماره تماس" required="" type="tel" style="text-align: left" /><br/>
                                        <input runat="server" id="txtemail" name="email" placeholder="ایمیل" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$"
                                            required="" type="email" /><br/>
                                        <textarea runat="server" id="txtdoc" name="textDoc" placeholder="توضیحات" rows="15" type="text" style="width: 400px" />
                                    </div>
                                    <div class="col-lg-12 text-center">
                                        <asp:Button runat="server" ID="butSend" OnClick="butSend_OnClick" Text="send" class="primary-btn"/>
                                    </div>
                                </div>
                            </div>

                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center; color: #2E2E2E; font-size: small;"></td>
                    </tr>
                </tbody>
            </table>

        </div>

    </div>

    <%--<div style="width:95%;margin-right:2.5%;margin-left:2.5%;overflow: hidden;">
        <h2 class="speratorLine"><p>درخواست مبلغ</p></h2>

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
