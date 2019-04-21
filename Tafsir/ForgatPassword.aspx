<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="ForgatPassword.aspx.cs" Inherits="Tafsir.ForgatPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>یاداوری رمز عبور</p>
        </h2>

        <div class="" style="box-shadow: 0px 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">

            <table style="width: 95%;" dir="rtl">
                <tbody>
                    <tr>
                        <!--<td ><img class="boxOfContentImages" src="images/overView.jpg"></td>-->
                    </tr>
                    <tr>
                        <td>
                            <p runat="server" id="txtText" Visible="False"></p>
                            <div class="register_form" runat="server" id="regform">
                                <h3>بازیابی اطلاعات ورود به سیستم</h3>
                                <p>لطفاً آدرس پست الکترونیکی خود را وارد کنید، نام کاربری و لینک بازیابی پسورد برای شما ارسال خواهد شد</p>


                                <div class="row">
                                    <div>
                                        <input runat="server" id="txtemail" name="email" placeholder="Your Email Address" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$"
                                            required="" type="email" />
                                    </div>
                                    <div class="col-lg-12 text-center">
                                        <asp:Button runat="server" ID="butforgatemail" OnClick="butforgatemail_OnClick" Text="ارسال"/>
                                        <%--<button class="primary-btn">Submit</button>--%>
                                    </div>
                                </div>

                            </div>


                            <br>
                            <br>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center; color: #2E2E2E; font-size: small;"></td>
                    </tr>
                </tbody>
            </table>

        </div>

    </div>

</asp:Content>
