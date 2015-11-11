<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">      
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html lang="en">
<style>
  .red {
    color: red;
  }
  </style>
<head>
	<title>DPL-HR File Entry</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>	
<script src="<c:url value="resources/js/moment.js" />"></script>	
<link rel="stylesheet" type="text/css" href="<c:url value="resources/css/jquery.datetimepicker.css" />" />
<link href="<c:url value="resources/css/semantic-form.css" />" rel="stylesheet" type="text/css" />
<link href="<c:url value="resources/css/jquery.datetimepicker.css" />" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function checkForm() {
	
}
</script>
</head>


<body>
      
<h2>FILE UPLOAD </h2>

<!-- <form name="form1" action="register.htm" method="post" onsubmit="return checkDate()">
 -->
  <form name="form1" action="hrshow.htm" method="post" onsubmit="return checkForm()">
  
  <fieldset>
    
    <legend>Contact Information</legend>
 
    <div>
      <label for="first_name">Document Title</label>
            <input type="text" name="title" id="title" size="50" >
            
  </div> 
  
    <div>
      <label for="last_name"> 
      Document Description</label>
      <input type="text" name="description"  size="100" id="description">
      <div id="ref_availability_result">
      </div>
  </div>
    
      
  </fieldset>   
  
  <div class="button-row">
    <a href="#">Cancel</a> or <input type="submit" value="Proceed to File Uplaod">
  </div>  

</form>     
            


 
</body>

<script src="<c:url value="resources/js/jquery.js" />"></script>
<script src="<c:url value="resources/js/jquery.datetimepicker.js" />"></script>
<script>
$('#datetimepicker_dark1').datetimepicker({theme:'dark',format:'d-m-Y H:i'})
$('#datetimepicker_dark2').datetimepicker({theme:'dark',format:'d-m-Y H:i'})
$('#datetimepicker_dark3').datetimepicker({theme:'dark',format:'d-m-Y H:i'})
$('#datetimepicker_dark4').datetimepicker({theme:'dark',format:'d-m-Y H:i'})
</script>

</html>