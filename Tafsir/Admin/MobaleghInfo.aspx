<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="MobaleghInfo.aspx.cs" Inherits="Tafsir.Admin.MobaleghInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 95%; margin-right: 2.5%; margin-left: 2.5%; overflow: hidden;">
        <h2 class="speratorLine">
            <p>
                نظر کاربر
            </p>
        </h2>
        <div class="" style="box-shadow: 0px 1px 4px rgba(0,0,0,0.95); border-radius: 3px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">
            <div class="">
                <div class=" form_group"><br/>
                    نام:&nbsp;<input runat="server" id="txtName" name="name" readonly="readonly" required="" type="text" size="100" maxlength="100" /><br />
                    Email: &nbsp;&nbsp;<input runat="server" id="txtEmail" name="name" readonly="readonly" required="" type="text" size="100" maxlength="100" /><br />
                    تاریخ :<input runat="server" id="txtData" name="name" readonly="readonly" required="" type="text" size="100" maxlength="100" /><br />
                    <%--<input type="text" id="pcal1" class="pdate" placeholder="تاریخ" required="" />--%><script type="text/javascript">var objCal1 = new AMIB.persianCalendar('pcal1');</script><br />
                                                                 
                    توضیحات:&nbsp;<textarea runat="server" id="txtDescription" name="name" readonly="readonly" rows="10" type="text" style="width: 85%" maxlength="400"></textarea><br />
               
                    <div class=" text-center disnon">
                        <asp:Button runat="server" ID="butAddNews" OnClick="butUpData_OnClick" Text="ثبت" />
                    </div> 
                </div>  
            </div>                      
        </div>
    </div>
</asp:Content>
