<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="RealEstate.Contacts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
	<head>
		<title>Contact Us</title>
		<meta charset="utf-8">
		<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
		<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
		<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
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
	<body id="page6">
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
							<li><a href="Buying.aspx">Buying Estate</a></li>
							<li><a href="Selling.aspx">Selling Estate</a></li>
							<li><a href="FunZone.aspx">Fun Zone</a></li>
                            <li id="menu_active" class="end"><a href="Contacts.aspx">Contact Us</a></li>
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
							<div class="pad2">
								<h2 class="pad_bot1 pad_top1">We encourage your Feedback !</h2>
								<form id="ContactForm" runat="server">
									<div>
										<div class="wrapper">
											<span>Your Name:</span>
                                            <asp:TextBox ID="txtName" runat="server" class="input" />
											
										</div>
										<div class="wrapper">
											<span>Your E-mail:</span>
											<asp:TextBox ID="txtEmail" runat="server" class="input" />
										</div>
										<div class="textarea_box">
											<span>Your Message:</span>
                                            <asp:TextBox ID="txtMessage" TextMode="MultiLine" runat="server" />
										</div>
										<span>&nbsp;</span>
                                        <asp:Label id="lblMsgSend" runat="server" Width="124px"/><br />
                                        <asp:Button ID="btnSubmit" runat="server" class="button" Text="Submit" onclick="btnSubmit_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnCancel" runat="server" class="button" Text="Cancel" CommandName="Cancel"/>
                                      	</div>
								</form>
							</div>
						</article>

                        <article class="col2">
							<div class="pad1">
								<h3>Our Contacts</h3>
								<div class="address">
									PSG College of Technology,<br>
									Peelamedu<br>
									<span>
										Freephone:<br>
										Telephone:<br>
										E-mail:
									</span>
										  +91 9500785493<br>
										  +91 8903926962<br>
										  <a href="mailto:">hello.home.hunt@gmail.com</a>
									</div>
								&nbsp;</div>
						</article>
					</div>
				</section>
			</div>
		</div>
<!-- / content -->
		<script type="text/javascript">		    Cufon.now(); </script>
	</body>
</html>