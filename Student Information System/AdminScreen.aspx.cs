using System;

namespace HW2
{
    public partial class AdminScreen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_name.Text = (string)Session["UserName"];
            lbl_session.Text = Session.SessionID;
            if (Session["UserName"] == null)
            {
                Response.Write("Redirect Not Working");
                Response.Redirect("default.aspx");
            }
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }

        protected void lb_change_Click(object sender, EventArgs e)
        {
            Response.Redirect("ResetPW.aspx");
        }

        protected void lb_addProf_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProf.aspx");
        }

        protected void lb_addStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddStudent.aspx");
        }

        protected void lb_deactivateUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeactivateUser.aspx");
        }

        protected void lb_mgmParameters_Click(object sender, EventArgs e)
        {
            Response.Redirect("SystemParameters.aspx");
        }

        protected void lb_statistics_Click(object sender, EventArgs e)
        {
            Response.Redirect("GetStatistics.aspx");
        }

        protected void lb_addCourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCourse.aspx");
        }

        protected void lb_obtainProfessors_Click(object sender, EventArgs e)
        {
            Response.Redirect("ObtainProfessors.aspx");
        }

        protected void lb_obtainCourses_Click(object sender, EventArgs e)
        {
            Response.Redirect("ObtainCourses.aspx");
        }

        protected void lb_obtainStudents_Click(object sender, EventArgs e)
        {
            Response.Redirect("ObtainStudents.aspx");
        }


    }
}