<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="BarnameAmoozeshiAzmoon.aspx.cs" Inherits="Tafsir.BarnameAmoozeshiAzmoon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>ثبت نام</p>
        </h2>
        <div class="" style="box-shadow: 0px 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">

            <table style="width: 95%;" dir="rtl">
                <tbody>
                    <%--<tr><td ><img class="boxOfContentImages" src="images/overView.jpg"></td></tr>--%>
                    <tr>
                        <td>
                            <div class="register_form">
                                <h3 runat="server" id="titledore">فرم انتخاب دروس دوره مجازی</h3>
                                <form class="form_area" id="myForm" action="post_selectCourse.html" method="post">
                                    <table border="3" cellspacing="1px" cellpading="10px" width="700px" height="200px" align="center" valign="top">
                                        <tr>
                                            <th>ردیف</th>
                                            <th>شماره و گروه درس</th>
                                            <th>نام درس</th>
                                            <th>تعداد واحد</th>
                                            <th>نام استاد</th>
                                            <th>ساعات ارائه</th>
                                            <th>تاریخ آزمون نهایی</th>
                                        </tr>
                                        <tr>
                                            <td align="center">1</td>
                                            <td align="center">1-112</td>
                                            <td>تفسیر موضوعی</td>
                                            <td align="center">2</td>
                                            <td>استاد دکتر منصوری</td>
                                            <td>دوشنبه 14الی16</td>
                                            <td>شنبه 98/3/17</td>
                                        </tr>
                                        <tr>
                                            <td align="center">2</td>
                                            <td align="center">1-141</td>
                                            <td>تفسیر موضوعی</td>
                                            <td align="center">2</td>
                                            <td>استاد دکتر صداقت</td>
                                            <td>شنبه 14الی16</td>
                                            <td>شنبه 98/3/17</td>
                                        </tr>
                                        <tr>
                                            <td align="center">3</td>
                                            <td align="center">1-325</td>
                                            <td>نهج البلاغه</td>
                                            <td align="center">3</td>
                                            <td>استاد دکتر ایزدی</td>
                                            <td>یکشنبه19الی21</td>
                                            <td>دوشنبه 98/3/19</td>
                                        </tr>

                                    </table>

                                    <p style="text-align: center;">
                                        <input type="submit" value="ارسال" name="submit" /></p>
                                </form>
                            </div>
                            
                            <br>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center; color: #2E2E2E; font-size: small;"></td>
                    </tr>
                </tbody>
            </table>

        </div>

    </div>

</asp:Content>

