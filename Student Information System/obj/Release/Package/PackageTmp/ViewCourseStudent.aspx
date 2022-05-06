<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewCourseStudent.aspx.cs" Inherits="HW2.ViewCourseStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="sidebar_section">
        <h2>Welcome</h2>
        <label class="bold">Username:</label>
        <br />
        <asp:Label ID="lbl_name" runat="server" Text="Label"></asp:Label>
        <br />
        <label class="bold">SessionID:</label>
        <br />
        <asp:Label ID="lbl_session" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="logout_btn" runat="server" Text="Logout" OnClick="logout_btn_Click" />
    </div>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="height: 44px; font-size: x-large; color: white">&nbsp;View Courses</p>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID"></asp:BoundField>
            <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Quota" HeaderText="Quota" SortExpression="Quota" />
            <asp:BoundField DataField="FinalDate" HeaderText="FinalDate" SortExpression="FinalDate" />
            <asp:BoundField DataField="Credits" HeaderText="Credits" SortExpression="Credits" />
            <asp:CheckBoxField DataField="ConsentNeeded" HeaderText="ConsentNeeded" SortExpression="ConsentNeeded" />
            <asp:BoundField DataField="TeachingProf" HeaderText="TeachingProf" SortExpression="TeachingProf" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/UserDB.accdb" SelectCommand="SELECT * FROM [Courses] WHERE ([TeachingProf] = ?)">
        <SelectParameters>
            <asp:SessionParameter Name="TeachingProf" SessionField="UserName" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <p style="height: 44px; font-size: x-large; color: white">View Students</p>

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource2" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" DataKeyNames="CourseID">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
            <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
            <asp:BoundField DataField="TeacherID" HeaderText="TeacherID" SortExpression="TeacherID" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/UserDB.accdb" SelectCommand="SELECT * FROM [CourseList] WHERE ([TeacherID] = ?)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [CourseList] WHERE [CourseID] = ? AND (([StudentID] = ?) OR ([StudentID] IS NULL AND ? IS NULL)) AND (([Grade] = ?) OR ([Grade] IS NULL AND ? IS NULL)) AND (([TeacherID] = ?) OR ([TeacherID] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [CourseList] ([CourseID], [StudentID], [Grade], [TeacherID]) VALUES (?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [CourseList] SET [StudentID] = ?, [Grade] = ?, [TeacherID] = ? WHERE [CourseID] = ? AND (([StudentID] = ?) OR ([StudentID] IS NULL AND ? IS NULL)) AND (([Grade] = ?) OR ([Grade] IS NULL AND ? IS NULL)) AND (([TeacherID] = ?) OR ([TeacherID] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_CourseID" Type="String" />
            <asp:Parameter Name="original_StudentID" Type="String" />
            <asp:Parameter Name="original_StudentID" Type="String" />
            <asp:Parameter Name="original_Grade" Type="String" />
            <asp:Parameter Name="original_Grade" Type="String" />
            <asp:Parameter Name="original_TeacherID" Type="String" />
            <asp:Parameter Name="original_TeacherID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CourseID" Type="String" />
            <asp:Parameter Name="StudentID" Type="String" />
            <asp:Parameter Name="Grade" Type="String" />
            <asp:Parameter Name="TeacherID" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="TeacherID" SessionField="UserName" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="StudentID" Type="String" />
            <asp:Parameter Name="Grade" Type="String" />
            <asp:Parameter Name="TeacherID" Type="String" />
            <asp:Parameter Name="original_CourseID" Type="String" />
            <asp:Parameter Name="original_StudentID" Type="String" />
            <asp:Parameter Name="original_StudentID" Type="String" />
            <asp:Parameter Name="original_Grade" Type="String" />
            <asp:Parameter Name="original_Grade" Type="String" />
            <asp:Parameter Name="original_TeacherID" Type="String" />
            <asp:Parameter Name="original_TeacherID" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>


    <br />


    <asp:Button ID="Button1" runat="server" OnClick="btn_returnMainMenu" Text="Return Main Menu"
        Style="font-size: medium" />&nbsp;
</asp:Content>
