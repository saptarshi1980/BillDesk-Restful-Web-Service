<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tender File Details</title>
</head>
<body>
 
<h1>List of Tariff Files available</h1>
<table>
 <tr width="200">
  <td width="200">Files</td>
  </tr>
 <c:forEach items="${files}" var="var_files">
  <tr width="200">
   <td ><a href="downloadTariff.htm?file_name=${var_files}" ><c:out value="${var_files}" /></a></td>
  </tr>
 </c:forEach>
</table>
</body>
</html>