<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="propertydetails.aspx.cs" Inherits="RealEstate.propertydetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Search Results</title>

    <meta charset="utf-8" />
		<link rel="stylesheet" href="css/reset.css" type="text/css" media="all"/>
		<link rel="stylesheet" href="css/layout.css" type="text/css" media="all"/>
		<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
        <link rel="stylesheet" href="css/slide.css" type="text/css" media="screen" />
	
  	<!-- PNG FIX for IE6 -->
  	<!-- http://24ways.org/2007/supersleight-transparent-png-in-ie6 -->
	<!--[if lte IE 6]>
		<script type="text/javascript" src="js/pngfix/supersleight-min.js"></script>
	<![endif]-->
	 
	<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
	<script src="js/slide.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery-1.6.js" ></script>
	<script type="text/javascript" src="js/cufon-yui.js"></script>
	<script type="text/javascript" src="js/cufon-replace.js"></script>
  	<script type="text/javascript" src="js/Didact_Gothic_400.font.js"></script>
	<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
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

	<body id="page1">
		<div class="body1">
			<div class="main">


<!-- header -->
				<header>
					<h1><a href="Default.aspx" id="logo"></a></h1>
					<div class="wrapper">
						<ul id="icons">
							<li><a href="#" class="normaltip" title="Facebook"><img src="images/icon1.jpg" alt="" /></a></li>
							<li><a href="#" class="normaltip" title="Twitter"><img src="images/icon2.jpg" alt="" /></a></li>
							<li><a href="#" class="normaltip" title="Linkedin"><img src="images/icon3.jpg" alt="" /></a></li>
						</ul>
					</div>
					<nav>
						<ul id="menu">
							<li><a href="Default.aspx">Main Page</a></li>
							<li ><a href="Selling.aspx">Selling Estate</a></li>
							<li ><a href="FunZone.aspx">Fun Zone</a></li>
							<li id="menu_active"><a href="Buying.aspx">Buying Estate</a></li>
							<li class="end"><a href="Contacts.aspx">Contact Us</a></li>
						</ul>
					</nav>
				</header>
<!-- / header -->
			</div>
		</div>
    <!-- /login -->	

  
		<div class="body2">
			<div class="main">
				<section id="content">
					<div class="wrapper">
						<article class="col1">
							<div>


    <form id="form_2" runat="server">


     <asp:Label ID="lblcategory" runat="server" Text=""></asp:Label><br /><br />
     <asp:Label ID="lbltype" runat="server" Text=""></asp:Label><br /><br />
    <asp:Label ID="lblarea" runat="server" Text=""></asp:Label><br /><br />
    <asp:Label ID="lblprice" runat="server" Text=""></asp:Label><br /><br />
    <asp:Label ID="lblstreet" runat="server" Text=""></asp:Label><br /><br />
    <asp:Label ID="lblcity" runat="server" Text=""></asp:Label><br /><br />
     <asp:Label ID="lbldescription" runat="server" Text=""></asp:Label><br /><br />
     <asp:Label ID="lblfacing" runat="server" Text=""></asp:Label><br /><br />
     <asp:Label ID="lblparking" runat="server" Text=""></asp:Label><br /><br />
     <asp:Label ID="lblbedroom" runat="server" Text=""></asp:Label><br /><br />
     <asp:Label ID="lblschool" runat="server" Text=""></asp:Label><br /><br />
     <asp:Label ID="lblhospital" runat="server" Text=""></asp:Label><br /><br />
     <asp:Label ID="lblairport" runat="server" Text=""></asp:Label><br /><br />
     <asp:Label ID="lblrailway" runat="server" Text=""></asp:Label><br /><br />
     <asp:Label ID="lblfurnish" runat="server" Text=""></asp:Label><br /><br />
</form>
</div>
   </div>
	</article>	
					</div>
				</section>
			</div>
		</div>
        

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

    </div>
    </form>
</body>
</html>
--%>