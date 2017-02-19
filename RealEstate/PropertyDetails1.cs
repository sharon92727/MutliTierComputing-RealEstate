using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace RealEstate
{
    public class PropertyDetails1
    {
        public static void AddDetails1(string facing, string bed, string bath,string parking,string security, string generator,string furnish,string userid,string street)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                if(facing!="")
                {
                SqlCommand cmd1 = new SqlCommand("update property set facing='" + facing + "' where userid='"+ userid +"' and street='"+street+"'", con);
                cmd1.ExecuteNonQuery();
                }
                if(bed!="")
                {
                SqlCommand cmd1 = new SqlCommand("update property set bedroom=" + Int32.Parse(bed) + " where userid='"+ userid +"' and street='"+street+"'", con);
                cmd1.ExecuteNonQuery();
                }
                if(bath!="")
                {
                SqlCommand cmd1 = new SqlCommand("update property set bathroom=" + Int32.Parse(bath) + " where userid='"+ userid +"' and street='"+street+"'", con);   
                cmd1.ExecuteNonQuery();
                }
                if (parking != "")
                {
                    SqlCommand cmd1 = new SqlCommand("update property set parking='" + Int32.Parse(parking) + "' where userid='" + userid + "' and street='" + street + "'", con);
                    cmd1.ExecuteNonQuery();
                }
                if (security != "")
                {
                    SqlCommand cmd1 = new SqlCommand("update property set security=" + Int32.Parse(security) + " where userid='" + userid + "' and street='" + street + "'", con);
                    cmd1.ExecuteNonQuery();
                }
                if (generator != "")
                {
                    SqlCommand cmd1 = new SqlCommand("update property set generator=" + Int32.Parse(generator) + " where userid='" + userid + "' and street='" + street + "'", con);
                    cmd1.ExecuteNonQuery();
                }
                if (furnish != "")
                {
                    SqlCommand cmd1 = new SqlCommand("update property set furnish=" + Int32.Parse(furnish) + " where userid='" + userid + "' and street='" + street + "'", con);
                    cmd1.ExecuteNonQuery();
                }
            }
            catch (Exception ex) { }
            finally { con.Close(); }
        }          

    }

}