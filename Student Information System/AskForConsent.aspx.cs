using System;
using System.Data;
using System.Data.OleDb;

namespace HW2
{
    public partial class AskForConsent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_name.Text = (string)Session["UserName"];
            lbl_session.Text = Session.SessionID;
            txt_maxpwd.Text = (string)Session["UserName"];
            Console.WriteLine(lbl_name.Text);

            if (Session["UserName"] == null)
            {
                Response.Write("Redirect Not Working");
                Response.Redirect("default.aspx");
            }

        }

        public static int MinPwd;
        public static int MaxPwd;
        public static int MaxCourse;
        public static int MaxStuCourse;
        public static int MaxProfCourse;

        protected void btn_update_Click(object sender, EventArgs e)
        {
            string connDB = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|UserDB.accdb;Persist Security Info = False;";
            string minpwd = txt_minpwd.Text;
            string maxpwd = txt_maxpwd.Text;
            string maxcourse = txt_maxcourse.Text;

            using (OleDbConnection con = new OleDbConnection(connDB))
            {
                OleDbCommand cmd = new OleDbCommand();





                cmd.CommandType = CommandType.Text;
                cmd.CommandText = " INSERT INTO Consents(CourseID, StudentID, ProfUserName, Approved) VALUES((@p1),(@p2),(@p3),(@p4));";
                cmd.Parameters.AddWithValue("@p1", minpwd);
                cmd.Parameters.AddWithValue("@p2", maxpwd);
                cmd.Parameters.AddWithValue("@p3", maxcourse);
                cmd.Parameters.AddWithValue("@p4", "0");

                cmd.Connection = con;

                int rowsAffected = 0;

                try
                {
                    con.Open();
                    rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();
                }
                catch (Exception ex)
                {
                    lbl_output.Text = "Hata" + ex.Message;
                    return;
                }
                finally
                {
                    if (con.State != ConnectionState.Closed)
                        con.Close();
                }
                if (rowsAffected == 1)
                    lbl_output.Text = "Kayıt edildi";
                else
                    lbl_output.Text = "Kayıt edilmedi";

            }
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }
        protected void btn_returnMainMenu(object sender, EventArgs e)
        {
            Response.Redirect("StudentScreen.aspx");
        }

    }
}