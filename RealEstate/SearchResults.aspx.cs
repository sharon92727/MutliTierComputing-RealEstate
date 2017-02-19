using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RealEstate
{
    public partial class SearchResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitClicked(object sender, EventArgs e)
        {
            ////if(ddlFacing.Text!="")
            //Property.AddFacing(ddlFacing.Text);
            ////if(txtBed.Text!="")
            //Property.AddBedroom(txtBed.Text);
            ////if(txtBath.Text!="")
            //Property.AddBathroom(txtBath.Text);
            ////if(rbPark.Text!="")
            //Property.AddParking(rbPark.Text);
            ////if (rbSecurity.Text != "")
            //Property.AddSecurity(rbSecurity.Text);
            ////if (rbGenerator.Text != "")
            //Property.AddGenerator(rbGenerator.Text);
            ////if (rbFurnish.Text != "")
            //Property.AddFurnish(rbFurnish.Text);

            //Search.Srchres();
            Response.Redirect("Selling2.aspx");
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
        }


}