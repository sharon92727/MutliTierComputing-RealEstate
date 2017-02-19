﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="RealEstate.ChangePassword" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
	<head>
		<title>Forgot Password</title>
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
							<li id="menu_active"><a href="Default.aspx">Main Page</a></li>
							<li><a href="Buying.aspx">Buying Estate</a></li>
							<li><a href="Selling.aspx">Selling Estate</a></li>
                            <li><a href="FunZone.aspx">Fun Zone</a></li>
							<li class="end"><a href="Contacts.aspx">Contact Us</a></li>
						</ul>
					</nav>
				</header>
<!-- / header -->
			</div>
		</div>
    <!-- /login -->	



<!-- content -->
		<div class="body2">
			<div class="main">
				<section id="content">
					<div class="wrapper">
						<article class="col1">
							<div id="slider">
								<img src="images/homehunt1.jpg" alt="" title="<strong>New Delhi, 2007</strong>" />
								<img src="images/homehunt2.jpg" alt="" title="<strong>Mumbai, 2007</strong>" />
								<img src="images/homehunt3.jpg" alt="" title="<strong>Kolkata, 2007</strong>" />
								<img src="images/homehunt4.jpg" alt="" title="<strong>Chennai, 2010</strong>" />
								<img src="images/homehunt5.jpg" alt="" title="<strong>Coimbatore, 2003</strong>" />
							</div>
						</article>
						<article class="col2">
							<form id="form_1" method="post" runat="server">
								<div class="pad1">
									<h3>Change Password</h3>
                                    <div class="row">
                                        Old Password :<br />
                                    <asp:TextBox ID="txtOldPassword" runat="server"></asp:TextBox>
                                    </div>
                                     <div class="row">
                                         New Password :<br />
                                    <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="row">
                                        Re-Type Password :<br />
                                    <asp:TextBox ID="txtRetypePassword" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:CompareValidator id="CompareValidator1" runat="server" ErrorMessage="Passwords do not match!" ControlToValidate="txtReTypePassword" ControlToCompare="txtNewPassword"></asp:CompareValidator>
                                    </div>
									<div class="row">
                                    <br />
                                    <asp:Label ID="lblStatus" runat="server" />
                                    </div>
                                     <asp:Button runat="server" ID="Submit" class="button" Text="Submit" 
                                        onclick="Submit_Click" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button runat="server" ID="MailCancel" class="button"  CommandName="Cancel" Text="Cancel"/>
								</div>
                               
							</form>
						</article>
				</section>
                        <section id="content2">
                        <article class="col2">
                        <div class="pad1">
                        </div>
                        </article>
					</div>
                </section>
			</div>
		</div>
<!-- / content -->
		<div class="body4">
			<div class="main">
			</div>
		</div>
		<script type="text/javascript">		    Cufon.now(); </script>
		<script type="text/javascript">
		    $(window).load(function () {
		        $('#slider').nivoSlider({
		            effect: 'sliceUpDown', //Specify sets like: 'fold,fade,sliceDown, sliceDownLeft, sliceUp, sliceUpLeft, sliceUpDown, sliceUpDownLeft'
		            slices: 17,
		            animSpeed: 500,
		            pauseTime: 6000,
		            startSlide: 0, //Set starting Slide (0 index)
		            directionNav: false, //Next & Prev
		            directionNavHide: false, //Only show on hover
		            controlNav: true, //1,2,3...
		            controlNavThumbs: false, //Use thumbnails for Control Nav
		            controlNavThumbsFromRel: false, //Use image rel for thumbs
		            controlNavThumbsSearch: '.jpg', //Replace this with...
		            controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
		            keyboardNav: true, //Use left & right arrows
		            pauseOnHover: true, //Stop animation while hovering
		            manualAdvance: false, //Force manual transitions
		            captionOpacity: 1, //Universal caption opacity
		            beforeChange: function () { $('.nivo-caption').animate({ bottom: '-110' }, 400, 'easeInBack') },
		            afterChange: function () { Cufon.refresh(); $('.nivo-caption').animate({ bottom: '-20' }, 400, 'easeOutBack') },
		            slideshowEnd: function () { } //Triggers after all slides have been shown
		        });
		        Cufon.refresh();
		    });
		</script>
	</body>
</html>

