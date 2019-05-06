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

                    <div runat="server" id="loginform" class="">
                        <p>لطفاً نام کاربری و رمز خود را وارد کنید</p>
                        <div class="row form_group">
                            <table>
                                <tr>
                                    <td>نام :</td>
                                    <td>
                                        <input id="txtfname" name="txtfname" runat="server" placeholder="نام" required="" type="text" /></td>
                                </tr>
                                <tr>
                                    <td>نام خانوادگی:</td>
                                    <td>
                                        <input id="txtlname" name="txtusername" runat="server" placeholder="نام خانوادگی" required="" type="text" /></td>
                                </tr>
                                <tr>
                                    <td>تاریخ تولد</td>
                                    <td>
                                        <input name="BirthDate" placeholder="تاریخ تولد" required="" type="text" id="BirthDate" class="pdate" /><script type="text/javascript">var objCal1 = new AMIB.persianCalendar('BirthDate');</script></td>
                                </tr>
                                <%--<tr>
                                    <td>نام کاربری:</td>
                                    <td>
                                        <input id="txtusername" name="txtusername" runat="server" placeholder="نام کاربری" required="" type="text" style="text-align: left" /></td>
                                </tr>--%>
                                <%--<tr>
                                    <td>کد ملی</td>
                                    <td><input name="CodeMeli" placeholder="کد ملی" pattern="[0-9]{10}" required="" type="text" style="text-align:left;direction:ltr;"/></td>
                                </tr>--%>
                                <%--<tr>
                                    <td>شماره تماس</td>
                                    <td><input name="Name" placeholder="شماره تماس" pattern="0[1-9]{10}" required="" type="tel" style="text-align:left;direction:ltr;"/></td>
                                </tr>--%>
                                <tr>
                                    <td>ایمیل:</td>
                                    <td>
                                        <input runat="server" id="txtemail" name="email" placeholder="ایمیل" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$"
                                            required="" type="email" /></td>
                                </tr>
                                <tr>
                                    <td>رمز عبور:</td>
                                    <td>
                                        <input id="txtpassword" name="txtpassword" runat="server" placeholder="رمز عبور" required="" type="Password" style="text-align: left" /></td>
                                </tr>
                                <%--<tr>
                                    <td>مدرک تحصیلی</td>
                                    <td><select id="LastGrade" style="width: 200px;">
                                        <option value="">لطفاً آخرین مدرک تحصیلی خود انتخاب کنید</option>
                                        <option value="1">ابتدایی</option>
                                        <option value="2">دیپلم</option>
                                        <option value="3">لیسانس</option>
                                        <option value="4">فوق لیسانس</option>
                                        <option value="5">دکترا</option>
                                        <option value="6">حوزوی</option>
                                    </select></td>
                                </tr>--%>
                                <%--<tr>
                                    <td>حوزه فعالیت</td>
                                    <td><textarea name="name" placeholder="حوزه فعالیت" rows="15" type="text" style="width:400px" ></textarea></td>
                                </tr>--%>
                                <tr>
                                    <td></td>
                                    <td>
                                        <input type="file" name="Resoumeh" id="Resoumeh" title="لطفاً رزومه خود را در فرمت pdf یا word بارگذاری نمایید" value=" رزومه" accept=".pdf,.doc,.docx" onchange="CheckExtension(this,['pdf','doc','docx']);"></td>
                                </tr>
                                <%--<tr>
                                    <td></td>
                                    <td></td>
                                </tr>--%>
                            </table>

                        </div>
                        <div class="col-lg-12 text-center">
                            <asp:Button runat="server" ID="butRegister" Text="ثبت نام" OnClick="butRegister_OnClick" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
