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
    public partial class propertydetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // string category, type, area, price, street, city, description, facing, parking, bedroom, school, hospital, airport, railway, furnish;
            Session["ID"] = "0".ToString();
                if (Request.QueryString["pid"] != null)
                {
                    Session["ID"] = Request.QueryString["pid"].ToString();
                }
            int ID = Convert.ToInt32(Session["ID"]);
            GetValues(ID);
            //lblcategory.Text     = "CATEGORY        : " + category;
            //lbltype.Text         = "TYPE            : " + type;
            //lblarea.Text         = "AREA            : " + area;
            //lblprice.Text        = "PRICE           : " + price;
            //lblstreet.Text       = "ADDRESS         : " + street + city;
            //lbldescription.Text  = "DESCRIPTION     : " + description;
            //lblfacing.Text       = "FACING          : " + facing;
            //lblparking.Text      = "PARKING         : " + parking;
            //lblbedroom.Text      = "BEDROOM         : " + bedroom;
            //lblschool.Text       = "SCHOOL          : " + school;
            //lblhospital.Text     = "HOSPITAL        : " + hospital;
            //lblairport.Text      = "AIRPORT         : " + airport;
            //lblrailway.Text      = "RAILWAY         : " + railway;
            //lblfurnish.Text      = "FURNISH         : " + furnish;






        }

        private void GetValues(int ID)
        {
            string category, type, area, price, street, city, description, facing, parking, bedroom, school, hospital, airport, railway, furnish;
            
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            //string connectionString = Properties.Settings.Default.ConnectionString;
            //SqlConnection connection = new SqlConnection(connectionString);

            string sql1 = "select [category] from property where [pid]='" + ID + "'";
            string sql2 = "select [type] from property where [pid]='" + ID + "'";
            string sql3 = "select [area] from property where [pid]='" + ID + "'";
            string sql4 = "select [price] from property where [pid]='" + ID + "'";
            string sql5 = "select [description] from property where [pid]='" + ID + "'";
            string sql6 = "select [street] from property where [pid]='" + ID + "'";
            string sql7 = "select [city] from property where [pid]='" + ID + "'";
            string sql8 = "select [facing] from property where [pid]='" + ID + "'";
            string sql9 = "select [bedroom] from property where [pid]='" + ID + "'";
            string sql10 = "select [parking] from property where [pid]='" + ID + "'";
            string sql11 = "select [furnish] from property where [pid]='" + ID + "'";
            string sql12 = "select [school] from property where [pid]='" + ID + "'";
            string sql13 = "select [hospital] from property where [pid]='" + ID + "'";
            string sql14 = "select [airport] from property where [pid]='" + ID + "'";
            string sql15 = "select [railway] from property where [pid]='" + ID + "'";



            try
            {
                SqlCommand command1 = new SqlCommand(sql1, con);
                SqlCommand command2 = new SqlCommand(sql2, con);
                SqlCommand command3 = new SqlCommand(sql3, con);
                SqlCommand command4 = new SqlCommand(sql4, con);
                SqlCommand command5 = new SqlCommand(sql5, con);
                SqlCommand command6 = new SqlCommand(sql6, con);
                SqlCommand command7 = new SqlCommand(sql7, con);
                SqlCommand command8 = new SqlCommand(sql8, con);
                SqlCommand command9 = new SqlCommand(sql9, con);
                SqlCommand command10 = new SqlCommand(sql10, con);
                SqlCommand command11 = new SqlCommand(sql11, con);
                SqlCommand command12 = new SqlCommand(sql12, con);
                SqlCommand command13 = new SqlCommand(sql3, con);
                SqlCommand command14 = new SqlCommand(sql4, con);
                SqlCommand command15 = new SqlCommand(sql5, con);
                

                con.Open();
                category = command1.ExecuteScalar().ToString();
                type = command2.ExecuteScalar().ToString();
                area = command3.ExecuteScalar().ToString();
                price = command4.ExecuteScalar().ToString();
                description = command5.ExecuteScalar().ToString();
                street = command6.ExecuteScalar().ToString();
                city = command7.ExecuteScalar().ToString();
                facing = command8.ExecuteScalar().ToString();
                bedroom = command9.ExecuteScalar().ToString();
                parking = command10.ExecuteScalar().ToString();
                furnish = command11.ExecuteScalar().ToString();
                school = command12.ExecuteScalar().ToString();
                hospital = command13.ExecuteScalar().ToString();
                airport = command14.ExecuteScalar().ToString();
                railway = command15.ExecuteScalar().ToString();

                lblcategory.Text = "CATEGORY        : " + category;
                lbltype.Text = "TYPE            : " + type;
                lblarea.Text = "AREA            : " + area;
                lblprice.Text = "PRICE           : " + price;
                lblstreet.Text = "ADDRESS         : " + street + city;
                lbldescription.Text = "DESCRIPTION     : " + description;
                lblfacing.Text = "FACING          : " + facing;
                lblparking.Text = "PARKING         : " + parking;
                lblbedroom.Text = "BEDROOM         : " + bedroom;
                lblschool.Text = "SCHOOL          : " + school;
                lblhospital.Text = "HOSPITAL        : " + hospital;
                lblairport.Text = "AIRPORT         : " + airport;
                lblrailway.Text = "RAILWAY         : " + railway;
                lblfurnish.Text = "FURNISH         : " + furnish;

            }
            catch (Exception ex)
            {
                Response.Write("Connection Unsuccessful" + ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

    }
        }
    
