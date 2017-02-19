using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RealEstate
{
    public class SearchDetails
    {

        private string m_UserId, m_Password; //m_Firstname, m_Email, m_Mobile;

        public string type
        {
            get
            {
                return m_UserId;
            }
            set { m_UserId = value; }

        }
        public string password
        {
            get
            {
                return m_Password;
            }
            set { m_Password = value; }

        }
    }
}