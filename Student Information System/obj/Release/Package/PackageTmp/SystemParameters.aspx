<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SystemParameters.aspx.cs" Inherits="HW2.SystemParameters" %>

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


<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <p style="height: 44px; font-size: x-large; color: white">&nbsp;</p>
    <p style="height: 44px; font-size: x-large; color: white">Change System Parameters</p>
    <table style="width: 100%;">
        <tr>
            <td>MinPwd:</td>
            <td>
                <asp:TextBox ID="txt_minpwd" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>MaxPwd:</td>
            <td>
                <asp:TextBox ID="txt_maxpwd" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>MaxCourse:</td>
            <td>
                <asp:TextBox ID="txt_maxcourse" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>MaxStuCourse:</td>
            <td>
                <asp:TextBox ID="txt_maxstucourse" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>MaxProfCourse:</td>
            <td>
                <asp:TextBox ID="txt_maxprofcourse" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btn_update" runat="server" OnClick="btn_update_Click" Text="Update" />
                <asp:Button ID="Button1" runat="server" OnClick="btn_returnMainMenu" Text="Return Main Menu" />

                <br />

                <asp:Label ID="lbl_output" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
