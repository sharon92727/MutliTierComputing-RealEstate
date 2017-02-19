<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyPage.aspx.cs" Inherits="RealEstate.MyPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
	<head>
		<title>My Page</title>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="css/reset.css" type="text/css" media="all"/>
		<link rel="stylesheet" href="css/layout.css" type="text/css" media="all"/>
		<link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
		<script type="text/javascript" src="js/jquery-1.6.js" ></script>
		<script type="text/javascript" src="js/cufon-yui.js"></script>
		<script type="text/javascript" src="js/cufon-replace.js"></script>
		<script type="text/javascript" src="js/Didact_Gothic_400.font.js"></script>
		<script type="text/javascript" src="js/atooltip.jquery.js"></script>
		<script type="text/javascript" src="js/jquery.jqtransform.js" ></script>
		<script type="text/javascript" src="js/script.js"></script>
		<!--[if lt IE 9]>
			<script type="text/javascript" src="js/html5.js"></script>
			<style type="text/css">
				.bg{ behavior: url(js/PIE.htc); }
			</style>
		<![endif]-->
		<!--[if lt IE 7]>
			<div style=' clear: both; text-align:center; position: relative;'>
				<a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0"  alt="" /></a>
			</div>
		<![endif]-->
	</head>
	<body id="page5">
		<div class="body1">
			<div class="main">
<!-- header -->
				<header>
					<h1><a href="Default.aspx" id="logo"></a></h1>
					<div class="wrapper">
						<ul id="icons">
							<li><a href="#" class="normaltip" title="Facebook"><img src="images/icon1.jpg" alt=""></a></li>
							<li><a href="#" class="normaltip" title="Twitter"><img src="images/icon2.jpg" alt=""></a></li>
							<li><a href="#" class="normaltip" title="Linkedin"><img src="images/icon3.jpg" alt=""></a></li>
						</ul>
					</div>
					<nav>
						<ul id="menu">
							<li><a href="Default.aspx">Main Page</a></li>
							<li><a href="Buying.aspx">Search Property</a></li>
							<li><a href="Selling.aspx">Sell Property</a></li>
                            <li id="menu_active"><a href="MyPage.aspx">My Page</a></li>
							<li><a href="FunZone.aspx">Fun Zone</a></li>
							<li class="end"><a href="Contacts.aspx">Contact Us</a></li>
						</ul>
					</nav>
					
				</header>
<!-- / header -->
			</div>
		</div>
<!-- content -->
		<div class="body2">
			<div class="main">
				<section id="content">
					<div class="wrapper">
						<article class="col1">
							<div>
                            <form id="form_2" method="post" runat="server">
                            <h2>My Page</h2>
                            <h3><asp:Label runat="server" ID="lblStatus"></asp:Label></h3>
                            <a href="ChangePassword.aspx">Click here to Change Password</a>
                                <table><tr><td><asp:FormView ID="UserDetails" runat="server" DataSourceID="AccountDetails" >
                               <%-- OnItemUpdated="FormView1_RowUpdating"          OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit"
         OnRowUpdating="GridView1_RowUpdating"--%>
                                    <EditItemTemplate>
                                        Firstname:
                                        <asp:Label ID="firstnameTextBox" runat="server" 
                                            Text='<%# Bind("firstname") %>' />
                                        <br />
                                        Lastname:
                                        <asp:Label ID="lastnameTextBox" runat="server" 
                                            Text='<%# Bind("lastname") %>' />
                                        <br />
                                        Email ID&nbsp;&nbsp; :
                                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                                        <br />
                                        Mobile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                                        <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>' />
                                        <br />
                                        City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        firstname:
                                        <asp:TextBox ID="firstnameTextBox" runat="server" 
                                            Text='<%# Bind("firstname") %>' />
                                        <br />
                                        lastname:
                                        <asp:TextBox ID="lastnameTextBox" runat="server" 
                                            Text='<%# Bind("lastname") %>' />
                                        <br />
                                        email:
                                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                                        <br />
                                        mobile:
                                        <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>' />
                                        <br />
                                        city:
                                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        Firstname:
                                        <asp:Label ID="firstnameLabel" runat="server" Text='<%# Bind("firstname") %>' />
                                        <br />
                                        Lastname:
                                        <asp:Label ID="lastnameLabel" runat="server" Text='<%# Bind("lastname") %>' />
                                        <br />
                                        Email ID&nbsp;&nbsp; :
                                        <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                                        <br />
                                        Mobile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                                        <asp:Label ID="mobileLabel" runat="server" Text='<%# Bind("mobile") %>' />
                                        <br />
                                        City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                                        <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                                        <br />

                                    </ItemTemplate>
                                </asp:FormView>
                                    <asp:SqlDataSource ID="AccountDetails" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:RealEstateConnectionString %>" 
                                        SelectCommand="SELECT [firstname], [lastname], [email], [mobile], [city] FROM [users] WHERE ([userid] = @userid)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="userid" SessionField="USER" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                <asp:Label runat="server" ID="lblSuccess"></asp:Label></td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td align="justify">
                            <asp:FormView ID="FormView2" runat="server" AllowPaging="True" DataSourceID="PropertyDetails">                                
                                <ItemTemplate>
                                <table>
                                    <tr>
                                    <td>Property ID:</td><td><asp:Label ID="pidLabel" runat="server" Text='<%# Bind("pid") %>' />    </td>
                                    <td>User ID:    </td><td><asp:Label ID="useridLabel" runat="server" Text='<%# Bind("userid") %>' /></td>
                                    </tr>
                                    <tr>
                                    <td>Category:   </td><td><asp:Label ID="categoryLabel" runat="server" Text='<%# Bind("category") %>' /></td>
                                    <td>Type:       </td><td><asp:Label ID="typeLabel" runat="server" Text='<%# Bind("type") %>' /></td>
                                    </tr>
                                    <tr>
                                    <td>Address:    </td><td><asp:Label ID="streetLabel" runat="server" Text='<%# Bind("street") %>' /></td>
                                    <td>City:       </td><td><asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' /></td>
                                    </tr>
                                    <tr>
                                    <td>Area:       </td><td><asp:Label ID="areaLabel" runat="server" Text='<%# Bind("area") %>' /></td>
                                    <td>Price:      </td><td><asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' /></td>
                                    </tr>
                                    <tr>
                                    <td width="20%">Description:</td><td width="80%"><asp:Label ID="descriptionLabel" runat="server" Text='<%# Bind("description") %>' /></td>
                                    </tr>
                                    <tr>
                                    <td>Photo:      </td><td><asp:Label ID="photoLabel" runat="server" Text='<%# Bind("photo") %>' /></td>
                                    </tr>
                                    <tr>
                                    <td>Facing:     </td><td><asp:Label ID="facingLabel" runat="server" Text='<%# Bind("facing") %>' /></td>
                                    <td>Bedroom:    </td><td><asp:Label ID="bedroomLabel" runat="server" Text='<%# Bind("bedroom") %>' /></td>
                                    <td>Bathroom:   </td><td><asp:Label ID="bathroomLabel" runat="server" Text='<%# Bind("bathroom") %>' /></td>
                                    </tr>
                                    <tr>
                                    <td>Parking:    </td><td><asp:Label ID="parkingLabel" runat="server" Text='<%# Bind("parking") %>' /></td>
                                    <td>Security:   </td><td><asp:Label ID="securityLabel" runat="server" Text='<%# Bind("security") %>' /></td>
                                    </tr>
                                    <tr>
                                    <td>Generator:  </td><td><asp:Label ID="generatorLabel" runat="server" Text='<%# Bind("generator") %>' /></td>
                                    <td>Furnish:    </td><td><asp:Label ID="furnishLabel" runat="server" Text='<%# Bind("furnish") %>' /></td>
                                    </tr>
                                    <tr>
                                    <td>School:     </td><td><asp:Label ID="schoolLabel" runat="server" Text='<%# Bind("school") %>' /></td>
                                    <td>Hospital:   </td><td><asp:Label ID="hospitalLabel" runat="server" Text='<%# Bind("hospital") %>' /></td>
                                    <td>Airport:    </td><td><asp:Label ID="airportLabel" runat="server" Text='<%# Bind("airport") %>' /></td>
                                    </tr>
                                    <tr>
                                    <td>Railway:    </td><td><asp:Label ID="railwayLabel" runat="server" Text='<%# Bind("railway") %>' /></td>
                                    <td>Bus Stop:   </td><td><asp:Label ID="busstopLabel" runat="server" Text='<%# Bind("busstop") %>' /></td>                               
                                    </tr>
                                    </table>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        pid:
                                        <asp:TextBox ID="pidTextBox" runat="server" Text='<%# Bind("pid") %>' />
                                        <br />
                                        userid:
                                        <asp:TextBox ID="useridTextBox" runat="server" Text='<%# Bind("userid") %>' />
                                        <br />
                                        
                                        category:
                                        <asp:TextBox ID="categoryTextBox" runat="server" 
                                            Text='<%# Bind("category") %>' />
                                        <br />
                                        type:
                                        <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                                        <br />
                                        area:
                                        <asp:TextBox ID="areaTextBox" runat="server" Text='<%# Bind("area") %>' />
                                        <br />
                                        street:
                                        <asp:TextBox ID="streetTextBox" runat="server" Text='<%# Bind("street") %>' />
                                        <br />
                                        city:
                                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                                        <br />
                                        price:
                                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                        description:
                                        <asp:TextBox ID="descriptionTextBox" runat="server" 
                                            Text='<%# Bind("description") %>' />
                                        <br />
                                        photo:
                                        <asp:TextBox ID="photoTextBox" runat="server" Text='<%# Bind("photo") %>' />
                                        <br />
                                        facing:
                                        <asp:TextBox ID="facingTextBox" runat="server" Text='<%# Bind("facing") %>' />
                                        <br />
                                        bedroom:
                                        <asp:TextBox ID="bedroomTextBox" runat="server" Text='<%# Bind("bedroom") %>' />
                                        <br />
                                        bathroom:
                                        <asp:TextBox ID="bathroomTextBox" runat="server" 
                                            Text='<%# Bind("bathroom") %>' />
                                        <br />
                                        parking:
                                        <asp:TextBox ID="parkingTextBox" runat="server" Text='<%# Bind("parking") %>' />
                                        <br />
                                        security:
                                        <asp:TextBox ID="securityTextBox" runat="server" 
                                            Text='<%# Bind("security") %>' />
                                        <br />
                                        generator:
                                        <asp:TextBox ID="generatorTextBox" runat="server" 
                                            Text='<%# Bind("generator") %>' />
                                        <br />
                                        furnish:
                                        <asp:TextBox ID="furnishTextBox" runat="server" Text='<%# Bind("furnish") %>' />
                                        <br />
                                        school:
                                        <asp:TextBox ID="schoolTextBox" runat="server" Text='<%# Bind("school") %>' />
                                        <br />
                                        hospital:
                                        <asp:TextBox ID="hospitalTextBox" runat="server" 
                                            Text='<%# Bind("hospital") %>' />
                                        <br />
                                        airport:
                                        <asp:TextBox ID="airportTextBox" runat="server" Text='<%# Bind("airport") %>' />
                                        <br />
                                        railway:
                                        <asp:TextBox ID="railwayTextBox" runat="server" Text='<%# Bind("railway") %>' />
                                        <br />
                                        busstop:
                                        <asp:TextBox ID="busstopTextBox" runat="server" Text='<%# Bind("busstop") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        
                                    </EditItemTemplate>
                            </asp:FormView>
                                <asp:SqlDataSource ID="PropertyDetails" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:RealEstateConnectionString %>" 
                                    SelectCommand="SELECT * FROM [property] WHERE ([userid] = @userid)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="userid" SessionField="USER" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                    </td></tr></table>
                            <br />
                             
                            <%--<asp:SqlDataSource ID="PropertyDetails" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:RealEstateConnectionString %>" 
                                SelectCommand="SELECT * FROM [property] WHERE ([userid] = @userid)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="userid" SessionField="USER" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="AccountDetails" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:RealEstateConnectionString %>" 
                                SelectCommand="SELECT firstname,lastname,email,mobile,city FROM [users] WHERE ([userid] = @userid)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="userid" SessionField="USER" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>--%>
                             </form>
								&nbsp;</div>
						</article>	
					</div>
				</section>
			</div>
		</div>
<!-- / content -->
		<div class="body4">
		</div>
		<script type="text/javascript">		    Cufon.now(); </script>
	</body>
</html>