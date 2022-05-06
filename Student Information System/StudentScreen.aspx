<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="StudentScreen.aspx.cs" Inherits="HW2.StudentScreen" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="height: 44px; font-size: x-large; color: white">&nbsp;<strong>Welcome to STUDENT panel.</strong></p>
    <div class="contentPanel">
        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="lb_addprof" runat="server" OnClick="lb_ChangePW_Click">&#9679 Change Password
                </asp:LinkButton>
            </span>
        </p>
        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="lb_addstudent" runat="server" OnClick="lb_AskForConsent_Click">&#9679 Ask for Consent
                </asp:LinkButton>
            </span>
        </p>
        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="lb_deactivateuser" runat="server" OnClick="lb_AddCourseCL">&#9679 Add a Course to Course List
                </asp:LinkButton>
            </span>
        </p>
        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="lb_RemoveCourseCL">&#9679 Remove a Course from the Course List
                </asp:LinkButton>
            </span>
        </p>
        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="LinkButton6" runat="server" OnClick="lb_ViewCourseList_Click">&#9679 View Course List
                </asp:LinkButton>
            </span>
        </p>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
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
