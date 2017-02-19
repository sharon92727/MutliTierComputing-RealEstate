using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RealEstate
{
    public partial class Selling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnSubmitClicked(object sender, EventArgs e)
        {
            if(txtPrice == null)
                  txtPrice.Text = "";
            if(fileImage == null)
                fileImage=null;
            Session["STREET"] = txtAddress.Text;
            Property.AddProperty(Session["USER"].ToString(), ddlCategory.Text, ddlType.Text, Int32.Parse(txtArea.Text), txtAddress.Text, txtCity.Text, txtPrice.Text, txtDescription.Text, fileImage);
            /*if (txtPrice.Text == "")
                Property.AddPrice(Int64.Parse(txtPrice.Text));
            if (fileImage.ToString().Equals(""))
                Property.AddImage(fileImage);*/
            Response.Redirect("Selling1.aspx");
        }
    }
}