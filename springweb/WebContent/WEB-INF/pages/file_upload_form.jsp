<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>Spring MVC Multiple File Upload</title>
<style>
	body {font-family: "Trebuchet MS";}
	h1 {font-size: 1.5em;}
</style>


<script 
src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

<script>
$(document).ready(function() {

	$('#addFile').click(function() {
		//var fileIndex = $('#fileTable tr').children().length - 1;
		var fileIndex = $('#fileTable tr').children().length;
		$('#fileTable').append(
				'<tr><td>'+
				'	<input type="file" name="files['+ fileIndex +']" />'+
				'</td></tr>');
	});
	
});
</script>
</head>
<body>
<h1>Tender File Upload</h1>

<form:form method="post" action="uploadMultipleFile.htm" 
		modelAttribute="uploadForm" enctype="multipart/form-data">

	<p>Select files to upload. Press Add button to add more file inputs.</p>
    <input type="hidden" name="tendergroup" value="<c:out value="${tendergroup}" />" />
    <input type="hidden" name="ref_no" value="<c:out value="${ref_no}" />" />
    <input type="hidden" name="tender_type" value="<c:out value="${tender_type}"/>" />
    <input type="hidden" name="estimated_value" value="<c:out value="${estimated_value}" />" />
    <input type="hidden" name="opening_date" value="<c:out value="${opening_date}" />" />
    <input type="hidden" name="closing_date" value="<c:out value="${closing_date}" />" />
    <input type="hidden" name="prebid_date" value="<c:out value="${prebid_date}" />" />
    <input type="hidden" name="submission_date" value="<c:out value="${submission_date}" />" />
    <input type="hidden" name="scope" value="<c:out value="${scope}" />" />
	<input id="addFile" type="button" value="Add File" />
	<table id="fileTable">
		<tr>
			<td><input name="files[0]" type="file" /></td>
		</tr>
		<!-- <tr>
			<td><input name="files[1]" type="file" /></td>
		</tr> -->
	</table>
	<br/><input type="submit" value="Upload" />
</form:form>
</body>
</html>
