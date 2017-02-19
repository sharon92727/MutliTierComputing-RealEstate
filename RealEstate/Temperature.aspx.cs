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

public partial class Temperature : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string strBegin = "<Temperature>";
    string strEnd = "</Temperature>";
    
    void cityLoad()
    {
        if (ddlCountry.SelectedIndex == 0)
        {
            return;
        }

        string xmlResult = null;
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create("http://www.webservicex.net/globalweather.asmx/GetCitiesByCountry?CountryName=" + DropDownList1.SelectedItem + "");
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


            DropDownList2.Items.Clear();
            XmlNodeList xnList = xl.SelectNodes("/NewDataSet/Table");
            foreach (XmlNode xn in xnList)
            {
                DropDownList2.Items.Add(xn["City"].InnerText);
            }
            DropDownList2.Items.Insert(0, "--select--");
        }
        catch (Exception ex)
        {
            lblTemp1.Text = "Country code does not match";
            lblTemp2.Text = "";
            return;
        }
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        cityLoad();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        Label2.Text = "";
        if ((DropDownList1.SelectedIndex == 0) || (DropDownList2.SelectedIndex == 0))
        {
            return;
        }
        string xmlResult = null;
        string url;
        url = "http://www.webservicex.net/globalweather.asmx/GetWeather?CityName=" + DropDownList2.SelectedItem + "&CountryName=" + DropDownList1.SelectedItem + "";
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
                Label1.Text = "Temperature : " + xn["Temperature"].InnerText;
                Label2.Text = "Humidity : " + xn["RelativeHumidity"].InnerText;
            }
        }
        catch
        {
            Label1.Text = "City Name not match with our site!";
            Label2.Text = "";
            return;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        Label2.Text = "";
        if ((DropDownList1.SelectedIndex == 0) || (DropDownList2.SelectedIndex == 0))
        {
            return;
        }
        GetWeather();



    }

    private void GetWeather()
    {
        GlobalWeather gw = new GlobalWeather();
        string result = gw.GetWeather(DropDownList2.SelectedItem.Text, DropDownList1.SelectedItem.Text);
        string[] res = GetStringInBetween(result);
        Label1.Text = "Temperature : " + res[0];
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


}

