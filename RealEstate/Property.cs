using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace RealEstate
{
    public class Property
    {
        public static void AddProperty(string userid,string category, string type, int area, string street, string city,string price,string description,FileUpload fileImage)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("insert into property (userid,category,type,area,street,city,description) values ('" + userid + "','" + category + "','" + type + "','" + area + "','" + street + "','" + city + "','"+description+"')", con);
                cmd1.ExecuteNonQuery();
                if (price != "")
                {
                    SqlCommand cmd2 = new SqlCommand("update property set price='" + price + "' where userid='" + userid + "' and street='" + street + "'", con);
                    cmd2.ExecuteNonQuery();
                }
                if (fileImage != null)
                {
                    SqlCommand cmd2 = new SqlCommand("update property set photo='" + fileImage + "' where userid='" + userid + "' and street='" + street + "'", con);
                    cmd2.ExecuteNonQuery();
                }
            }
            catch (Exception ex){}
            finally{con.Close();}
        }

        public static void AddPrice(long price)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("insert into property (price) values ('" + price + "')", con);
                cmd1.ExecuteNonQuery();
            }
            catch (Exception ex) { }
            finally { con.Close(); }
        }

        public static void AddImage(FileUpload fileImage)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("insert into property (photo) values ('" + fileImage + "')", con);
                cmd1.ExecuteNonQuery();
            }
            catch (Exception ex) { }
            finally { con.Close(); }
        }

        public static void AddFacing(string facing)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("insert into property (facing) values ('" + facing + "')", con);
                cmd1.ExecuteNonQuery();
            }
            catch (Exception ex) { }
            finally { con.Close(); }
        }

        public static void AddBedroom(string bed)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("insert into property (bedroom) values ('" + Int32.Parse(bed) + "')", con);
                cmd1.ExecuteNonQuery();
            }
            catch (Exception ex) { }
            finally { con.Close(); }
        }

        public static void AddBathroom(string bath)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("insert into property (bathroom) values ('" + Int32.Parse(bath) + "')", con);
                cmd1.ExecuteNonQuery();
            }
            catch (Exception ex) { }
            finally { con.Close(); }
        }

        public static void AddParking(string parking)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("insert into property (parking) values ('" + Int32.Parse(parking) + "')", con);
                cmd1.ExecuteNonQuery();
            }
            catch (Exception ex) { }
            finally { con.Close(); }
        }

        public static void AddSecurity(string security)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("insert into property (security) values ('" + Int32.Parse(security) + "')", con);
                cmd1.ExecuteNonQuery();
            }
            catch (Exception ex) { }
            finally { con.Close(); }
        }

        public static void AddGenerator(string generator)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("insert into property (generator) values ('" + Int32.Parse(generator) + "')", con);
                cmd1.ExecuteNonQuery();
            }
            catch (Exception ex) { }
            finally { con.Close(); }
        }

        public static void AddFurnish(string furnish)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("insert into property (furnish) values ('" + Int32.Parse(furnish) + "')", con);
                cmd1.ExecuteNonQuery();
            }
            catch (Exception ex) { }
            finally { con.Close(); }
        }

        public static void AddSchool(string school)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("insert into property (school) values ('" + Int32.Parse(school) + "')", con);
                cmd1.ExecuteNonQuery();
            }
            catch (Exception ex) { }
            finally { con.Close(); }
        }

        public static void AddHospital(string hospital)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("insert into property (hospital) values ('" + Int32.Parse(hospital) + "')", con);
                cmd1.ExecuteNonQuery();
            }
            catch (Exception ex) { }
            finally { con.Close(); }
        }

        public static void AddAirport(string airport)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("insert into property (airport) values ('" + Int32.Parse(airport) + "')", con);
                cmd1.ExecuteNonQuery();
            }
            catch (Exception ex) { }
            finally { con.Close(); }
        }

        public static void AddRailway(string railway)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("insert into property (railway) values ('" + Int32.Parse(railway) + "')", con);
                cmd1.ExecuteNonQuery();
            }
            catch (Exception ex) { }
            finally { con.Close(); }
        }

        public static void AddBus(string busstop)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("insert into property (busstop) values ('" + Int32.Parse(busstop) + "')", con);
                cmd1.ExecuteNonQuery();
            }
            catch (Exception ex) { }
            finally { con.Close(); }
        }
    }
}