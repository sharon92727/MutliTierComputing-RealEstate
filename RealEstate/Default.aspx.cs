using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Configuration;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace RealEstate
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["USER"] = "";
            Session["LOGGED"] = "0";
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string msg; 
            User user = LoginDAL.Login(txtUSERID.Text, txtPASSWORD.Text, out msg);
            if (user == null)
            {
                lblMsg.Text = msg;
            }
            else
            {
                lblWelcome.Text = "Hello "+user.userid+" !";
                Session["USER"] = user.userid;
                Session["LOGGED"] = "1";
            }
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            bool flag = LoginDAL.isAvailable(txtUserId1.Text);
            if (flag == true)
            {
                string message="";
                User user = LoginDAL.Register(txtFirstname.Text,txtLastname.Text,txtUserId1.Text,txtPassword1.Text,txtEmail.Text,txtMobile.Text,txtCity.Text,out message);
                if (user == null)
                {
                    lblStatus.Text = message;
                }
                else
                {
                    lblWelcome.Text = "Hello " + user.userid + " !";
                    Session["USER"] = user.userid;
                    Session["LOGGED"] = "1";
                    //Response.Redirect("Selling.aspx");
                }                
            }
        }

        public object user { get; set; }
    }
}