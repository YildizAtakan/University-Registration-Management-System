<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="HW2.AddCourse" %>


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
    <p style="height: 44px; font-size: x-large; color: white">Define a New Course</p>
    <table style="width: 100%; height: 190px;">
        <tr>
            <td height="40" style="font-size: medium">Course Name:</td>
            <td>
                <asp:TextBox ID="txt_name" runat="server" Style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td height="40" style="font-size: medium">Description:</td>
            <td>
                <asp:TextBox ID="txt_desc" runat="server" Style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td height="40" style="font-size: medium">Quota:</td>
            <td>
                <asp:TextBox ID="txt_quota" runat="server" Style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td height="40" style="font-size: medium">FinalDate:</td>
            <td>
                <asp:TextBox ID="txt_finaldate" runat="server" Style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td height="40" style="font-size: medium">Credits:</td>
            <td>
                <asp:TextBox ID="txt_credits" runat="server" Style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td height="40" style="font-size: medium">Consent Needed: (write -1 for yes, 0 for no)</td>
            <td>
                <asp:TextBox ID="txt_consent" runat="server" Style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td height="40" style="font-size: medium">Teaching Professor:</td>
            <td>
                <asp:TextBox ID="txt_teachingprof" runat="server" Style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_update" runat="server" OnClick="btn_update_Click" Text="Create New Course"
                    Style="font-size: medium" />
                <asp:Button ID="Button1" runat="server" OnClick="btn_returnMainMenu" Text="Return Main Menu"
                    Style="font-size: medium" />

                <br />

                <asp:Label ID="lbl_output" runat="server" Text="" Style="font-size: medium"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
