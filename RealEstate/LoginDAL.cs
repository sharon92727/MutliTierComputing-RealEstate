using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace RealEstate
{
    public class LoginDAL
    {
        public static User Login(string UserId, string Password, out string error)
        {
            error = "";
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select userid, password from users where userid = '"+UserId+"' and password = '"+Password+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {  // Found
                    User e = new User();
                    e.userid = UserId;
                    e.password = Password;
                    return e;
                }
                else  // Not Found
                {
                    error = "User id or password not valid";
                    return null;
                }
            }
            catch (Exception ex)
            {
                error = "Error --> " + ex.Message;
                return null;
            }
            finally
            {
                con.Close();
            }
        }



        public static bool isAvailable(string userid)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select userid from users where userid = '" + userid + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                   return false;
                else  // Not Found
                    return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                con.Close();
            }
        }

        public static User Register(string fname, string lname, string userid, string password, string email, string mobile, string city,out string error)
        {
            SqlConnection con = new SqlConnection(Database.ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into users (firstname,lastname,userid,password,email,mobile,city) values ('"+fname+"','"+lname+"','"+userid+"','"+password+"','"+email+"','"+mobile+"','"+city+"')", con);
                SqlDataReader dr = cmd.ExecuteReader();
                    User e = new User();
                    e.userid = userid;
                    e.password = password;
                    error = "Successfully Added";
                    return e;
            }
            catch (Exception ex)
            {
                error = "Error --> " + ex.Message;
                return null;
            }
            finally
            {
                con.Close();
            }
        }
    }
}
