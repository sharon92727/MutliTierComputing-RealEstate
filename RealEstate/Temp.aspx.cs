using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Xml;
using System.Data;
using System.IO;
using System.Xml.XPath;

using RealEstate;
using RealEstate.net.webservicex.www1;


namespace RealEstate
{
    public partial class Temp : System.Web.UI.Page
    {
        string strBegin = "<Temperature>";
        string strEnd = "</Temperature>";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            
    
            lblTemp1.Text = "";
            lblTemp2.Text = "";
            if ((ddlCountry.SelectedIndex == 0) || (ddlCity.SelectedIndex == 0))
            {
                return;
            }
            GetWeather();



        }


        private void GetWeather()
        {
            GlobalWeather gw = new GlobalWeather();
            string result = gw.GetWeather(ddlCity.SelectedItem.Text, ddlCountry.SelectedItem.Text);
            string[] res = GetStringInBetween(result);
            lblTemp1.Text = "Temperature : " + res[0];
        }

        private string[] GetStringInBetween(string strSource)
        {
            string[] result = { "", "" };
            bool includeBegin = true;
            bool includeEnd = true;

            int iIndexOfBegin = strSource.IndexOf(strBegin);

            if (iIndexOfBegin != -1)
            {
                if (includeBegin)

                    iIndexOfBegin -= strBegin.Length;

                strSource = strSource.Substring(iIndexOfBegin + strBegin.Length);

                int iEnd = strSource.IndexOf(strEnd);

                if (iEnd != -1)
                {
                    if (includeEnd)

                        iEnd += strEnd.Length;

                    result[0] = strSource.Substring(0, iEnd);

                }

            }

            return result;
        }
        void cityLoad()
        {
            if (ddlCountry.SelectedIndex == 0)
            {
                return;
            }

            string xmlResult = null;
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create("http://www.webservicex.net/globalweather.asmx/GetCitiesByCountry?CountryName=" + ddlCountry.SelectedItem + "");
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            StreamReader resStream = new StreamReader(response.GetResponseStream());
            XmlDocument doc = new XmlDocument();
            xmlResult = resStream.ReadToEnd();
            doc.LoadXml(xmlResult);

            try
            {
                XmlDocument xl = new XmlDocument();
                xl.LoadXml(doc.GetElementsByTagName("string").Item(0).InnerText);

                DataSet ds = new DataSet();
                //string s = GetNodeValue(doc1, "NewDataSet/Table/City");


                ddlCity.Items.Clear();
                XmlNodeList xnList = xl.SelectNodes("/NewDataSet/Table");
                foreach (XmlNode xn in xnList)
                {
                    ddlCity.Items.Add(xn["City"].InnerText);
                }
                ddlCity.Items.Insert(0, "--select--");
            }
            catch (Exception ex)
            {
                lblTemp1.Text = "Country code does not match";
                lblTemp2.Text = "";
                return;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            lblTemp1.Text = "";
            lblTemp1.Text = "";
            if ((ddlCountry.SelectedIndex == 0) || (ddlCity.SelectedIndex == 0))
            {
                return;
            }
            string xmlResult = null;
            string url;
            url = "http://www.webservicex.net/globalweather.asmx/GetWeather?CityName=" + ddlCity.SelectedItem + "&CountryName=" + ddlCountry.SelectedItem + "";
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            StreamReader resStream = new StreamReader(response.GetResponseStream());
            XmlDocument doc = new XmlDocument();
            xmlResult = resStream.ReadToEnd();
            doc.LoadXml(xmlResult);
            try
            {
                XmlDocument xl = new XmlDocument();
                xl.LoadXml(doc.GetElementsByTagName("string").Item(0).InnerText);
                XmlNodeList xnList = xl.SelectNodes("CurrentWeather");
                foreach (XmlNode xn in xnList)
                {
                    lblTemp1.Text = "Temperature : " + xn["Temperature"].InnerText;
                    lblTemp2.Text = "Humidity : " + xn["RelativeHumidity"].InnerText;
                }
            }
            catch
            {
                lblTemp1.Text = "City Name not match with our site!";
                lblTemp2.Text = "";
                return;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            cityLoad();
        }

    }
}