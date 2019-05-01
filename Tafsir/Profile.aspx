 <%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Tafsir.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>پروفایل</p>
        </h2>
        <div class="" style="box-shadow: 0px 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">

            <table style="width: 95%;" dir="rtl">
                <tbody>
                    <tr>
                        <td>

                            <div class="register_form">
                                <h3>ثبت نام افراد در سایت</h3>
                                <p>لطفاً فرم زیر را به دقت تکمیل نمایید</p>
                                <div class="row">
                                    <div class="col-lg-12 form_group">
                                        <input name="FirstName" placeholder="نام" required="" type="text"><br>
                                        <input name="LastName" placeholder="نام خانوادگی" required="" type="text"><br>
                                        <input name="BirthDate" placeholder="تاریخ تولد" required="" type="text" id="BirthDate" class="pdate"><script type="text/javascript">var objCal1 = new AMIB.persianCalendar('BirthDate');</script><br>
                                        <input name="CodeMeli" placeholder="کد ملی" pattern="[0-9]{10}" required="" type="text" style="text-align: left; direction: ltr;"><br>
                                        <input name="Name" placeholder="شماره تماس" pattern="0[1-9]{10}" required="" type="tel" style="text-align: left; direction: ltr;"><br>
                                        <label>نوع استفاده شما از سایت:</label>
                                        <input type="radio" id="teacher" name="userType" value="1">استاد
												<input type="radio" id="student" name="userType" value="2" checked>دانشجو<br>

                                        <select id="LastGrade" style="width: 200px;">
                                            <option value="">لطفاً آخرین مدرک تحصیلی خود انتخاب کنید</option>
                                            <option value="1">ابتدایی</option>
                                            <option value="2">دیپلم</option>
                                            <option value="3">لیسانس</option>
                                            <option value="4">فوق لیسانس</option>
                                            <option value="5">دکترا</option>
                                            <option value="6">حوزوی</option>
                                        </select><br>
                                        <br>
                                        <textarea type="text" name="Resoumeh" id="Resoumeh" value="رزومه" rows="15" style="text-align: right; direction: rtl; width: 500px">لطفاً رزومه خود را اینجا بنویسید</textarea><br>
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
