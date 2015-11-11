<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>The Durgapur Projects Limited</title>
<meta name="keywords" content="DPL" />
<meta name="description" content="DPL" />
<link href="<c:url value="/resources/css/templatemo_style.css" />" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css" />" media="screen, print, projection" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/styles.css" />" >
</head>
<body>

<div id="templatemo_container_wrapper">
	<div class="templatemo_spacer"></div>
<div id="templatemo_container">
<!-- <div id="templatemo_top"> <a href="http://www.templatemo.com" target="_parent">Website Templates</a> · <a href="http://www.flashmo.com/" target="_parent">Flash Templates</a> · <a href="#">Company</a> · <a href="#">Contact</a></div> -->
  <div id="templatemo_header">
      <div id="inner_header"><br><br>
        <img src="<c:url value="/resources/images/logo_dpl.jpg" />" alt="" width="325" height="65">
      </div>
  </div>
  
  <div align="center">
	<div id='cssmenu'align="justify">
<ul>
   
    <li class='active has-sub'><a href='#'><span>Menu Item</span></a>
      <ul>
         <li class='last'><a href="#"><span>Menu Item</span></a>
         <!-- <li class='has-sub'><a href='#'><span>About DPL</span></a> -->
            <!-- <ul>
               <li><a href='#'><span>Sub Product</span></a></li>
               <li class='last'><a href='#'><span>Sub Product</span></a></li>
            </ul> -->
         </li>
         <li class='last'><a href="#"><span>Menu Item</span></a>
         <!-- <li class='has-sub'><a href='#'><span>Mission</span></a> -->
            <!-- <ul>
               <li><a href='#'><span>Sub Product</span></a></li>
               <li class='last'><a href='#'><span>Sub Product</span></a></li>
            </ul> -->
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
      	 
      	 <li class='last'><a href="ppDPL.dpl"><span>Power Plants</span></a> </li>
      	 <li class='last'><a href="cogpDPL.dpl"><span>Coke Oven Plant</span></a> </li>
      	 <li class='last'><a href="wwDPL.dpl"><span>Water Works</span></a> </li>
      	 <li class='last'><a href="contactDPL.dpl"><span>Contact Us</span></a> </li>
         <li class='last'><a href="#"><span>RTI</span></a> </li>
         <li class='last'><a href="#"><span>Mission & Vission</span></a> </li>
         <li class='last'><a href="aboutDPL.dpl"><span>About DPL</span></a> </li>
      </ul>
   </li>
   <li class='active has-sub'><a href='#'><span>Tenders & Bids</span></a>
      <ul>
         <li class='last'><a href="#"><span>Menu Item</span></a> </li>
         <li class='last'><a href="#"><span>Menu Item</span></a> </li>
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
		
<br><br>
	
  
      <div id="templatemo_left_column">
 		<div class="text_area" align="justify" fon>
<div class="title">Tender List </div>
<font size="2.5">

**********

<br />
		<div class="section_box2" align="justify">
        <div class="post_title">Please Click On The Desired Department</div>
        <div class="text_area">
        <table border="2" cellpadding="2" cellspacing="2">
        <tr><th bgcolor="#819FF7">&nbsp&nbspTender Department&nbsp&nbsp</th><th bgcolor="#819FF7">&nbsp&nbspNumber of Tenders&nbsp&nbsp</th></tr>
        <c:forEach items="${requestScope.ltm}" var="tenderList">
        <%-- <c:forEach items="${tenderList}" var="row"> --%>
      	<tr>
        <td>&nbsp&nbsp<A HREF="listDeptTender.htm?params=${tenderList.tenderGroup}">${tenderList.tenderGroup}</A>&nbsp&nbsp</td>
        <td align="center">${tenderList.count}</td>
      </tr>
     <%-- </c:forEach> --%>
     </c:forEach>
    
    </table>
    
        </div>
            
          
      	</div>
       
        <div class="section_box2" align="justify">
        
        <!-- <div class="post_title">New Flash Player</div> -->
        <div class="text_area">
        <!-- <img src="images/s_flashmo_022_park_20.jpg" alt="Photo Two" title="Photo Two" width="120" height="90" class="templatemo_pic" /> -->
   	      <!-- Nam sit amet justo vel libero tincidunt dignissim. Fusce ac orci sit amet velit ultrices condimentum. Integer imperdiet  odio ac eros. Ut id massa. Nullam nunc. Vivamus sagittis varius lorem.
        Quisque in diam a justo condimentum molestie. --><br />
       <!--  <div class="publish_date">Post Date: 24-10-2020 · Tags: <a href="#">Flash</a> · <a href="#">ActionScripts</a> · <a href="#">Full Story</a></div> -->
          </div>
      	</div>
       
        </div>
      </div>
    
    	<div id="templatemo_right_column">
           
            <ul class="templatemo_menu">
              <li><a href="index.htm">Homepage</a></li>
              <li><a href="#" target="_parent">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#" target="_parent">Link</a></li>
          </ul>
          
          <div class="section_box" align="justify">
            <div class="subtitle">Quick Contact</div>
              Tel: 0343-2553639<br />
              Fax: 0343-2553639<br />
              Email: admin[at]dpl.net.in<br />
              <br />
          </div>
          <div class="section_box" align="justify">
          <div class="subtitle">About this website</div>
            This Website has been developed by IT Cell, The Durgapur Projects Ltd<br />
            <a href="http://validator.w3.org/check?uri=referer"><img  src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a> 
          </div>
          
          <div class="section_box">
            <div class="subtitle">Sectional Heading</div>
              <a href="#">Link</a><br />
              <a href="#">Link</a><br />
              <a href="#">Link</a><br />
              <a href="#">Link</a><br />
              <a href="#" target="_parent">Link</a><br />
          </div>
    </div>

	<div id="templatemo_footer">
    Copyright � 2015. Site Developed & Maintained by IT Cell, The Durgapur Projects Limited.    </div>
        
</div>
<div class="templatemo_spacer"></div>
</div>
</body>
</html>