<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Selling1.aspx.cs" Inherits="RealEstate.Selling1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
	<head>
		<title>Selling</title>
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
		<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
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
							<li><a href="#" class="normaltip" title="Facebook"><img src="images/icon1.jpg" alt=""/></a></li>
							<li><a href="#" class="normaltip" title="Twitter"><img src="images/icon2.jpg" alt=""/></a></li>
							<li><a href="#" class="normaltip" title="Linkedin"><img src="images/icon3.jpg" alt=""/></a></li>
						</ul>
					</div>
					<nav>
						<ul id="menu">
							<li><a href="Default.aspx">Main Page</a></li>
							<li><a href="Buying.aspx">Buying Estate</a></li>
							<li  id="menu_active"><a href="Selling.aspx">Selling Estate</a></li>
							<li><a href="Renting.aspx">Renting Estate</a></li>
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
                            <h4>
                            To Buy a Property <a href="Buying.aspx">Click Here</a><br />
                            To Rent a Property <a href="Renting.aspx">Click Here</a></h4>

                            <form id="form_2" method="post" runat="server">
                            <h2>Add Property</h2>
                            <table align="center">

    <tr><td>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblFacing" runat="server" Text="Facing : " Width="200px"></asp:Label></td><td><asp:DropDownList ID="ddlFacing" runat="server" Width="200px"><asp:ListItem runat="server" Text="" Value=""/><asp:ListItem runat="server" Text="East" Value="East"/><asp:ListItem runat="server" Text="North" Value="North"/><asp:ListItem runat="server" Text="West" Value="West"/><asp:ListItem runat="server" Text="South" Value="South"/></asp:DropDownList></td></tr><tr><td>&nbsp;</td></tr>
    <tr><td>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblBed" runat="server" Text="Number of Bedrooms: "></asp:Label></td><td><asp:TextBox ID="txtBed" Width="200px" runat="server"></asp:TextBox></td></tr><tr><td>&nbsp;</td></tr>
    <tr><td>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblBath" runat="server" Text="Number of Bathrooms: " /></td><td><asp:TextBox ID="txtBath" Width="200px" runat="server"></asp:TextBox></td></tr><tr><td>&nbsp;</td></tr>  
    <tr><td>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblPark" runat="server" Text="Availability of Parking Space: "></asp:Label></td><td><asp:RadioButtonList ID="rbPark" Width="200px" runat="server"><asp:ListItem Value="1">Yes</asp:ListItem><asp:ListItem Value="0">No</asp:ListItem></asp:RadioButtonList></td></tr><tr><td>&nbsp;</td></tr>
    <tr><td>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblSecurity" runat="server" Text="Availability of Security : "></asp:Label></td><td><asp:RadioButtonList ID="rbSecurity" Width="200px" runat="server"><asp:ListItem Value="1">Yes</asp:ListItem><asp:ListItem Value="0">No</asp:ListItem></asp:RadioButtonList></td></tr><tr><td>&nbsp;</td></tr>   
    <tr><td>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblGenerator" runat="server" Text="Availability of Generator Backup : "></asp:Label></td><td> <asp:RadioButtonList ID="rbGenerator" Width="200px" runat="server"><asp:ListItem Value="1">Yes</asp:ListItem><asp:ListItem Value="0">No</asp:ListItem></asp:RadioButtonList></td></tr><tr><td>&nbsp;</td></tr>
    <tr><td>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblFurnish" runat="server" Text="Furnished : "></asp:Label></td><td><asp:RadioButtonList ID="rbFurnish" Width="200px" runat="server"><asp:ListItem Value="2">Fully Furnished</asp:ListItem><asp:ListItem Value="1">Semi Furnished</asp:ListItem><asp:ListItem Value="0">Not furnished</asp:ListItem></asp:RadioButtonList></td></tr><tr><td>&nbsp;</td></tr>
    <tr><td>&nbsp;&nbsp;&nbsp;<asp:Button ID="Submit" runat="server" Text=" Save & Continue " OnClick="btnSubmitClicked" /></td></tr>
    </table> </form>
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