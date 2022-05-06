using System;

namespace HW2
{
    public partial class ViewCourseStudent : System.Web.UI.Page
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
        protected void btn_returnMainMenu(object sender, EventArgs e)
        {
            Response.Redirect("ProfessorScreen.aspx");
        }
    }
}