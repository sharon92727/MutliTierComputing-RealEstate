using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace RealEstate
{
    public class PropertyDetails2
    {

        public static void AddDetails2(string school, string hospital, string airport, string rail, string bus,string userid,string street)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                if (school != "")
                {
                    SqlCommand cmd1 = new SqlCommand("update property set school='" + Int16.Parse(school) + "' where userid='" + userid + "' and street='" + street + "'", con);
                    cmd1.ExecuteNonQuery();
                }
                if (hospital != "")
                {
                    SqlCommand cmd1 = new SqlCommand("update property set hospital=" + Int16.Parse(hospital) + " where userid='" + userid + "' and street='" + street + "'", con);
                    cmd1.ExecuteNonQuery();
                }
                if (airport != "")
                {
                    SqlCommand cmd1 = new SqlCommand("update property set airport=" + Int16.Parse(airport) + " where userid='" + userid + "' and street='" + street + "'", con);
                    cmd1.ExecuteNonQuery();
                }
                if (rail != "")
                {
                    SqlCommand cmd1 = new SqlCommand("update property set railway='" + Int16.Parse(rail) + "' where userid='" + userid + "' and street='" + street + "'", con);
                    cmd1.ExecuteNonQuery();
                }
                if (bus != "")
                {
                    SqlCommand cmd1 = new SqlCommand("update property set busstop=" + Int16.Parse(bus) + " where userid='" + userid + "' and street='" + street + "'", con);
                    cmd1.ExecuteNonQuery();
                }
            }
            catch (Exception ex) { }
            finally { con.Close(); }
        }
    }
}