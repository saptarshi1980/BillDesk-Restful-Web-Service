<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="Javascript">window.history.forward(1);</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>DPL-Login</title>

<!-- <style type="text/css">
<!--
body {
	background-color: #FFFFCC;
}
.style1 {
	font-family: "Times New Roman", Times, serif;
	font-size: 24px;
}
.style2 {color: #990000}
.style3 {
	color: #333300;
	font-size: 36px;
}
.style5 {
	color: #003399;
	font-family: "Times New Roman", Times, serif;
	font-weight: bold;
	font-size: 30px;
}
.style7 {
	color: #336699;
	font-weight: bold;
}
.style9 {color: #0000FF}
.style10 {font-size: 18px}
-->
</style> 
<script type="text/javascript">
function empFocus(){
	
	document.form1.user_id.focus();
}

</script>
  <%
String p=" ";
  try{
	p= session.getAttribute("msg3").toString();
}catch(NullPointerException ex){
	p=" ";
}

%>	
<style>
div.header {
    background-color:#5882FA;
    color:white;
    margin:10px;
    padding:5px;
    height:90px;
} 

div.footer {
    background-color:#5882FA;
    color:white;
    margin:20px;
    padding:20px;
} 
.style1 {
	font-size: medium;
	font-weight: bold;
}
</style>

</head>
<body onLoad="empFocus();">
<A HREF="index.htm">HOME</A>
<div align="center" class="style1 style2">
  <p>
    <label for="imageField"></label>
    <label for="imageField"></label>
  </p>
</div>
<div class="header">
    <div id="logo" align="center">
    <table>
    <tr>
    <td><img src="${pageContext.request.contextPath}/resources/images/logo.gif"/></td>
         
    </table>
 </div>
 </div>
 </div>
<form id="form1" name="form1" method="POST" action="hrLoginAuth.htm" >
  <div align="center">
    <p>&nbsp;</p>
    <table width="621" height="256" border="2" bordercolor="#993300">
      <tr>
        <td height="248" bgcolor="#99CC99"><div align="center">
            <p><strong><span class="style10">              DPL HR FILE UPLOAD LOGIN </span><br>
            </strong><span class="style7">Please provide your credentials (not case-sensitive) to login</span></p>
            <table width="272" height="118" border="1">
              <tr>
                <td width="146" bordercolor="#000000" bgcolor="#CCCC99"><span class="style9">User Id </span></td>
                <td width="225" bordercolor="#000000"><label>
                  <input type="text" name="user_id" id="user_id" />
                </label></td>
              </tr>
              <tr>
                <td bordercolor="#000000" bgcolor="#CCCC99"><span class="style9">Password</span></td>
                <td bordercolor="#000000"><label>
                  <input type="password" name="password" id="password"/>
                </label></td>
              </tr>
              
              <tr>
                <td colspan="2" bordercolor="#000000" bgcolor="#996666"><label>
                <div align="center">
                  <input type="submit" name="Submit" value="Login" />
                </div>
                </label></td>
              </tr>
            </table>
            <font color="red"><%=p%></font>
        </div></td>
      </tr>
    </table>
     <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
  </div>
</form>
<div class="footer">
<table align="center">
<tr><td><div align="center" class="style1">Portal Developed and Maintained by IT Cell, The Durgapur Projects Limited.</div></td>
</tr>
<tr><td><div align="center" class="style1">In case of any issue, please write to admin@dpl.net.in</div></td>
</tr>
</table>

</div>
</body>
</html>