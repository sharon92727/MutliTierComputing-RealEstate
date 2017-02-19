using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RealEstate
{
    public partial class Selling2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitClicked(object sender, EventArgs e)
        {
            if (txtSchool == null)
                txtSchool.Text = "";
            if (txtHospital == null)
                txtHospital.Text = "";
            if (txtAirport == null)
                txtAirport.Text = "";
            if (txtRail == null)
                txtRail.Text = "";
            if (txtBus == null)
                txtBus.Text = "";
                PropertyDetails2.AddDetails2(txtSchool.Text, txtHospital.Text, txtAirport.Text, txtRail.Text, txtBus.Text,Session["USER"].ToString(),Session["STREET"].ToString());
            
        }
    }
}