<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProfessorScreen.aspx.cs" Inherits="HW2.ProfessorScreen" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="height: 44px; font-size: x-large; color: white">&nbsp;<strong>Welcome to PROFESSOR panel.</strong></p>
    <div class="contentPanel">
        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="lb_addprof" runat="server" OnClick="lb_ChangePW_Click">&#9679 Change Password
                </asp:LinkButton>
            </span>
        </p>
        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="lb_deactivateuser" runat="server" OnClick="lb_ViewConsent_Click">&#9679 View/Process Consent Requests
                </asp:LinkButton>
            </span>
        </p>
        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="LinkButton6" runat="server" OnClick="lb_ViewCourseStudent_Click">&#9679 View Course and Student List
                </asp:LinkButton>
            </span>
        </p>

        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="lb_SubmitGrades_Click">&#9679 Submit Grades
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
