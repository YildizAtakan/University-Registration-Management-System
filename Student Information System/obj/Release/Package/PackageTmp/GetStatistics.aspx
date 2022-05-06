<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GetStatistics.aspx.cs" Inherits="HW2.GetStatistics" %>


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
    <p style="height: 44px; font-size: x-large; color: white">Get Statistics</p>
    <table style="width: 100%; height: 190px;">
        <tr>
            <td>Active Professors</td>
            <td>
                <asp:Label ID="lbl_name0" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Active Students</td>
            <td>
                <asp:Label ID="lbl_name1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Deactivated Professors</td>
            <td>
                <asp:Label ID="lbl_name2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Deactivated Students</td>
            <td>
                <asp:Label ID="lbl_name3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="btn_returnMainMenu" Text="Return Main Menu" />

                <asp:Label ID="lbl_output" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
