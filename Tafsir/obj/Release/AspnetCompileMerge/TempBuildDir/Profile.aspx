 <%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Tafsir.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>پروفایل</p>
        </h2>
        <div class="innerBox">
            <table style="width: 95%;" dir="rtl">
                <tbody>
                    <tr>
                        <td>
                            <div class="register_form">
                                <h3 runat="server" id="texttitle"></h3>
                                <p class="textTozihat">لطفاً فرم زیر را به دقت تکمیل نمایید</p>
                                <div class="row">
                                    <div class="col-lg-12 form_group">
                                        <input runat="server" id="txtFirstName" name="FirstName" placeholder="نام" required="" type="text"/><br>
                                        <input runat="server" id="txtLastName" name="LastName" placeholder="نام خانوادگی" required="" type="text"/><br>
                                        <input runat="server" id="txtBirthDate" name="BirthDate" placeholder="تاریخ تولد" required="" type="text" class="pdate"/><script type="text/javascript">var objCal1 = new AMIB.persianCalendar('ContentPlaceHolder1_txtBirthDate');</script><br>
                                        <input runat="server" id="txtCodeMeli" name="CodeMeli" placeholder="کد ملی" pattern="[0-9]{10}" required="" type="text" style="text-align: left; direction: ltr;"/><br>
                                        <input runat="server" id="txtTel" name="Tel" placeholder="شماره تماس" pattern="0[1-9]{10}" required="" type="tel" style="text-align: left; direction: ltr;"/><br>
                                       <%-- <label>نوع استفاده شما از سایت:</label>
                                        <input type="radio" id="teacher" name="userType" value="1" style="width: 15px">استاد &nbsp; &nbsp; &nbsp; 
                                        <input type="radio" id="student" name="userType" value="2" style="width: 15px" checked>دانشجو<br/>--%>

                                        <select runat="server" id="txtLastGrade">
                                            <option value="">لطفاً آخرین مدرک تحصیلی خود انتخاب کنید</option>
                                            <option value="1">ابتدایی</option>
                                            <option value="2">دیپلم</option>
                                            <option value="3">لیسانس</option>
                                            <option value="4">فوق لیسانس</option>
                                            <option value="5">دکترا</option>
                                            <option value="6">حوزوی</option>
                                        </select><br>
                                        <br>
                                        <textarea runat="server" type="text" name="Resoumeh" id="txtResoumeh" value="لطفاً رزومه خود را اینجا بنویسید" rows="15" style="text-align: right; direction: rtl; width:90%"></textarea><script>tinymce.init({selector: '#ContentPlaceHolder1_txtResoumeh' });</script><br>
                                    </div>
                                    <div class="col-lg-12 text-center">
                                        <br>
                                        <input type="submit" value="ارسال" name="submit">
                                    </div>
                                </div>
                            </div>

                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

</asp:Content>
