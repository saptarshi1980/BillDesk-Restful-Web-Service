<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/dplsite" user="root" password="dpl123" />
 
<sql:query dataSource="${dataSource}" var="categories" scope="session">
        SELECT concat(tender_ref_no,date_format(tender_upload_date,'%d-%m-%y')) as Download_Link,tender_ref_no,tender_group AS "Unit",tender_type AS "Tender Type",estimated_value AS "Estimated. Val.",DATE_FORMAT(opening_tender_sale,'%d-%m-%y %H:%i') AS "Paper Sale-Open Dt",DATE_FORMAT(closing_tender_sale,'%d-%m-%y %H:%i') AS "Paper Sale-Closing Dt",DATE_FORMAT(date_pre_bid,'%d-%m-%y %H:%i') AS "Pre Bid Dt",DATE_FORMAT(due_date_bid_sub,'%d-%m-%y %H:%i') AS "Due Date",scope_of_work as Scope,DATE_FORMAT(tender_upload_date,'%d-%m-%y %H:%i')"Upload Dt" FROM tendermasternew where tender_group= ? <sql:param value="${params}" /> ORDER BY tender_upload_date desc
</sql:query>
 
<c:import url="displayTender.jsp?pageNumber=1"/>