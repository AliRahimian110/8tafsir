<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Tafsir.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>ثبت نام</p>
        </h2>

        <div class="" style="box-shadow: 0 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">

            <div style="width: 95%;" dir="rtl">

                <div class="register_form">
                    <h3 runat="server" id="txtform">ثبت نام</h3>

                    <div runat="server" id="loginform">
                        <p>لطفاً نام کاربری و رمز خود را وارد کنید</p>
                        <div class="row">
                            <table>
                                <tr>
                                    <td>نام :</td>
                                    <td>
                                        <input id="txtfname" name="txtfname" runat="server" placeholder="Your Name" required="" type="text" style="text-align: left" /></td>
                                </tr>
                                <tr>
                                    <td>نام کاربری:</td>
                                    <td>
                                        <input id="txtusername" name="txtusername" runat="server" placeholder="Your Name" required="" type="text" style="text-align: left" /></td>
                                </tr>
                                <tr>
                                    <td>رمز عبور:</td>
                                    <td>
                                        <input id="txtpassword" name="txtpassword" runat="server" placeholder="Your Password" required="" type="Password" style="text-align: left" /></td>
                                </tr>
                                <tr>
                                    <td>ایمبل:</td>
                                    <td>
                                        <input runat="server" id="txtemail" name="email" placeholder="Your Email Address" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$"
                                            required="" type="email" /></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <div class="col-lg-12 text-center">
                                            <asp:Button runat="server" ID="butRegister" Text="ثبت نام" OnClick="butRegister_OnClick" />
                                        </div>
                                    </td>
                                </tr>
                            </table>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
