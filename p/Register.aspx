<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Tafsir.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>ثبت نام</p>
        </h2>

        <div class="innerBox">

            <div style="width: 95%;" dir="rtl">
                <div class="register_form">
                    <h3 runat="server" id="txtform">ثبت نام</h3>

                    <div runat="server" id="loginform" class="">
                        <p runat="server" id="texttitle">لطفاً نام کاربری و رمز خود را وارد کنید</p>
                        <div class="row form_group">
                            <table>
                                <tr>
                                    <td>ایمیل:</td>
                                    <td>
                                        <input runat="server" id="txtemail" name="email" placeholder="ایمیل" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" required="" type="email" /></td>
                                </tr>
                                <tr>
                                    <td>رمز عبور:</td>
                                    <td>
                                        <input id="txtpassword" name="txtpassword" runat="server" placeholder="رمز عبور" required="" type="Password" style="text-align: left" /></td>
                                </tr>
                                
                                <tr><td></td><td><asp:Button runat="server" ID="butRegister" Text="ثبت نام" OnClick="butRegister_OnClick" width="60px"/></td></tr>
                            </table>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
