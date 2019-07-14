﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="TeacherInfo.aspx.cs" Inherits="Tafsir.Admin.TeacherInfo" %>
   
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>مشخصات استاد</p>
        </h2>
        <div class="" style="box-shadow: 0px 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">

            <table style="width: 95%;" dir="rtl">
                <tbody>
                    <tr>
                        <td>
                            <div class="register_form">
                                <div class="row">
                                    <div class="col-lg-12 form_group">
                                        <table>
                                            <tr>
                                                <td> نام : </td>
                                                <td><input type="text" /></td>
                                            </tr>
                                            <tr>
                                                <td> نام خانوادگی: </td>
                                                <td><input type="text" /></td>
                                            </tr>
                                            <tr>
                                                <td> نام کاربری: </td>
                                                <td><input type="text" /></td>
                                            </tr>
                                            <tr>
                                                <td> وضعیت: </td>
                                                <td><select runat="server" id="isActivate" style="width: 150px;">
                                            <option value="">--  فعال/غیر فعال  --</option>
                                            <option value="1">فعال</option>
                                            <option value="2">غیر فعال</option>
                                        </select></td>
                                            </tr>
                                            <tr>
                                                <td> میزان تحصیلات: </td>
                                                <td><select runat="server" id="gred" style="width: 150px;">
                                            <option value="">--  نا مشخص  --</option>
                                            <option value="1">کارشناسی</option>
                                            <option value="2">کارشناسی ارشد</option>                                                    
                                            <option value="2">دکترا </option>
                                        </select></td>
                                            </tr>
                                            <tr>
                                                <td> رزومه استاد: </td>
                                                <td><input type="text" /></td>
                                            </tr>
                                            <tr>
                                                <td> ایمیل: </td>
                                                <td><input type="text" /></td>
                                            </tr>
                                            <tr>
                                                <td> شماره تماس: </td>
                                                <td><input type="text" /></td>
                                            </tr>
                                            
                                            <tr>
                                                <td> </td>
                                                <td><button class="primary-btn">ثبت</button></td>
                                            </tr>
                                        </table>                                
                                        </div>
                                    </div>
                            </div>
                            <br />
                            <br />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
