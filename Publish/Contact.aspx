<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Tafsir.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="map-responsive">
        <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d103628.856534545!2d51.39157690344555!3d35.74092859070159!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1s+University+of+Science+and+Technology!5e0!3m2!1sen!2s!4v1562993674388!5m2!1sen!2s" width="600" height="40%" frameborder="0" style="border:0" allowfullscreen></iframe>     
    </div>

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <div style="width: 25%; height: 100%; float: right" class="innerBox">
                    <h2 class="speratorLine">
                        <p>تماس با ما</p>
                    </h2>
                    <table style="width: 95%;" dir="rtl">
                        <tr>
                            <td>
                                <img src="images/contactImage.jpg" alt="" width="95%" />
                                <br />
                                <br />
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="ItemInList" style="text-align: right;">
                                <strong>آدرس:&nbsp;</strong> تهران، ستاد تفسیر قرآن کریم یک مؤسسه آموزشی،<br/>
                                <strong>کد پستی :&nbsp;</strong><span dir="rtl"> 12345-67890<br/></span>
                                <strong>صندوق پستی :&nbsp;</strong><span dir="rtl"> 35453/96768<br/></span>
                                <strong>تلفکس :&nbsp;</strong><span dir="rtl">+98(21) 434634645<br/></span>
                                <strong>ایمیل:&nbsp;</strong>support@setad.ir<br/>
                                    
                            </td>
                        </tr>
                    </table>
        </div>

        <div style="width:70%;vertical-align: top;text-align:right;direction: rtl;" class="innerBox">
            <h2 class="speratorLine">
                <p>فرم تماس</p>
            </h2>
            <h3 runat="server" id="TitleH3" style="color: limegreen"></h3>
            <div runat="server" id="bodydiv">
                 <table style="width: 95%; margin-right: 1%;" dir="rtl">
                    <tr>
                        <td>
                            <p class="textTozihat">ارسال ایمیل. لطفاً فیلدهای ستاره دار را پر کنید!</p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table style="width: 90%; margin-right: 1%;" dir="rtl">
                                <tr><td>*<input runat="server" id="txtname" name="txtname" placeholder="نام و نام خانوادگی" required="" type="text" /></td></tr>
                                <tr><td>&nbsp;&nbsp;<input runat="server" id="txttel" name="txttel" placeholder="شماره تماس" required="" type="tel" style="text-align: left" /></td></tr>
                                <tr><td>*<input runat="server" id="txtemail" name="txtemail" placeholder="ایمیل" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" required="" type="email" /><br /></td></tr>
                                <tr><td>*<input runat="server" id="txttitle" name="txttitle" placeholder="موضوع" required="" type="text" /></td></tr>
                                <tr><td>*<textarea runat="server" id="txttext" name="txttext" placeholder="متن پیام" rows="15" type="text" style="width: 90%;"></textarea></td></tr>
                                <tr><td><asp:Button runat="server" ID="butSend" OnClick="butSend_OnClick" Text="ارسال" width="50px"/></td></tr>
                            </table>
                        </td>
                    </tr>
                 </table>



                    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%">
    <div style="width: 100%;">
        <h2 class="speratorLine">
            <p>نظرات کاربران</p>
        </h2>
        <div id="newsContent">
            <table style="width: 95%;" dir="rtl">
                <tbody>
                <asp:ListView ID="ListComment" runat="server">
                    <ItemTemplate>
                        <tr style="border-bottom: 1px">
                            <td>
                                    <div style="padding: 2px;border-style: outset;border-width:2px;border-color: aqua;background-color: aquamarine">
                                        <p style="text-align: right"><%# Eval("DateTime")%></p>
                                        
                                        <p style="text-align: right;"><%# Eval("Comment")%></p>
                                        
                                        <p style="text-align: right; color:coral; margin: 2px 20px 2px 2px;padding: 9px"><%# Eval("Reply")%></p>

                                    </div>
                                    <hr />
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
        </div>
    </div>
</asp:Content>
