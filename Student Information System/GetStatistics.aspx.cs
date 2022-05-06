using System;
using System.Data.OleDb;

namespace HW2
{
    public partial class GetStatistics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_name.Text = (string)Session["UserName"];
            lbl_session.Text = Session.SessionID;
            submit_btn_Click(sender, e);
            if (Session["UserName"] == null)
            {
                Response.Write("Redirect Not Working");
                Response.Redirect("default.aspx");
            }

        }


        protected void submit_btn_Click(object sender, EventArgs e)
        {
            string connDB = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|UserDB.accdb;Persist Security Info = False;";

            OleDbConnection conn = new OleDbConnection(connDB);
            conn.Open();


            OleDbCommand comm1 = new OleDbCommand("SELECT COUNT(*) FROM UserList WHERE AccountType=2  AND ActiveAccount=" + true + ";", conn);
            String a1 = comm1.ExecuteScalar().ToString();
            OleDbCommand comm2 = new OleDbCommand("SELECT COUNT(*) FROM UserList WHERE AccountType=0  AND ActiveAccount=" + true + ";", conn);
            String a2 = comm2.ExecuteScalar().ToString();
            OleDbCommand comm3 = new OleDbCommand("SELECT COUNT(*) FROM UserList WHERE AccountType=2  AND ActiveAccount=" + false + ";", conn);
            String a3 = comm3.ExecuteScalar().ToString();
            OleDbCommand comm4 = new OleDbCommand("SELECT COUNT(*) FROM UserList WHERE AccountType=0  AND ActiveAccount=" + false + ";", conn);
            String a4 = comm4.ExecuteScalar().ToString();

            conn.Close();
            lbl_name0.Text = a1;
            lbl_name1.Text = a2;
            lbl_name2.Text = a3;
            lbl_name3.Text = a3;

        }
        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }
        protected void btn_returnMainMenu(object sender, EventArgs e)
        {
            Response.Redirect("AdminScreen.aspx");
        }
    }
}