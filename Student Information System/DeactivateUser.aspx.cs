using System;
using System.Data;
using System.Data.OleDb;

namespace HW2
{
    public partial class DeactivateUser : System.Web.UI.Page
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

        protected void btn_update_Click(object sender, EventArgs e)
        {
            string connDB = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|UserDB.accdb;Persist Security Info = False;";

            string username = txt_username.Text;
            if (!username.Equals("admin"))
            {
                using (OleDbConnection con = new OleDbConnection(connDB))
                {
                    OleDbCommand cmd = new OleDbCommand();

                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "Update [UserList] SET [ActiveAccount]=(@aa) where [username]=(@un);";
                    cmd.Parameters.AddWithValue("@aa", "0");
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
            else lbl_output.Text = "Admin can not be deactivated!";
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