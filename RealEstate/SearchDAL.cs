using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


namespace RealEstate
{
    public class SearchDAL
    {

        public static void Srch(string type,string city,int price1, int price2,int bed)
        {
            //error = "";
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select pid from property where type = '" + type + "' and city = '" + city + "' and price = '" + price2 +"' and bed = '" + bed +"'" , con);
                SqlDataReader dr = cmd.ExecuteReader();
                Int32 pid1 = 0 ;
                if (dr.Read())
                {
                    

                    //int pid=dr.GetInt32(pid1);
                }
                else 
                {
                    

                }
            }
            catch (Exception ex)
            {
                //error = "Error --> " + ex.Message;
                //return null;
            }
            finally
            {
                con.Close();
            }
        

        }

    }
}