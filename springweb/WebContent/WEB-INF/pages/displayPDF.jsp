<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PDF Files for Download- Details</title>

</head>
<body>
File Details<p>
<c:set var="categories" value="${sessionScope.categories}" />
<c:set var="rowsPerPage" value="15" />
<c:set var="pageNumber" value="${param.pageNumber}"/>
<c:set var="a">
    <fmt:formatNumber value="${categories.rowCount/rowsPerPage}" maxFractionDigits="0"/>
</c:set>
 
<c:set var="b" value="${categories.rowCount/rowsPerPage}" />
 
 
<c:choose>
    <c:when test="${a==0}">
        <c:set var="numberOfPages" value="1" scope="session"/>   
    </c:when>
 
    <c:when test="${b>a}">
        <c:set var="xxx" value="${b%a}"/>
        <c:if test="${xxx>0}">
            <c:set var="numberOfPages" value="${b-xxx+1}" scope="session"/>   
        </c:if>
    </c:when>
 
    <c:when test="${a>=b}">
        <c:set var="numberOfPages" value="${a}" scope="session"/>    
    </c:when>
</c:choose>
 
<c:set var="start" value="${pageNumber*rowsPerPage-rowsPerPage}"/>
<c:set var="stop" value="${pageNumber*rowsPerPage-1}"/>
<center>
    <table border="1" width="100%">                    
        <c:set var="columns" value="0" scope="session"/>
        <c:forEach items="${categories.columnNames}" var="name">
            <c:set var="columns" value="${columns+1}"/>
            <td bgcolor="silver"><c:out value="${name}"/></td>
        </c:forEach>
        <c:set var="columns" value="${columns-1}"/>
 
        <c:forEach items="${categories.rowsByIndex}" var="row" begin="${start}" end="${stop}">
            <tr>
                <c:forEach begin="0" end="${columns}" var="x">
                    <%-- <td><c:out value="${row[x]}"/></td> --%>
                    <c:choose>
                    <c:when test="${x=='0'}"><td><a href="GetPdfFiles.htm?params=${row[x]}">Download Papers</td></a></c:when>
                    
                    <c:otherwise>
                    <td><c:out value="${row[x]}"/></td>
                    </c:otherwise>
                    </c:choose>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
 
    <%--For displaying Previous link --%>
    <c:if test="${pageNumber gt 1}">
        <a href="displayPDF.htm?pageNumber=${pageNumber - 1}">Previous</a>
    </c:if>
    <c:forEach begin="1" end="${numberOfPages}" var="i">
        <c:choose>
            <c:when test="${i!=pageNumber}">
                <a href="displayPDF.htm?pageNumber=<c:out value="${i}"/>"><c:out value="${i}"/></a>
            </c:when>
            <c:otherwise>
                <c:out value="${i}"/>
            </c:otherwise>        
        </c:choose>       
    </c:forEach>  
    <%--For displaying Next link --%>
    <c:if test="${pageNumber lt numberOfPages}">
        <a href="displayPDF.htm?pageNumber=${pageNumber + 1}">Next</a>
    </c:if>
</center>


    
    
 
</body>
</html>