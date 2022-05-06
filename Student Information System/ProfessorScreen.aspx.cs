using System;

namespace HW2
{
    public partial class ProfessorScreen : System.Web.UI.Page
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
            Response.Redirect("UpdateInfo.aspx");
        }
        protected void lb_ChangePW_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProfessorChangePW.aspx");
        }

        protected void lb_ViewCourseStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCourseStudent.aspx");
        }

        protected void lb_ViewConsent_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewConsentRequests.aspx");
        }

        protected void lb_SubmitGrades_Click(object sender, EventArgs e)
        {
            Response.Redirect("SubmitGrades.aspx");
        }
    }
}