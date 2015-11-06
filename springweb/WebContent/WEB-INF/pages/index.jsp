<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml" lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<title>The Durgapur Projects Limited</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css" />" media="screen, print, projection">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/styles.css" />" >
<script type="text/javascript" src="<c:url value="/resources/js/jquery_005.js" />"></script>
<script type="text/javascript"  src="<c:url value="/resources/js/jquery_002.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery_003.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery_004.js" />"></script>
<script  type="text/javascript" src="<c:url value="/resources/js/jquery.js" />"></script>
<script type="text/javascript">
$(document).ready(function(){
	$(document).pngFix();
	$("div#actionarea .action_banner").click(function(){window.location=$(this).find("a").attr("href");return false;});
	$.localScroll();
	$("div.tabs").tabs(".slides > div", {effect: 'fade',fadeOutSpeed: "slow",rotate: true}).slideshow({interval: 5000,autoplay: true,clickable: false});
}); //close doc ready
</script>
</head>
<body bgcolor="white">
<div id="page">
	<div id="header">
		<div id="logo"><a href="#"><img src="<c:url value="/resources/images/logo_dpl.jpg" />" alt="" width="325" height="65"></a></div>
		<p></p>
		<div id="basicnav">
			<ul id="sitenav">
				<li class="nospace"><a href="#">HR Upload</a></li>
 				<li><a href="#">Recent Solutions Upload</a></li>
 				<li><a href="#">News & Updates Upload</a></li>
				<li><a href="#">Tariff Upload</a></li>
				<li><a href="#">PDF Upload</a></li>
				<li><a href="tenderLogin.htm">Tender Upload</a></li>
			</ul>
			<div id="gsearch">
			<form action="http://www.google.com/search" target="_blank">
				<input src="<c:url value="/resources/images/btn_search_icon.gif" />" name="sa" alt="" class="sbutton" width="20" type="image" height="20">
				<input name="q" maxlength="255" size="10" class="stext" type="text">
			</form>
			</div>
			<ul id="usernav">
				<li><a href="#">Menu Item-User</a></li>
				<li><a href="#">Menu Item-User</a></li>
				<li><a href="#">Menu Item-User</a></li>
				<li><a href="#">Menu Item-User</a></li>
				<li><a href="#">Menu Item-User</a></li>
			</ul>
		</div>
	</div>
	<!-- <div id="mainnav">
		<div id="globalnav">
			<ul>
				<li class="about"><a href="#">Menu Item </a></li>
				<li class="degree_programs"><a href="#">Menu Item </a></li>
				<li class="language_program"><a href="#">Menu Item </a></li>
				<li class="continuing_education"><a href="#">Menu Item </a></li>
				<li class="corporate_education"><a href="#">Menu Item </a></li>
				<li class="campus_life"><a href="#">Menu Item </a></li>
				<li class="career_support"><a href="#">Menu Item </a></li>
			</ul>
		</div>
		-<div id="bcnav"><a href="">Home</a></div>
	</div> -->
	<div align="center">
	<div id='cssmenu'align="justify">
<ul>
   
    <li class='active has-sub'><a href='#'><span>Menu Item</span></a>
      <ul>
         <li class='last'><a href="#"><span>Menu Item</span></a>
         <li class='has-sub'><a href='#'><span>About DPL</span></a>
             <ul>
               <li><a href='#'><span>Sub Product</span></a></li>
               <li class='last'><a href='#'><span>Sub Product</span></a></li>
            </ul>
         </li>
         <li class='last'><a href="#"><span>Menu Item</span></a>
         <li class='has-sub'><a href='#'><span>Mission</span></a>
            <ul>
               <li><a href='#'><span>Sub Product</span></a></li>
               <li class='last'><a href='#'><span>Sub Product</span></a></li>
            </ul>
         </li>
      </ul>
   </li>
   <li class='active has-sub'><a href='#'><span>Consumer Service</span></a>
      <ul>
         <li class='last'><a href="ConsumerLogin.dpl"><span>Consumer Login</span></a> </li>
         <li class='last'><a href="#"><span>New Industrial Power Connection</span></a> </li>
         <li class='last'><a href="#"><span>New Domestic Power Connection</span></a> </li>
         <li class='last'><a href="#"><span>Application Status</span></a> </li>
         <li class='last'><a href="#"><span>View Prev. Bill</span></a> </li>
         <li class='last'><a href="#"><span>Download e-Payment Rcpt.</span></a> </li>
         <li class='last'><a href="#"><span>Download e-Payment Rcpt.</span></a> </li>
         <li class='last'><a href="#"><span>Tariff</span></a> </li>
      </ul>
   </li>
   <li class='active has-sub'><a href='#'><span>HRD</span></a>
      <ul>
         <li class='last'><a href="#"><span>Job Openings</span></a> </li>
         <li class='last'><a href="#"><span>Results</span></a> </li>
         <li class='last'><a href="#"><span>Orders & Circulars</span></a> </li>
      </ul>
   </li>
   <li class='active has-sub'><a href='#'><span>About DPL</span></a>
      <ul>
      	 
      	 <li class='last'><a href="pp.htm"><span>Power Plants</span></a> </li>
      	 <li class='last'><a href="cogp.htm"><span>Coke Oven Plant</span></a> </li>
      	 <li class='last'><a href="water.htm"><span>Water Works</span></a> </li>
      	 <li class='last'><a href="contactDPL.dpl"><span>Contact Us</span></a> </li>
         <li class='last'><a href="#"><span>RTI</span></a> </li>
         <li class='last'><a href="#"><span>Mission & Vission</span></a> </li>
         <li class='last'><a href="aboutDPL.jsp"><span>About DPL</span></a> </li>
      </ul>
   </li>
   <li class='active has-sub'><a href='#'><span>Tenders</span></a>
      <ul>
         <li class='last'><a href="#"><span>Tender List</span></a> </li>
         <li class='last'><a href="tenderLogin.htm"><span>Tender Upload</span></a> </li>
         
      </ul>
   </li>
   <li class='active has-sub'><a href='#'><span>Administration</span></a>
      <ul>
         <li class='last'><a href="#"><span>Deptt of Power</span></a> </li>
         <li class='last'><a href="#"><span>DPL</span></a> </li>
      </ul>
   </li>
   
</div>
</div>	
	
	<div id="content">
		<div id="maincontent" class="threecol_btm">
			<div id="promo">
				<div class="promonav">
					<ul class="promo_usernav">
						<li class="prospective"><a href="#">Consumer Login</a></li>
						<li class="students"><a href="#">Quick Bill Pay</a></li>
						<li class="alumni"><a href="#">Apply-Power Connection</a></li>
						<li class="alumni"><a href="#">Application Status</a></li>
					</ul>
				</div>
				<div class="promocontent">
					<div class="tabs">
						<a class="current" href="#" title="Lorem ipsum">1</a>
						<a class="" href="#" title="Lorem ipsum">2</a>
						<a class="" href="#" title="Lorem ipsum">3</a>
						<a class="" href="#" title="Lorem ipsum">4</a>
						<a class="" href="#" title="Lorem ipsum">5</a>
						<a class="" href="#" title="Lorem ipsum">6</a>
						<a class="" href="#" title="Lorem ipsum">7</a>
					</div><p></p>
					<div class="slides">
						<div style="display: block;" class="promo_ug">
							<a href="#">
							<!-- <h2 style="color:brown">Eco Friendly Power Generation</h2> -->
							<p><!-- <img src="images/arrow_promo.gif" width="10" height="11"> --></p>
							</a>
						</div>
						<div class="promo_tesol">
							<a href="#">
							<!-- <h2 style="color:brown">Electricity Transmission</h2> -->
							<p><!-- <img src="images/arrow_promo.gif" width="10" height="11"> --></p>
							</a>
						</div>
						<div class="promo_mba">
							<a href="#">
						<!-- 	<h2 style="color:black">Electricity Distribution</h2> -->
							<p><!-- <img src="images/arrow_promo.gif" width="10" height="11"> --></p>
							</a>
						</div>
						<div style="display: none;" class="promo_law">
							<a href="#">
							<!-- <h2 style="color:black">Water Treatment</h2> -->
							<p> <!-- <img src="images/arrow_promo.gif" width="10" height="11"> --></p>
							</a>
						</div>
						<div style="display: none;" class="promo_aep">
							<a href="#">
							<!-- <h2 style="color:black">Eco Friendly Power Generation</h2> -->
							<p><!-- Demo Text 5 <img src="images/arrow_promo.gif" width="10" height="11"> --></p>
							</a>
						</div>
						<div style="display: none;" class="promo_conted">
							<a href="#">
							<!-- <h2 style="color:black">Eco Friendly Power Generation</h2> -->
							<p><!-- Demo Text 6 <img src="images/arrow_promo.gif" width="10" height="11"> --></p>
							</a>
						</div>
						<div style="display: none;" class="promo_cep">
							<a href="#">
							<!-- <h2 style="color:black">Eco Friendly Power Generation</h2> -->
							<p><!-- Demo Text 7 <img src="images/arrow_promo.gif" width="10" height="11"> --></p>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div id="program_links">
				<ul>
					<li class="title"></li>
					<li><a href="#">Downloads</a></li>
					<li><a href="#">Tenders</a></li>
					<li><a href="#">Recent News</a></li>
					<li><a href="#">Notice Board</a></li>
					<li><a href="#">Link</a></li>
					<li><a href="#">Link</a></li>
					<li><a href="#">Link</a></li>
				</ul>
			</div>
			<br><br></br>
			
			<div id="maincontent" align="justify">
				<!-- <h1>The Durgapur Projects Limited</h1> -->
				<div class="columnarea" align="justify">
					<div class="twocol_leftlong" align="justify">
						<p>
						<strong>The Durgapur Projects Ltd (DPL), a five-decade-old multi-utility growth propeller, is one of the major planks of expansion and prosperity of West Bengal's industrial belt Durgapur. The Durgapur Projects Ltd was incorporated on 6th September, 1961 and consists of Coke Oven Batteries, Bye-products Plant, Gas Grid Project, Thermal Power Plant and Water Works. It is under the administrative control of the Department of Power and Non-conventional Energy Sources, Government of West Bengal. The Durgapur Projects Ltd  is  the first undertaking of  the  State Government  which has been engaged in  development of infrastructure  for  Industries and  was given the stature of an "Industry for Industries". Its main objective was to promote development of various large, medium and small scale industries in and around Durgapur and also at other places within the State.</strong> 
						</p>
					</div>
					<div class="twocol_rightshort">
						<div class="subbanner">
							<h2>Recent News</h2>
							<ul style="padding: 8px 2px 1px;" class="links04">
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
							</ul>
						</div>
						<!-- <div class="general_subcont">
							<h2 class="first_element">Sectional Heading</h2>
							<p style="padding-bottom: 0pt;"><strong>Strong Heading</strong><br />
							We can write anything here<br /><br />
							<strong>We can write anything here</strong><br />
							We can write anything here
							<ul class="links01 last_element">
								<li><a href="#">Learn more</a></li>
							</ul>
						</div>
 -->						<!-- <div class="general_subcont">
							<h2 class="first_element">General</h2>
							<p style="padding-bottom: 0pt;"><strong>General</strong><br />
							General<br /><br />
							<strong>General</strong><br />
							General
							<ul class="links01 last_element">
								<li><a href="#">Learn more</a></li>
							</ul>
						</div> -->
						<div class="general_subcont">
							<h2 class="first_element">Contact Information</h2>
							<p style="padding-bottom: 0pt;">
							<strong>The Durgapur Projects Ltd</strong><br />
							<strong>Dr B C roy Avenue</strong><br />
							<strong>Durgapur-713201, WB</strong><br />
							E-mail: <a href="#">admin@dpl.net.in</a><br />
							Tel: 0343-2553639</p>
							</p><br />
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
			<div id="program_links">
				<h1 class="first_element"><strong>News & Updates </strong></h1>
				A <br>
				B<br>
				C<br>
				D<br>
			</div>
	
<div id="footer">
		<div id="footernav" align="center">
			<!-- <p><a href="#">Menu Footer</a> | <a href="#">Menu Footer</a> | <a href="#">Menu Footer</a> | <a href="#">Menu Footer</a> | <a href="#">Menu Footer</a></p> -->
		<h1 style="color:white">Site Developed and Maintained by IT Cell, DPL</h1>
		</div>
		<!-- <div id="copyright">
			
			<p>Copyright information: <a href="http://dpl.net.in/">The Durgapur Projects Limited</a><br /></p>
		</div> -->
	</div>
</div>
</body></html>