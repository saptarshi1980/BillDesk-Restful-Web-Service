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
	<title>DPL-Tender Entry</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>	
<script src="<c:url value="resources/js/moment.js" />"></script>	
<link rel="stylesheet" type="text/css" href="<c:url value="resources/css/jquery.datetimepicker.css" />" />
<link href="<c:url value="resources/css/semantic-form.css" />" rel="stylesheet" type="text/css" />
<link href="<c:url value="resources/css/jquery.datetimepicker.css" />" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function checkDate(){
	
	var openDate=document.form1.datetimepicker_dark1.value;
	var closeDate=document.form1.datetimepicker_dark2.value;
	var prebidDate=document.form1.datetimepicker_dark3.value;
	var submissionDate=document.form1.datetimepicker_dark4.value;
	
	openDateConv=moment(openDate,'DD-MM-YYYY HH:mm');
	closeDateConv=moment(closeDate,'DD-MM-YYYY HH:mm');
	prebidDateConv=moment(prebidDate,'DD-MM-YYYY HH:mm');
	submissionDateConv=moment(submissionDate,'DD-MM-YYYY HH:mm');
	
	if(openDateConv>closeDateConv){
		
		alert("Opening Date should come before closing date.");
		return false;
	}
	
	if(openDateConv>prebidDateConv){
		
		alert("Opening Date should come before Pre Bid Discussion date.");
		return false;
	}
	
	if(openDateConv>submissionDateConv){
		
		alert("Opening Date should come before Bid Submission date.");
		return false;
	}
	if(prebidDateConv>submissionDateConv){
		
		alert("Pre Bid Date should come before Bid Submission date.");
		return false;
	}
	if(closeDateConv>submissionDateConv){
		
		alert("Closing of Tender Paper Selling Date should come before Bid Submission date.");
		return false;
	}
	
	
	else{
		return true;
	}
	
	
	
	
}
</script>
<script>
$(document).ready(function() {
	$('#ref_no').blur(function(){
			//run the character number check
			
				check_availability();
			
		});
  });
//function to check username availability
function check_availability(){
		//get the username
		var ref_no = $('#ref_no').val();
		//use ajax to run the check
		$.post("checkRefNo.htm", { ref_no: ref_no },
			function(result){
				//if the result is 1
				if(result>0){
					
					$('#ref_availability_result').html("<span class='red'>Duplicate Tender Reference Number..</span>" );
				}
		});
}
</script>
</head>
<body>
      
<h2>TENDER UPLOAD </h2>

<!-- <form name="form1" action="register.htm" method="post" onsubmit="return checkDate()">
 -->
  <form name="form1" action="show.htm" method="post" onsubmit="return checkDate()">
  
  <fieldset>
    
    <legend>Contact Information</legend>
 
    <div>
      <label for="first_name">Tender Group</label>
      <!-- <select name="tendergroup">
              <option>Coke Oven Group of Plants</option>
              <option selected="selected">Power Plant</option>
              <option>Water Works</option>
              <option>Common Services</option>
              <option>Civil-Plant Service</option>
              <option>Project Cell-DPPS</option>
              <option>Stores &amp; Purchase- COGP &amp; others</option>
              <option>ETD </option>
              <option>Stores &amp; Purchase-PP &amp; Others</option>
              <option>Project Cell-COGP</option>
              <option>Civil Township</option>
              <option>Stores &amp; Purchase- ETD</option>
              <option>Stores &amp; Purchase-Water Works</option>
              <option>Stores &amp; Purchase-Corp</option>
              <option>IT Cell</option>
              <option>Power Plant</option>
            </select> -->
            <input type="text" name="tendergroup" value="<c:out value="${deptName}" />" size="30" id="tendergroup" readonly>
            
  </div> 
  
    <div>
      <label for="last_name"> 
      Tender Reference No</label>
      <input type="text" name="ref_no" value="" size="30" id="ref_no">
      <div id="ref_availability_result">
      </div>
  </div>
    
    <div>
      <label for="last_name">Tender Type</label>
      <input type="text" name="tender_type" value="" size="30" id="tender_type" >
      
  </div>     
  
    <div>
      <label for="phone_number">Estimated Value</label>
      <input type="text" name="estimated_value" value="" size="15" id="estimated_value"> 

  </div>
  
  <div>
      <label for="phone_number">Opening Date &amp; Time of Sell of Tender Paper</label>
      <input type="text" id="datetimepicker_dark1" name="datetimepicker_dark1"/>
  </div>
  
  <div>
      <label for="phone_number">Closing Date &amp; Time of Sell of Tender Paper</label>
      <input type="text" id="datetimepicker_dark2" name="datetimepicker_dark2"/>
  </div>
  
    <div>
      <label for="phone_number">Date &amp; time of Pre-Bid discussion</label>
	  <input type="text" id="datetimepicker_dark3" name="datetimepicker_dark3"/>
  </div>
  
    <div>
      <label for="phone_number">Due Date &amp; time of Submission of Bid</label>
      <input type="text" id="datetimepicker_dark4" name="datetimepicker_dark4"/>
  </div>
  
      <div>
      <label for="phone_number">Brief Scope of Work</label>
      <textarea name="scope" id="scope" cols="40" rows="8"></textarea>

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