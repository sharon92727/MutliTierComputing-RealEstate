using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;


namespace RealEstate
{
    public partial class Buying : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Session["TYPE"] = "";
            Session["CATEGORY"] = "";
            Session["PRICE1"] = "";
            Session["PRICE2"] = "";
            Session["BED"] = "";
            Session["BATH"] = "";
        }

      /*  private void Search(object sender, EventArgs e)
        {

           SearchDAL.Srch(ddlType.Text,txtCity1.Text,Int32.Parse(txtFrom.Text),Int32.Parse(txtTo.Text),Int32.Parse(ddlbed.Text));


        }*/

        protected void Btn_Click(object sender, EventArgs e)
        {
            Session["TYPE"] = ddlType.Text;
            Session["CATEGORY"] = ddlCategory.Text;
            Session["PRICE1"] = txtFrom.Text;
            Session["PRICE2"] = txtTo.Text;
            Session["BED"] = ddlbed.Text;
            Session["BATH"] = DropDownList1.Text;
            Response.Redirect("SearchResults.aspx");
        }
    }
}