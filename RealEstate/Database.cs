using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RealEstate
{
    public class Database
    {
        public static string ConnectionString /*{ get; set; }*/
        {
            get
            {
                //return "Data Source=JOHN-PC\\SQLEXPRESS;Initial Catalog=RealEstate;Integrated Security=SSPI";
                return "Data Source=172.16.36.198,1433;Network Library=DBMSSOCN;Initial Catalog=RealEstate;User ID=sudha;Password=alliswell";
            }
        }
    }
}