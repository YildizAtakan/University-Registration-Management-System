<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HW2.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p style="height: 44px; font-size: x-large; color: white">
        Welcome to Registration Management System
    </p>
    <p style="height: 504px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" ImageUrl="img1.png" Height="400px" />
    </p>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <div class="sidebar_section">

        <h2 style="font-size: x-large">LOGIN</h2>
        <label class="bold">
            <br />
            <span style="font-size: medium">Username</span>:<br />
        </label>
        <asp:TextBox ID="txt_name" AutoComplete="username" runat="server" Height="25px" Width="175px"></asp:TextBox>
        <br />
        <label class="bold">
            <br />
        </label>
        <label>
            <span style="font-size: medium">Password</span></label><label class="bold">:</label>
        <label>
            <br />
            <asp:TextBox ID="txt_password" AutoComplete="current-password" TextMode="Password" runat="server"
                Height="25px" Width="175px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="submit_btn" runat="server" Text="Login" OnClick="submit_btn_Click"
                Style="color: #3333FF; font-weight: 700; background-color: #CCCCFF;" BorderStyle="Solid"
                Font-Bold="True" Height="35px" Width="70px" />
        </label>
        <br />
        <label>
            <asp:Label ID="lbl_output" runat="server" Text=""></asp:Label>
        </label>

    </div>
</asp:Content>
