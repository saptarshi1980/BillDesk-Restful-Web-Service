<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/dplsite" user="root" password="dpl123" />
 
<sql:query dataSource="${dataSource}" var="categories" scope="session">
        SELECT sr_no as Download_Link,title as Title,description AS Description FROM file_upload_master  ORDER BY upload_date desc
</sql:query>
 
<c:import url="displayPDF.jsp?pageNumber=1"/>