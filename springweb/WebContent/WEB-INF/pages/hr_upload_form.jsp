<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>HR File Upload Form</title>
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
<h1>HR File Upload</h1>

<form:form method="post" action="uploadMultipleHrFile.htm" 
		modelAttribute="uploadForm" enctype="multipart/form-data">

	<p>Select files to upload. Press Add button to add more file inputs.</p>
    <input type="hidden" name="title" value="<c:out value="${title}" />" />
    <input type="hidden" name="description" value="<c:out value="${description}" />" />
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
