<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="CourseInfo.aspx.cs" Inherits="Tafsir.Admin.CourseInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>مشخصات درس</p>
        </h2>
        <div class="innerBox">
            <p>
                <a href="CourseList.aspx" onclick="window.history.go(-1); return false;" style="float: right; padding: 2px 5px; margin: 2px 8px">بازگشت</a><br />
            </p>
            <table style="width: 95%;" dir="rtl">
                <tr class="">
                    <td width="10%" align="left"></td>
                    <td></td>
                </tr>
                <tr>
                    <td align="left">شماره درس:&nbsp;</td>
                    <td>
                        <input runat="server" id="txtNumberCourse" name="name" required="" type="text" size="100" maxlength="100" /><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">نوع : </td>
                    <td>
                        <select runat="server" id="txtTypeCourse" style="width: 200px;">
                            <option value="1">حضوری</option>
                            <option value="2">غیر حضوری</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td align="left">استاد : </td>
                    <td>
                        <asp:DropDownList runat="server" ID="txtTeacher" style="width: 200px;"/>
                    </td>
                </tr>

                <tr>
                    <td align="left">واحد:&nbsp;</td>
                    <td>
                        <input runat="server" id="txtVAHED" name="name" required="" type="text" size="100" maxlength="100" /><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">عنوان درس:&nbsp;</td>
                    <td>
                        <input runat="server" id="txtTitle" name="name" required="" type="text" size="100" maxlength="100" /><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">تاریخ:&nbsp;</td>
                    <td>
                        <input runat="server" id="txtDateStart" name="name" required="" type="text" size="100" maxlength="100" /><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">زمان:&nbsp;</td>
                    <td>
                        <input runat="server" id="txtTimeCourse" name="name" required="" type="text" size="100" maxlength="100" /><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">تاریخ امتحان:&nbsp;</td>
                    <td>
                        <input runat="server" id="txtTimeQuiz" name="name" required="" type="text" size="100" maxlength="100" /><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">مدت:&nbsp;</td>
                    <td>
                        <input runat="server" id="txtLength" name="name" required="" type="text" size="100" maxlength="100" /><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">آدرس کلاس:&nbsp;</td>
                    <td>
                        <input runat="server" id="txtAddress" name="name" required="" type="text" size="100" maxlength="100" /><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">Link:&nbsp;</td>
                    <td>
                        <input runat="server" id="txtLink" name="name" required="" type="text" size="100" maxlength="100" /><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">نمایش :</td>
                    <td>
                        <input type="checkbox" runat="server" id="txtActive" />
                    </td>
                </tr>

                <tr>
                    <td align="left">توضیحات:</td>
                    <td>
                        <textarea runat="server" id="txtDescription" name="name" rows="10" type="text" style="width: 85%"></textarea>
                        <script>tinymce.init({ selector: '#ContentPlaceHolder1_txtDescription' });</script>
                    </td>
                </tr>

                <tr>
                    <td align="left"></td>
                    <td>
                        <asp:Button runat="server" ID="butAddNews" OnClick="butUpData_OnClick" Text="ثبت" />
                        <asp:Button runat="server" ID="butDelete" OnClick="butDelete_OnClick" Text="حذف" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
