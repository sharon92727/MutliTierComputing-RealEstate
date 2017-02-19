using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace RealEstate
{
    public partial class Contacts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SendMail()
    {
        var fromAddress = new MailAddress("hello.home.hunt@gmail.com", "Home Hunt");
        var toAddress = new MailAddress("hello.home.hunt@gmail.com", txtName.Text);
        const string fromPassword = "home_hunt_2012";
        const string subject = "Contact Me";
        string body = "FROM --> " + txtName.Text + "   ";
        body += "EMAIL ID --> " + txtEmail.Text + "   ";
        body += "COMMENTS --> " + txtMessage.Text + "  ";
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
        }

        var fromAddress1 = new MailAddress("hello.home.hunt@gmail.com", "Home Hunt");
        var toAddress1 = new MailAddress(txtEmail.Text, txtName.Text);
        const string fromPassword1 = "home_hunt_2012";
        const string subject1 = "THANK YOU FROM HOME HUNT";
        string body1 = "  THANK YOU FOR YOUR FEEDBACK !  ";
        var smtp1 = new SmtpClient();
        {
            smtp1.Host = "smtp.gmail.com";
            smtp1.Port = 587;
            smtp1.EnableSsl = true;
            smtp1.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp1.Credentials = new NetworkCredential(fromAddress1.Address, fromPassword1);
            smtp1.Timeout = 20000;
        }
        using (var message = new MailMessage(fromAddress1, toAddress1))
        {
            message.Subject = subject1;
            message.Body = body1;
            message.IsBodyHtml = true;
            smtp.Send(message);
            lblMsgSend.Text = "Mail Sent";
            txtName.Text = "";
            txtEmail.Text = "";
            txtMessage.Text = "";
        }
    }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SendMail();
            }
            catch (Exception) { lblMsgSend.Text = "Mail not Sent"; }
        }
    }
}