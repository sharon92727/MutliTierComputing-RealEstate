using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data.SqlClient;

namespace RealEstate
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MailSubmit_Click(object sender, EventArgs e)
        {
            /*try
            {
                SendMail();
            }
            catch (Exception)
            {
                lblStatus.Text = "Mail not Sent";
            }*/
            SendMail();
        }
        protected void SendMail()
        {
            if (LoginDAL.isAvailable(txtUserid.Text) == false)
            {
                string newPassword;
                newPassword = txtName.Text.Substring(0, 4) + DateTime.Now.ToString("hhmm");
                //User user = ForgotPwd(txtUserid.Text, txtEmail.Text, newPassword);
                SqlConnection con = new SqlConnection(Database.ConnectionString);
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("update users set password='" + newPassword + "' where userid='" + txtUserid.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    SqlDataReader dr = cmd.ExecuteReader();
                    User e = new User();
                    e.userid = txtUserid.Text;
                    e.password = newPassword;
                }
                catch (Exception)
                {
                }
                finally
                {
                    con.Close();
                }

                var fromAddress = new MailAddress("hello.home.hunt@gmail.com", "Home Hunt");
                var toAddress = new MailAddress(txtEmail.Text, txtName.Text);
                const string fromPassword = "home_hunt_2012";
                const string subject = "New Password (HOME HUNT)";
                string body = " Your New Password :   ";
                body += "  " + newPassword + "  ";
                var smtp = new SmtpClient();
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtp.Credentials = new NetworkCredential(fromAddress.Address, fromPassword);
                    smtp.Timeout = 20000;
                }
                using (var message = new MailMessage(fromAddress, toAddress))
                {
                    message.Subject = subject;
                    message.Body = body;
                    message.IsBodyHtml = true;
                    smtp.Send(message);
                    lblStatus.Text = "New Password has been sent to your Inbox";
                    txtName.Text = "";
                    txtEmail.Text = "";
                    txtUserid.Text = "";
                }
            }
        }
        public static User ForgotPwd(string userid, string email, string newpwd)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update users set password='" + newpwd + "' where userid='" + userid + "')", con);
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                User e = new User();
                e.userid = userid;
                e.password = newpwd;
                return e;
            }
            catch (Exception)
            {
                return null;
            }
            finally
            {
                con.Close();
            }
        }
    }
}