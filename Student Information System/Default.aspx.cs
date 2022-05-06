using System;
using System.Data.OleDb;
using System.Web.Security;

namespace HW2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_btn_Click(object sender, EventArgs e)
        {
            string connDB = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|UserDB.accdb;Persist Security Info = False;";
            string pass = txt_password.Text;
            string password = FormsAuthentication.HashPasswordForStoringInConfigFile(pass, "md5");
            string username = txt_name.Text;

            if (String.IsNullOrEmpty(pass))
            {
                lbl_output.Text = "Lütfen şifrenizi giriniz!";
            }
            else if (String.IsNullOrEmpty(username))
            {
                lbl_output.Text = "Lütfen kullanıcı adınızı giriniz!";
            }
            else
            {

                using (OleDbConnection con = new OleDbConnection(connDB))


                {
                    OleDbCommand cmd = new OleDbCommand("Select * from UserList where username='" + username + "'  and  password='" + password + "'", con);
                    con.Open();

                    OleDbDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        Session["islogin"] = true;
                        Session["UserName"] = username;

                        if (dr["ActiveAccount"].ToString() == "True")
                        {
                            switch (dr["AccountType"].ToString())
                            {
                                case "0":
                                    Response.Redirect("StudentScreen.aspx");
                                    break;
                                case "1":
                                    Response.Redirect("AdminScreen.aspx");
                                    break;
                                case "2":
                                    Response.Redirect("ProfessorScreen.aspx");
                                    break;
                            }
                        }
                        else if (dr["ActiveAccount"].ToString() == "False")
                        {
                            lbl_output.Text = "Account is deactivated. Please contact administrator!";
                        }

                    }
                    else
                    {

                        lbl_output.Text = "Username or password is incorrect!";

                    }

                    dr.Close();
                    con.Close();
                }

            }

        }
    }
}