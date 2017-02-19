<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Temp.aspx.cs" Inherits="RealEstate.Temp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" width="800">
                    <tr>
                        <td colspan="2">
                            <b>Check weather in your city</b>
                        </td>
                    </tr>
                    <tr>
                        <td width="400" height="40" class="style1">
                            Select Country
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>Sri Lanka</asp:ListItem>  
                                                           
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td height="40" class="style2">
                            Select City
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlCity" runat="server">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" height="40" align="center">
                           <%-- <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" 
                                Width="101px" />--%>
                            <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button1_Click" 
                                Width="101px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center" height="40">
                            <asp:Label ID="lblTemp1" runat="server" Text=""></asp:Label><br />
                            <br />
                            <asp:Label ID="lblTemp2" runat="server" Text=""></asp:Label><br />
                            <br />
                        </td>
                    </tr>
                </table>
    
    </div>
    </form>
</body>
</html>
