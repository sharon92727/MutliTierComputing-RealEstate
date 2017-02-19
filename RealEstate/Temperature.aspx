<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Temperature.aspx.cs" Inherits="RealEstate.Temperature" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 24px;
        }
        .style2
        {
            height: 56px;
        }
    </style>
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
                            <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" 
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


<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Temperature.aspx.cs" Inherits="RealEstate.Temperature" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RealEstate.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
	<head>
		<title>Main Page</title>
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
							<li><a href="Buying.aspx">Buying Estate</a></li>
							<li><a href="Selling.aspx">Selling Estate</a></li>
							<li id="menu_active"><a href="FunZone.aspx">Fun Zone</a></li>
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
								<img src="images/img1.jpg" alt="" title="<strong>New Delhi, 2007</strong>" />
								<img src="images/img2.jpg" alt="" title="<strong>Mumbai, 2007</strong>" />
								<img src="images/img3.jpg" alt="" title="<strong>Kolkata, 2007</strong>" />
								<img src="images/img4.jpg" alt="" title="<strong>Chennai, 2010</strong>" />
								<img src="images/img5.jpg" alt="" title="<strong>Coimbatore, 2003</strong>" />
							</div>
						</article>
						<article class="col2">
							<form id="form_1" method="post" runat="server">
								<div class="pad1">
									<h3>Find Weather</h3>
									<div class="row_select">
										Country :<br />
										 <asp:DropDownList ID="ddlCountry" runat="server"><asp:ListItem Text="--India--" Value=""/></asp:DropDownList>
									</div>
                                    <div class="row_select">
										City :<br />
										<asp:DropDownList ID="ddlCity" runat="server"><asp:ListItem Text="--Select--" Value=""/></asp:DropDownList>

									</div>
                                     <div class="row_select">
                                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                    </div>

                                    <div class="row_select">
                                    <asp:Button id="Submit" runat="server" class="button" onclick="Submit_Click" />
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
</html>--%>