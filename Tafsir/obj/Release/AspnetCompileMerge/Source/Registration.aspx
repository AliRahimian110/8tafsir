<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Tafsir.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>ثبت نام</p>
        </h2>
        <div class="innerBox">

            <table style="width: 99%;" dir="rtl">
                <tbody>
                    <%--<tr><td ><img class="boxOfContentImages" src="images/overView.jpg"></td></tr>--%>
                    <tr>
                        <td>
                            <div class="register_form">
                                <h3 runat="server" id="titledore">فرم انتخاب دروس دوره مجازی</h3>
                                
                                <table style="width: 99%" border="3" cellspacing="1px" cellpading="10px"  align="center" valign="top">
                                        <tr class="tableHeader">
                                            <th>ردیف</th>
                                            <th>شماره و گروه درس</th>
                                            <th>نام درس</th>
                                            <th>تعداد واحد</th>
                                            <th>نام استاد</th>
                                            <th>ساعات ارائه</th>
                                            <%--<th class="col-lg-2">تاریخ آزمون نهایی</th>--%>
                                            <th>ثبت نام</th>
                                        </tr>
                                        <asp:ListView ID="ListView1" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td class="text-center"><%#Eval("Row")%></td>
                                                    <td class="text-center"><%#Eval("NumberCourse")%></td>
                                                    <td>
                                                        <%--<%#Eval("Title")%>--%>
                                                        <a href="/Course.aspx?id=<%#Eval("ID")%>" target="_parent" class="btn btn-default" > <%#Eval("Title")%> </a>
                                                    </td>
                                                    <td class="text-center"><%#Eval("VAHED")%></td>
                                                    <td><%--<%#Eval("TeacherName")%>--%>
                                                        <a href=" /TeacherRezoomeh.aspx?id=<%#Eval("ID")%>" target="_parent" class="btn btn-default" > <%#Eval("TeacherName")%> </a>
                                                    </td>
                                                    <td class="text-center"><%#Eval("TimeCourse")%></td>
                                                    <%--<td class="text-center"><%#Eval("TimeQuiz")%></td>--%>
                                                    <td class="text-center">
                                                        <%--<asp:CheckBox ID="chk" runat="server" Checked='False' />--%>
                                                        <%--<input id="but<%#Eval("Id")%>" name="but<%#Eval("Id")%>" title="ثبت نام" value="ثبت نام" type="button"  />--%>
                                                        
                                                        <div runat="server" id="Div1" Visible='<%# Convert.ToBoolean(Eval("Reg")).Equals(false)%> ' style="background-color: burlywood;width: 100%"> 
                                                            <a href="?Course=<%#Eval("ID")%>&id=<%#Eval("TypeCourse")%>" target="_parent" class="btn btn-default" > ثبت نام</a>
                                                      </div>
                                                        
                                                        <div runat="server" id="Div2" Visible='<%#Eval("Reg")%> ' style="background-color: aquamarine;width: 100%"> 
                                                            <a href="<%#Eval("Address")%>" target="_parent" class="btn btn-default" >ورود</a>
                                                        </div>
                                                        
                                                        <%--<a href="<%#Eval("Link")%>" target="_parent" class="btn btn-default"> ورود</a>--%>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:ListView>
                                </table>
                                <%--<p style="text-align: center;">
                                    <input type="submit" value="ارسال" name="submit" cli="ButSave_OnClik" runat="server"/>
                                    <Asp:Button runat="server" ID="ButtSave" Text="ثبت نام" OnClick="ButtSave_OnClik"/>
                                </p>--%>
                            </div>
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
