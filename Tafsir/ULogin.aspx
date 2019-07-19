<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="ULogin.aspx.cs" Inherits="Tafsir.ULogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <div style="width:95%;margin-right:2.5%;margin-left:2.5%;overflow: hidden;">
        <h2 class="speratorLine"><p>ورود به سیستم</p></h2>
        <div class="innerBox">
					
            <table style="width: 95%;" dir="rtl">
                <tbody>
                <tr>
                    <!--<td ><img class="boxOfContentImages" src="images/overView.jpg"></td>-->
                    <td>
                            <h4><a href="ULogin.aspx">ورود ویژه دانش پژوهان</a></h4>
                        </td>
                </tr>
                <tr>
                    <td>
                        <div class="register_form">
                            <h3 runat="server" id="txtform" style="align:right;">ورود </h3> 
                            
                            <asp:Button runat="server" ID="butExit" Visible ="False" Text="خروج" OnClick="butExit_OnClick"/>

                            <div runat="server" id="loginform" >
                            <p class="textTozihat">لطفاً نام کاربری و رمز خود را وارد کنید</p>
                                <div class="row">
                                    <div class="col-lg-12 form_group">
                                        <input id="txtusername" name="txtusername" runat="server" placeholder="Your Name" required="" type="text" style="text-align:left;width:250px;"/><br/>
                                        <input id="txtpassword" name="txtpassword" runat="server" placeholder="Your Password" required="" type="Password" style="text-align:left;width:250px;"/><br/>
                                    </div>
                                    <div class="col-lg-12" align="right">
                                        <br />                                    
                                        <asp:Button runat="server" ID="butLogin" Text="ورود" OnClick="butLogin_OnClick"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                    </td>
                </tr>
                <tr>
                    <td style="color: #2E2E2E; font-size: small;" >
                        <a href="UForgatPassword.aspx" >کلمه عبور خود را فراموش کرده اید؟</a>
                    </td>
                </tr>
                </tbody>
            </table>
						 
        </div>
	
    </div>

</asp:Content>
