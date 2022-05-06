<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewConsentRequests.aspx.cs" Inherits="HW2.ViewConsentRequests" %>

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
    <p style="height: 44px; font-size: x-large;">View/Process Consent Requests</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" DataKeyNames="ID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" ReadOnly="True" InsertVisible="False"></asp:BoundField>
            <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" />
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
            <asp:BoundField DataField="ProfUserName" HeaderText="ProfUserName" SortExpression="ProfUserName" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CheckBoxField DataField="Approved" HeaderText="Approved" SortExpression="Approved" />
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
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/UserDB.accdb" SelectCommand="SELECT * FROM [Consents] WHERE ([ProfUserName] = ?)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Consents] WHERE [ID] = ? AND (([CourseID] = ?) OR ([CourseID] IS NULL AND ? IS NULL)) AND (([StudentID] = ?) OR ([StudentID] IS NULL AND ? IS NULL)) AND (([ProfUserName] = ?) OR ([ProfUserName] IS NULL AND ? IS NULL)) AND [Approved] = ?" InsertCommand="INSERT INTO [Consents] ([ID], [CourseID], [StudentID], [ProfUserName], [Approved]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Consents] SET [CourseID] = ?, [StudentID] = ?, [ProfUserName] = ?, [Approved] = ? WHERE [ID] = ? AND (([CourseID] = ?) OR ([CourseID] IS NULL AND ? IS NULL)) AND (([StudentID] = ?) OR ([StudentID] IS NULL AND ? IS NULL)) AND (([ProfUserName] = ?) OR ([ProfUserName] IS NULL AND ? IS NULL)) AND [Approved] = ?">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_CourseID" Type="String" />
            <asp:Parameter Name="original_CourseID" Type="String" />
            <asp:Parameter Name="original_StudentID" Type="String" />
            <asp:Parameter Name="original_StudentID" Type="String" />
            <asp:Parameter Name="original_ProfUserName" Type="String" />
            <asp:Parameter Name="original_ProfUserName" Type="String" />
            <asp:Parameter Name="original_Approved" Type="Boolean" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="CourseID" Type="String" />
            <asp:Parameter Name="StudentID" Type="String" />
            <asp:Parameter Name="ProfUserName" Type="String" />
            <asp:Parameter Name="Approved" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="ProfUserName" SessionField="UserName" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CourseID" Type="String" />
            <asp:Parameter Name="StudentID" Type="String" />
            <asp:Parameter Name="ProfUserName" Type="String" />
            <asp:Parameter Name="Approved" Type="Boolean" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_CourseID" Type="String" />
            <asp:Parameter Name="original_CourseID" Type="String" />
            <asp:Parameter Name="original_StudentID" Type="String" />
            <asp:Parameter Name="original_StudentID" Type="String" />
            <asp:Parameter Name="original_ProfUserName" Type="String" />
            <asp:Parameter Name="original_ProfUserName" Type="String" />
            <asp:Parameter Name="original_Approved" Type="Boolean" />
        </UpdateParameters>
    </asp:AccessDataSource>

    <br />

    <asp:Button ID="Button1" runat="server" OnClick="btn_returnMainMenu" Text="Return Main Menu"
        Style="font-size: medium" />

</asp:Content>
