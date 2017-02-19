<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Selling2.aspx.cs" Inherits="RealEstate.Selling2" %>
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

                            <form id="form_1" method="post" runat="server">
                            <h2>Add Property</h2>
                            <table align="center">

    <tr><td>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblSchool" runat="server" Text="Distance from School : "></asp:Label></td><td><asp:TextBox ID="txtSchool" runat="server"></asp:TextBox></td></tr><tr><td>&nbsp;</td></tr>
    <tr><td>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblHospital" runat="server" Text="Distance from Hospital : "></asp:Label></td><td><asp:TextBox ID="txtHospital" runat="server"></asp:TextBox></td></tr><tr><td>&nbsp;</td></tr>
    <tr><td>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblRail" runat="server" Text="Distance from Railway Station : "></asp:Label></td><td><asp:TextBox ID="txtRail" runat="server"></asp:TextBox></td></tr><tr><td>&nbsp;</td></tr>  
    <tr><td>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblBus" runat="server" Text="Distance from Bus Stop : "></asp:Label></td><td><asp:TextBox ID="txtBus" runat="server"></asp:TextBox></td></tr><tr><td>&nbsp;</td></tr>
    <tr><td>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblAirport" runat="server" Text="Distance from Airport : "></asp:Label></td><td><asp:TextBox ID="txtAirport" runat="server"></asp:TextBox></td></tr><tr><td>&nbsp;</td></tr>   
    <tr><td>&nbsp;</td></tr>
    <tr><td>&nbsp;&nbsp;&nbsp;<asp:Button ID="Submit" runat="server" Text=" Done " OnClick="btnSubmitClicked" /></td></tr>
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
