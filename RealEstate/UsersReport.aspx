<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsersReport.aspx.cs" Inherits="RealEstate.PropertyReport" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

     <asp:scriptmanager id="ScriptManager1" runat="server" enablepagemethods="true"  />
  <%-- WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" InteractiveDeviceInfos="(Collection)" --%>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Tahoma" 
        Font-Size="12pt" 
         Height="532px" 
         Width="2000px">
        <LocalReport ReportPath="Report1.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="UsersDataSet" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
        SelectMethod="GetData" 
        TypeName="RealEstate.RealEstateDataSetTableAdapters.usersTableAdapter">
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetData" 
        TypeName="RealEstate.RealEstateDataSetTableAdapters.propertyTableAdapter">
    </asp:ObjectDataSource>
    
    
   
    </form>
</body>
</html>
