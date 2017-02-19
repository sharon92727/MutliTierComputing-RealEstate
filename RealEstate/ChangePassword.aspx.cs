using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RealEstate
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string message=Password(Session["USER"].ToString(),txtOldPassword.Text, txtNewPassword.Text);
            lblStatus.Text = message;
        }
        public static string Password(string userid, string oldPassword, string newPassword)
        {
            string error;
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update users set password='" + newPassword + "' where userid='" + userid + "' and password='" + oldPassword + "')", con);
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                User e = new User();
                e.userid = userid;
                e.password = newPassword;
                error = "Password changed successfully";
            }
            catch (Exception)
            {
                error = "Old Password doesn't match";
            }
            finally
            {
                con.Close();
            }
            return error;
        }
    }
}