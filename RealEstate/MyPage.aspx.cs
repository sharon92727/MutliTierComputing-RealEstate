using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RealEstate
{
    public partial class MyPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblSuccess.Text = "";
            if (Session["USER"].ToString() == "")
                lblStatus.Text = "You have not Signed into your account";
            else
                lblStatus.Text = "Your Account details";      
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            Label FirstName = (Label)UserDetails.FindControl("firstname");
            Label LastName = (Label)UserDetails.FindControl("lastname");
            TextBox Email = (TextBox)UserDetails.FindControl("emailTextBox");
            TextBox Mobile = (TextBox)UserDetails.FindControl("mobileTextBox");
            TextBox City = (TextBox)UserDetails.FindControl("cityTextBox");
            if (Email == null)
                Email.Text = "";
            if (Mobile == null)
                Mobile.Text = "";
            if (City == null)
                City.Text = "";
            bool succ=EditAccount.UpdateInfo(Session["USER"].ToString(), Email.Text, Mobile.Text, City.Text);
            if (succ == true)
                lblSuccess.Text = "Your Account Details have been Updated !";
        }

        
    }
}