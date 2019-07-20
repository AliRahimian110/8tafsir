<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="exam_dec.aspx.cs" Inherits="Tafsir.exam_dec" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
            text-align: right;
            width: 130px;
        }
    .auto-style2 {
        width: 100%;
        height: 321px;
    }
        .auto-style3 {
            text-align: right;
            width: 698px;
        }
        .auto-style5 {
            width: 1656px;
        }
        .auto-style6 {
            width: 49px;
        }
        .auto-style8 {
            width: 119px;
            text-align: left;
        }
        .auto-style9 {
            width: 100%;
            height: 372px;
        }
        .auto-style10 {
            text-align: right;
            width: 130px;
            height: 49px;
        }
        .auto-style11 {
            text-align: right;
            width: 698px;
            height: 49px;
        }
        .auto-style12 {
            height: 59px;
        }
        .auto-style13 {
            width: 1656px;
            height: 59px;
        }
        .auto-style14 {
            height: 63px;
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div dir="rtl">
        <strong>
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Large" ForeColor="#284E98" OnMenuItemClick="Menu1_MenuItemClick" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#B5C7DE" />
            <DynamicSelectedStyle BackColor="#507CD1" />
            <Items>
                <asp:MenuItem Text="آزمون                                                " Value="0" Selected="True"></asp:MenuItem>
                <asp:MenuItem Text="سوالات                                          " Value="1"></asp:MenuItem>
                <asp:MenuItem Text="نتیجه آزمون                                " Value="2"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#507CD1" />
        </asp:Menu>
        </strong>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
                <table class="auto-style2" dir="rtl">
    <tr>
        <td class="auto-style1">عنوان آزمون </td>
        <td class="auto-style3">
            <asp:TextBox ID="exm_title" runat="server" Width="644px"></asp:TextBox>
            <asp:HiddenField ID="exm_s" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style1">دوره آموزشی </td>
        <td class="auto-style3">
            <asp:DropDownList ID="dd_course" runat="server" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="ID" Width="651px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TbCourse] WHERE [Active] = @Active ">
                <SelectParameters>
                    <asp:Parameter DefaultValue="true" Name="Active" Type="Boolean" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">مدت زمان آزمون </td>
        <td class="auto-style3">
            <asp:TextBox ID="exm_len" runat="server" MaxLength="3" TextMode="Number"></asp:TextBox>
            &nbsp;&nbsp; دقیقه </td>
    </tr>
                    <tr>
                        <td class="auto-style10">تاریخ برگزاری </td>
                        <td class="auto-style11">
                            <asp:TextBox ID="exm_date" runat="server" MaxLength="10"></asp:TextBox><script type="text/javascript">var objCal1 = new AMIB.persianCalendar('ContentPlaceHolder1_exm_date');</script>

                            &nbsp;&nbsp;&nbsp;&nbsp; ساعت&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="exm_time" runat="server" MaxLength="5" TextMode="Time" Width="115px"></asp:TextBox>

                        </td>
                    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="save_exm" runat="server" Text="ثبت" Width="100px" OnClick="save_exm_Click" />
            &nbsp; &nbsp;&nbsp;<asp:Button ID="del_exm" runat="server" OnClientClick="return confirm('آیا از حذف این رکورد اطمینان دارید ؟؟');" OnClick="del_exm_Click" Text="حذف" Width="100px" />
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="cancel_exm" runat="server" OnClick="Button2_Click" Text="انصراف" Width="100px" />
        </td>
    </tr>
</table>
    <br />
                <div class="text-right">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowHeaderWhenEmpty="True" Width="100%">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="ID" HeaderText="شماره آزمون" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="NumberCourse" HeaderText="کد دوره آموزشی" SortExpression="NumberCourse" />
                            <asp:BoundField DataField="Title" HeaderText="دوره آموزشی" SortExpression="Title" />
                            <asp:BoundField DataField="exm_title" HeaderText="عنوان امتحان" SortExpression="exm_title" />
                            <asp:BoundField DataField="exm_length" HeaderText="مدت زمان" SortExpression="exm_length" />
                            <asp:BoundField DataField="exm_date" HeaderText="تاریخ برگزاری" SortExpression="exm_date" />
                            <asp:BoundField DataField="exm_time" HeaderText="ساعت برگزاری" SortExpression="exm_time" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [vw_exam]"></asp:SqlDataSource>
        </asp:View>
         <asp:View ID="View2" runat="server">
             <div dir="rtl" class="text-right">
                 <table class="auto-style9">
                     <tr>
                                                  <td>آزمون</td>
                         <td class="auto-style5">
                             <asp:DropDownList ID="dd_exam" runat="server" Width="400px" DataSourceID="SqlDataSource3" DataTextField="title" DataValueField="id">
                             </asp:DropDownList>
                             <asp:HiddenField ID="qs_s" runat="server" />
                             <asp:HiddenField ID="exm_ss" runat="server" />
                             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select id , exm_title + '  '+title as title from vw_exam"></asp:SqlDataSource>
                             &nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Button ID="Button3" runat="server" Text="انتخاب" OnClick="Button3_Click" />
                                                  </td>

                     </tr>
                     <tr>
                                                  <td>سوال</td>
                         <td class="auto-style5">
                             <asp:TextBox ID="question" runat="server" Width="600px" TextMode="MultiLine"></asp:TextBox>
                         </td>

                     </tr>
                     <tr>
                                                  <td>گزینه 1 </td>
                         <td class="auto-style5">
                             <asp:TextBox ID="ans_1" runat="server" Width="600px" TextMode="MultiLine"></asp:TextBox>
                         </td>

                     </tr>
                     <tr>
                                                  <td>گزینه 2</td>
                         <td class="auto-style5">
                             <asp:TextBox ID="ans_2" runat="server" Width="600px" TextMode="MultiLine"></asp:TextBox>
                         </td>

                     </tr>
                     <tr>
                                                 <td>گزینه 3</td>
                         <td class="auto-style5">
                             <asp:TextBox ID="ans_3" runat="server" Width="600px" TextMode="MultiLine"></asp:TextBox>
                         </td>
 
                     </tr>
                     <tr>
                                                  <td>گزینه 4</td>
                         <td class="auto-style5">
                             <asp:TextBox ID="ans_4" runat="server" Width="600px" TextMode="MultiLine"></asp:TextBox>
                         </td>

                     </tr>
                     <tr>
                                                  <td class="auto-style12">جواب صحیح</td>
                         <td class="auto-style13">

                             <table >
                                 <tr>
                                     <td>
                                         <asp:TextBox ID="ans_c" runat="server" Width="40px" MaxLength="1" TextMode="Number"></asp:TextBox>
                                     </td>
                                     <td class="auto-style8">نمره </td>
                                     <td class="auto-style6">
                                         <asp:TextBox ID="p_score" runat="server" Width="40px" TextMode="Number"></asp:TextBox>
                                     </td>
                                     <td class="auto-style8">نمره منفی</td>
                                     <td>
                                         <asp:TextBox ID="n_score" runat="server" Width="40px" TextMode="Number">0</asp:TextBox>
                                     </td>
                                 </tr>
                             </table>
                         </td>

                     </tr>
                     <tr>
                         <td>&nbsp;</td>
                         <td class="auto-style5">
                             <asp:Button ID="qs_save" runat="server" Text="ثبت" Width="100px" OnClick="qs_save_Click" />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Button ID="qs_del" runat="server" Text="حذف" Width="100px"  OnClientClick="return confirm('آیا از حذف این رکورد اطمینان دارید ؟؟');" OnClick="Button5_Click" />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Button ID="qs_cancel" runat="server" Text="انصراف" Width="100px" OnClick="qs_cancel_Click" />
                         </td>
                     </tr>
                 </table>
                 <br />
                 <asp:GridView ID="GridView2" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" ShowHeaderWhenEmpty="True">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     <Columns>
                         <asp:CommandField ShowSelectButton="True" />
                         <asp:BoundField DataField="id" HeaderText="سریال" ReadOnly="True" SortExpression="id" />
                         <asp:BoundField DataField="question" HeaderText="سوال" SortExpression="question" />
                         <asp:BoundField DataField="an1" HeaderText="گزینه 1" SortExpression="an1" />
                         <asp:BoundField DataField="an2" HeaderText="گزینه 2" SortExpression="an2" />
                         <asp:BoundField DataField="an3" HeaderText="گزینه 3" SortExpression="an3" />
                         <asp:BoundField DataField="an4" HeaderText="گزینه 4" SortExpression="an4" />
                         <asp:BoundField DataField="currect_ans" HeaderText="جواب صحیح" SortExpression="currect_ans" />
                         <asp:BoundField DataField="pos_score" HeaderText="نمره" SortExpression="pos_score" />
                         <asp:BoundField DataField="neg_score" HeaderText="نمره منفی" SortExpression="neg_score" />
                     </Columns>
                     <EditRowStyle BackColor="#999999" />
                     <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                     <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                     <SortedAscendingCellStyle BackColor="#E9E7E2" />
                     <SortedAscendingHeaderStyle BackColor="#506C8C" />
                     <SortedDescendingCellStyle BackColor="#FFFDF8" />
                     <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT  [id], [title], [question], [an1], [an2], [an3], [an4], [currect_ans], [pos_score], [neg_score] FROM [vw_question] WHERE ([exam_id] = @exam_id)">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="exm_ss" DefaultValue="-1" Name="exam_id" PropertyName="Value" />
                     </SelectParameters>
                 </asp:SqlDataSource>
                 <br/>
                 </div>
        </asp:View>
            <asp:View ID="View3" runat="server">
                <div dir="rtl">
                <table class="w-100">
                    <tr>
                        <td class="auto-style14">آزمون مورد نظر&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource5" DataTextField="title" DataValueField="id" Width="400px">
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="نمایش نتیجه" />
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select id , exm_title + '  '+title as title from vw_exam"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-right">
                            <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" AutoGenerateColumns="False" DataKeyNames="student_id" DataSourceID="SqlDataSource6">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="exm_title" HeaderText="آزمون" ReadOnly="True" SortExpression="exm_title" />
                                    <asp:BoundField DataField="name" HeaderText="دانشجو" ReadOnly="True" SortExpression="name" />
                                    <asp:BoundField DataField="student_id" HeaderText="کد دانشجو" InsertVisible="False" ReadOnly="True" SortExpression="student_id" />
                                    <asp:BoundField DataField="pos_score" HeaderText="نمره مثبت" ReadOnly="True" SortExpression="pos_score" />
                                    <asp:BoundField DataField="neg_score" HeaderText="نمره منفی" ReadOnly="True" SortExpression="neg_score" />
                                    <asp:BoundField DataField="pos_ans" HeaderText="تعداد پاسخ صحیح" ReadOnly="True" SortExpression="pos_ans" />
                                    <asp:BoundField DataField="neg_ans" HeaderText="تعداد پاسخ غلط" ReadOnly="True" SortExpression="neg_ans" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select exm_title+  ' '+title as exm_title
,firstname + ' '+LastName  as name,t3.id as student_id,
t1.pos_score,t1.neg_score,t1.pos_ans,t1.neg_ans


from 
(select id, student_id,sum(pos_result) as pos_score,sum(neg_result) as neg_score,sum(result) as pos_ans,count(*) - sum(result) as neg_ans from vw_exam_result group by id, student_id) t1
inner join vw_exam t2 on t1.id = t2.id inner join tbstudent t3 on  t1.student_id = t3.id
where t2.id = @exam_id">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="-1" Name="exam_id" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                </div>
            </asp:View>
        </asp:MultiView>
        </div>
</asp:Content>
