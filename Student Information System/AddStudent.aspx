<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="HW2.AddStudent" %>


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
    <p style="height: 44px; font-size: x-large; color: white">Define a New Student</p>
    <table style="width: 100%; height: 190px;">
        <tr>
            <td height="40" style="font-size: medium">Username:</td>
            <td>
                <asp:TextBox ID="txt_username" runat="server" Style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td height="40" style="font-size: medium">Name:</td>
            <td>
                <asp:TextBox ID="txt_name" runat="server" Style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td height="40" style="font-size: medium">Surname:</td>
            <td>
                <asp:TextBox ID="txt_surname" runat="server" Style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 39px; font-size: medium">Password:</td>
            <td style="height: 39px">
                <asp:TextBox ID="txt_password" runat="server" Style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td height="40" style="font-size: medium">Email:</td>
            <td>
                <asp:TextBox ID="txt_email" runat="server" Style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_update" runat="server" OnClick="btn_update_Click" Text="Create New Student"
                    Style="font-size: medium" />
                <asp:Button ID="Button1" runat="server" OnClick="btn_returnMainMenu" Text="Return Main Menu"
                    Style="font-size: medium" />

                <br />

                <asp:Label ID="lbl_output" runat="server" Text="" Style="font-size: medium"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
