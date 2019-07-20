<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="Tafsir.Course" %>

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
                        <label runat="server" id="txtNumberCourse"  /><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">نوع : </td>
                    <td>
                        <%--<select runat="server" id="txtTypeCourse" style="width: 200px; ">
                            <option value="1">حضوری</option>
                            <option value="2">غیر حضوری</option>
                        </select>--%>
                        
                        <label runat="server" id="txtTypeCourse"  /><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">استاد : </td>
                    <td>
                        <%--<asp:DropDownList runat="server" ID="txtTeacher" style="width: 200px;"/>--%>
                        <label runat="server" id="txtTeacher"  /><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">واحد:&nbsp;</td>
                    <td>
                        <label runat="server" id="txtVAHED" /><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">عنوان درس:&nbsp;</td>
                    <td>
                        <label runat="server" id="txtTitle"/><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">تاریخ:&nbsp;</td>
                    <td>
                        <label runat="server" id="txtDateStart"/><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">زمان:&nbsp;</td>
                    <td>
                        <label runat="server" id="txtTimeCourse" /><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">تاریخ امتحان:&nbsp;</td>
                    <td>
                        <label runat="server" id="txtTimeQuiz" /><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">مدت:&nbsp;</td>
                    <td>
                        <label runat="server" id="txtLength"  /><br />
                    </td>
                </tr>

                <tr>
                    <td align="left">آدرس کلاس:&nbsp;</td>
                    <td>
                        <label runat="server" id="txtAddress" /><br />
                    </td>
                </tr>

                <%--<tr>
                    <td align="left">Link:&nbsp;</td>
                    <td>
                        <label runat="server" id="txtLink" /><br />
                    </td>
                </tr>--%>

                <%--<tr>
                    <td align="left">نمایش :</td>
                    <td>
                        <input type="checkbox" runat="server" id="txtActive" />
                    </td>
                </tr>--%>

                <tr>
                    <td align="left">توضیحات:</td>
                    <td>
                        <label runat="server" id="txtDescription" style="width: 85%"/>
                    </td>
                </tr>

                <tr>
                    <td align="left"></td>
                    <td>
                       <%-- <asp:Button runat="server" ID="butAddNews" OnClick="butUpData_OnClick" Text="ثبت" />
                        <asp:Button runat="server" ID="butDelete" OnClick="butDelete_OnClick" Text="حذف" />--%>
                        
                        <%--<div runat="server" id="Div1" Visible='<%# Convert.ToBoolean(Eval("Reg")).Equals(false)%> ' style="background-color: burlywood;width: 100%"> 
                            <a href="?Course=<%#Eval("ID")%>&id=<%#Eval("TypeCourse")%>" runat="server" id="butSabt" target="_parent" class="btn btn-default" > ثبت نام</a>
                        </div>
                                                        
                        <div runat="server" id="Div2" Visible='<%#Eval("Reg")%> ' style="background-color: aquamarine;width: 100%"> 
                            <a href="<%#Eval("Address")%>" runat="server" id="butvorod" target="_parent" class="btn btn-default" >ورود</a>
                        </div>--%>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
