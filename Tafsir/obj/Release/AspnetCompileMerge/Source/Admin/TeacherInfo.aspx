<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="TeacherInfo.aspx.cs" Inherits="Tafsir.Admin.TeacherInfo" %>
   
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>عنوان تمپلیت</p>
        </h2>
        <div class="" style="box-shadow: 0px 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">

            <table style="width: 95%;" dir="rtl">
                <tbody>
                    <tr>
                        <!--<td ><img class="boxOfContentImages" src="images/overView.jpg"></td>-->
                    </tr>
                    <tr>
                        <td>
                            <div class="register_form">
                                <h3>افزودن استاد</h3>
                                <div class="row">
                                    <div class="col-lg-12 form_group">
                                        عنوان خبر: &nbsp;&nbsp;<input runat="server" id="txtTitleNews" name="name" placeholder="عنوان خبر" required="" type="text" size="100" maxlength="100" /><br />
                                        <%--<input runat="server" id="txtDateNews" type="text" class="pdate" placeholder="تاریخ انتشار" required="" /><script type="text/javascript">var objCal1 = new AMIB.persianCalendar('txtDateNews');</script><br/>--%>
                                        تاریخ انتشار:
                                        <input type="text" id="pcal1" class="pdate" placeholder="تاریخ انتشار" required="" /><script type="text/javascript">var objCal1 = new AMIB.persianCalendar('pcal1');</script><br />
                                        نوع خبر:
                                        <select runat="server" id="txtnewstype" style="width: 150px;">
                                            <option value="">-- نوع خبر --</option>
                                            <option value="1">خبر</option>
                                            <option value="2">رخداد</option>
                                            <option value="3">مقالات قرآنی و تفسیری</option>
                                        </select><br />
                                        وضغیت:
                                        <select runat="server" id="isActivate" style="width: 150px;">
                                            <option value="">--  فعال/غیر فعال  --</option>
                                            <option value="1">فعال</option>
                                            <option value="2">غیر فعال</option>
                                        </select><br />
                                        خلاصه:&nbsp;
                                        <textarea runat="server" id="txtDecs" name="name" placeholder="خلاصه خبر" rows="5" type="text" style="width: 85%" maxlength="400"></textarea><br />
                                        متن خبر:
                                        <textarea runat="server" id="txtTextNews" name="name" placeholder="متن خبر" rows="10" type="text" style="width: 85%"></textarea><script>tinymce.init({ selector: '#txtTextNews' });</script><br />
                                        فایل تصویری:
                                        <input type="file" name="imageFile" id="imageFile" title="لطفاً یک فایل تصویری انتخاب کنید!" value="تصویر خبر" accept=".jpg,.gif" onchange="CheckExtension(this,['jpg','gif']);" />
                                    </div>

                                    <div class="col-lg-12 text-center">
                                        <br />
                                        <asp:Button runat="server" ID="butAddNews" OnClick="butAddNews_OnClick" Text="ثبت" />
                                    </div>
                                </div>
                            </div>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center; color: #2E2E2E; font-size: small;">کلیات و تاریخچه ستاد</td>
                    </tr>
                </tbody>
            </table>

        </div>

    </div>


</asp:Content>
