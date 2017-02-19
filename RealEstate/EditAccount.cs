using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace RealEstate
{
    public class EditAccount
    {
        internal static bool UpdateInfo(string userid, string email, string mobile, string city)
        {
            int flag = 0;
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                if (email != "")
                {
                    SqlCommand cmd1 = new SqlCommand("update users set email='" + email + "' where userid='" + userid + "'", con);
                    cmd1.ExecuteNonQuery();
                    flag++;
                }
                if (mobile != "")
                {
                    SqlCommand cmd1 = new SqlCommand("update users set mobile='" + mobile + "' where userid='" + userid + "'", con);
                    cmd1.ExecuteNonQuery();
                    flag++;
                }
                if (city != "")
                {
                    SqlCommand cmd1 = new SqlCommand("update users set city='" + city + "' where userid='" + userid + "'", con);
                    cmd1.ExecuteNonQuery();
                    flag++;
                }
                
            }
                
            catch (Exception ex)
            {   
                //    return ex.Message;
            }
            finally
            {
                con.Close();
            }
            if (flag == 3)
                return true;
            else
                return false;
            
        }
    }
}