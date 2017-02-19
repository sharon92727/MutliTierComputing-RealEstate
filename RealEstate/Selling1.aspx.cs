using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RealEstate
{
    public partial class Selling1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSubmitClicked(object sender, EventArgs e)
        {
            if(ddlFacing==null)
                ddlFacing.Text = "";
            if(txtBed==null)
                txtBed.Text = "";
            if(txtBath==null)
                txtBath.Text = "";
            if(rbPark==null)
                rbPark.Text = "";
            if(rbSecurity==null)
                rbSecurity.Text = "";
            if(rbGenerator==null)
                rbGenerator.Text = "";
            if(rbFurnish==null)
                rbFurnish.Text = "";
            //if (ddlFacing.Text!="" & txtBed.Text!="" & txtBath.Text!="")
            PropertyDetails1.AddDetails1(ddlFacing.Text, txtBed.Text, txtBath.Text, rbPark.Text, rbSecurity.Text, rbGenerator.Text, rbFurnish.Text,Session["USER"].ToString(), Session["STREET"].ToString());
            //if(rbPark.Text!="")
               // PropertyDetails2.AddDetails2();
            /*if (rbSecurity.Text != "")
            Property.AddSecurity(rbSecurity.Text);
            if (rbGenerator.Text != "")
            Property.AddGenerator(rbGenerator.Text);
            if (rbFurnish.Text != "")
            Property.AddFurnish(rbFurnish.Text);*/
            Response.Redirect("Selling2.aspx");
        }
    }
}