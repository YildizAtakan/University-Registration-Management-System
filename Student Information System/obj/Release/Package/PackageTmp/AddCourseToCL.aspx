<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddCourseToCL.aspx.cs" Inherits="HW2.AddCourseToCL" %>

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
    <p style="height: 44px; font-size: x-large; color: white">&nbsp;</p>
    <p style="height: 44px; font-size: x-large; color: white">Obtain List of All Courses</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName"></asp:BoundField>
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Quota" HeaderText="Quota" SortExpression="Quota" />
            <asp:BoundField DataField="FinalDate" HeaderText="FinalDate" SortExpression="FinalDate" />
            <asp:BoundField DataField="Credits" HeaderText="Credits" SortExpression="Credits" />
            <asp:CheckBoxField DataField="ConsentNeeded" HeaderText="ConsentNeeded" SortExpression="ConsentNeeded" />
            <asp:BoundField DataField="TeachingProf" HeaderText="TeachingProf" SortExpression="TeachingProf" />
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
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/UserDB.accdb" SelectCommand="SELECT * FROM [Courses]"></asp:AccessDataSource>

    <br />

    <asp:Button ID="Button1" runat="server" OnClick="btn_returnMainMenu" Text="Return Main Menu"
        Style="font-size: medium" />

</asp:Content>
