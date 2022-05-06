using System;
using System.Data;
using System.Data.OleDb;
using System.Web.Security;

namespace HW2
{
    public partial class ProfessorChangePW : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_name.Text = (string)Session["UserName"];
            lbl_session.Text = Session.SessionID;
            txt_username.Text = (string)Session["UserName"];

            if (Session["UserName"] == null)
            {
                Response.Write("Redirect Not Working");
                Response.Redirect("default.aspx");
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            string connDB = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|UserDB.accdb;Persist Security Info = False;";
            string pass = txt_password.Text;
            string password = FormsAuthentication.HashPasswordForStoringInConfigFile(pass, "md5");
            string username = txt_username.Text;
            using (OleDbConnection con = new OleDbConnection(connDB))
            {
                OleDbCommand cmd = new OleDbCommand();


                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Update [UserList] SET [password]=(@pw) where [username]=(@un)";
                cmd.Parameters.AddWithValue("@pw", password);
                cmd.Parameters.AddWithValue("@un", username);
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
            Response.Redirect("ProfessorScreen.aspx");
        }
    }
}