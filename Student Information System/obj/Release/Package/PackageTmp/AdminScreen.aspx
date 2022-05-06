<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminScreen.aspx.cs" Inherits="HW2.AdminScreen" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="height: 44px; font-size: x-large; color: white">&nbsp;<strong>Welcome to ADMIN panel.</strong></p>
    <div class="contentPanel">
        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="lb_addprof" runat="server" OnClick="lb_addProf_Click">&#9679 Define a New Professor
                </asp:LinkButton>
            </span>
        </p>
        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="lb_addstudent" runat="server" OnClick="lb_addStudent_Click">&#9679 Define a New Student
                </asp:LinkButton>
            </span>
        </p>
        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="LinkButton7" runat="server" OnClick="lb_addCourse_Click">&#9679 Define a New Course
                </asp:LinkButton>
            </span>
        </p>
        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="lb_deactivateuser" runat="server" OnClick="lb_deactivateUser_Click">&#9679 Deactivate an Existing User
                </asp:LinkButton>
            </span>
        </p>
        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="LinkButton6" runat="server" OnClick="lb_change_Click">&#9679 Reset the Password of An Existing User
                </asp:LinkButton>
            </span>
        </p>

        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="lb_obtainProfessors_Click">&#9679 Obtain the List of All Professors
                </asp:LinkButton>
            </span>
        </p>
        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="lb_obtainStudents_Click">&#9679 Obtain the List of All Students
                </asp:LinkButton>
            </span>
        </p>
        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="lb_obtainCourses_Click">&#9679 Obtain the List of All Courses
                </asp:LinkButton>
            </span>
        </p>
        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="lb_mgmParameters_Click">&#9679 Management of System Parameters
                </asp:LinkButton>
            </span>
        </p>
        <p>
            <span style="font-weight: normal">
                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="lb_statistics_Click">&#9679 Get User Statistics Report
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
