<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="DarkhastMobalegh.aspx.cs" Inherits="Tafsir.DarkhastMobalegh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%">
        <h2 class="speratorLine">
            <p>درخواست مبلغ</p>
        </h2>
        <div class="innerBox">
            <table style="width: 95%;" dir="rtl">
                <tr>
                    <td>
                        <h3 runat="server" id="TitleH3" style="color: limegreen"></h3>
                        <div runat="server" id="bodydiv" class="register_form">
                            <h3>درخواست مبلغ</h3>
                            <p class="textTozihat">در صورت نیاز به مبلغ قرآنی لطفاً فرم زیر را پر کنید و دکمه ارسال را بفشارید، ما در اسرع وقت با شما تماس خواهیم گرفت</p>

                            <div >
                                <table style="width:100%">
                                        <tr><td><input runat="server" id="txtname" name="name" placeholder="نام و نام خانوادگی در خواست کننده" required="" type="text" /><br /></td></tr>
                                        <tr><td><input runat="server" id="txtnamecom" name="namecom" placeholder="نام ارگان یا مرکز مطبوع" required="" type="text" /><br /></td></tr>
                                        <tr><td><input runat="server" id="txttel" name="tel" placeholder="شماره تماس" pattern="0[1-9]{10}" required="" type="tel" style="text-align: left" /><br /></td></tr>
                                        <tr><td><input runat="server" id="txtemail" name="email" placeholder="ایمیل" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" required="" type="email" /><br /></td></tr>
                                        <tr><td><textarea runat="server" id="txtdoc" name="textDoc" placeholder="توضیحات" rows="15" type="text" style="width:80%" />
                                            <script>tinymce.init({ selector: '#ContentPlaceHolder1_textDoc' });</script>
                                            </td></tr>
                                        <tr><td><asp:Button runat="server" ID="butSend" OnClick="butSend_OnClick" Text="ارسال" class="primary-btn" width="50px"/></td></tr>
           
                                </table>
                            </div>
                            
                        </div>

                    </td>
                </tr>
            </table>
        </div>
    </div>

</asp:Content>
