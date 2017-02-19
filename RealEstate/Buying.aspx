<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buying.aspx.cs" Inherits="RealEstate.Buying" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
	<head>
		<title>Buying</title>
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
							<li id="menu_active"><a href="Buying.aspx">Buying Estate</a></li>
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
								<img src="images/slider11.jpg" alt="" title="<strong>New Delhi, 2007</strong>" />
								<img src="images/slider12.jpg" alt="" title="<strong>Mumbai, 2007</strong>" />
								<img src="images/slider13.jpg" alt="" title="<strong>Kolkata, 2007</strong>" />
								<img src="images/img4.jpg" alt="" title="<strong>Chennai, 2010</strong>" />
								<img src="images/img5.jpg" alt="" title="<strong>Coimbatore, 2003</strong>" />
							</div>
						</article>
						<article class="col2">
							<form id="form_1" method="post" runat="server">
								<div class="pad1">
									<h3>Find Your Property</h3>
									<%--<div class="row_select">
										Looking for :<br />
										 <asp:DropDownList ID="ddlCategory" runat="server">
    <asp:ListItem Text="" Value=""/>
    <asp:ListItem Text="Rent" Value="Rent"/>
    <asp:ListItem Text="Sale" Value="Sale"/>
    </asp:DropDownList>
									</div>--%>
                                    <div class="row_select">
										Type :<br />
										<asp:DropDownList ID="ddlType" runat="server">
    <asp:ListItem Text="" Value=""/>
    <asp:ListItem Text="Flat" Value="Flat"/>
    <asp:ListItem Text="Individual House" Value="House"/>
    </asp:DropDownList>
									</div>
                                      <div class="row_select">
                                    Category :<br />
                                    <asp:DropDownList ID="ddlCategory" runat="server">
                                    <asp:ListItem Text="" Value=""/>
    <asp:ListItem Text="Rent" Value="Rent"/>
    <asp:ListItem Text="Sale" Value="Sale"/>
    
                                    </asp:DropDownList>
                                    </div>
									<div class="row_select">
										<div class="cols">
											Price Range:<br>
											<asp:TextBox ID="txtFrom" runat="server" Width="67px"></asp:TextBox>
										</div>
										<div class="cols pad_left1">
											to:<br>
											<asp:TextBox ID="txtTo" runat="server" Width="67px"></asp:TextBox><br />
										</div>
									</div>
									<div class="row_select">
										<div class="cols">
											Bedroom(s):<br>
											<asp:DropDownList ID="ddlbed" runat="server">
    <asp:ListItem Text="1" Value="1"/>
    <asp:ListItem Text="2" Value="2"/>
    <asp:ListItem Text="3" Value="3"/>
    <asp:ListItem Text="4" Value="4"/>
    <asp:ListItem Text="5+" Value="5"/>
    </asp:DropDownList>
										</div>
										<div class="cols pad_left1">
											Bathroom(s):<br>
                                            <asp:DropDownList ID="DropDownList1" runat="server">
    <asp:ListItem Text="1" Value="1"/>
    <asp:ListItem Text="2" Value="2"/>
    <asp:ListItem Text="3" Value="3"/>
    <asp:ListItem Text="4+" Value="4"/>
    </asp:DropDownList>
											</div>
									</div>
									<div class="row_select pad_bot1">
										<div class="cols pad_left1">
											<asp:Button class="button" Text="Search" runat="server" 
                                                onclick="Btn_Click"/>
										</div>
									</div>
									
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