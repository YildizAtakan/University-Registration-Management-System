using System;

namespace HW2
{
    public partial class StudentScreen : System.Web.UI.Page
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
            Response.Redirect("StudentChangePW.aspx");
        }

        protected void lb_ViewCourseList_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCourseList.aspx");
        }

        protected void lb_AskForConsent_Click(object sender, EventArgs e)
        {
            Response.Redirect("AskForConsent.aspx");
        }

        protected void lb_RemoveCourseCL(object sender, EventArgs e)
        {
            Response.Redirect("RemoveCourseCL.aspx");
        }
        protected void lb_AddCourseCL(object sender, EventArgs e)
        {
            Response.Redirect("AddCourseCL.aspx");
        }
    }
}