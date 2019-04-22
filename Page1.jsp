<!DOCTYPE html>
<html>
<head>
	<title>Page1</title>
	<style>

	h2 {
	font-family: tahoma;
	font-size: 35pt;
	color: white;
	font-style: normal;
	font-weight: bold;
	text-align: center;
}
	h3 {
	font-family: Calibri;
	font-size: 25pt;
	color: white;
	font-style: normal;
	font-weight: bold;
	text-align: center;
	text-decoration: underline;
}


table {
  font-family: arial; 
  color:black; 
  font-size: 12pt; 
  font-style: normal;
  font-weight: bold;
  background-color: #f2f2f2; 
   
}

button {
  margin: auto;
  display: inline-block;
  
  font-size: 20px;
  padding: 5px 10px;

}

.wrapper {
  text-align: center;
}
	</style> 
</head>
<script type="text/javascript">
	function f1(){
		document.getElementById("txt1").value="";
		document.getElementById("txt2").value="";
		document.getElementById("txt3").value="";
		document.getElementById("txt4").value="";
		document.getElementById("txt5").value="";
		document.getElementById("txt6").value="";
		document.getElementById("txt7").value="";
		document.getElementById("txt8").value="";
		document.getElementById("txt9").value="";
		document.getElementById("txt10").value="";
		document.getElementById("txtarea").value="";
		document.getElementById("rb1").checked=false;
		document.getElementById("rb2").checked=false;
		document.getElementById("rb3").checked=false;
		document.getElementById("rb4").checked=false;
		
	}
</script>
<body background="Image/bg_image.jpg">
<%
	if(session.getAttribute("uname")==null){
		response.sendRedirect("Page0.jsp");
	}	
%>
<%
	response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
	response.setDateHeader("Expires",0);
%>

<h2>STUDENT REGISTRATION FORM</h2>
<h3>Personal Information</h3>
<form action="Page1-1.jsp" method="post">
<table align="center" cellpadding="10">
	<tr>
		<td>First Name </td>
		<td>
			<input type="text" id="txt1" name="First Name" maxlength="30" required>
			(Max 30 characters A-Z a-z)
		</td>
	</tr>

	<tr>
		<td>Last Name </td>
		<td>
			<input type="text" id="txt2" name="Last Name" maxlength="30" required>
			(Max 30 characters A-Z a-z)
		</td>
	</tr>

	<tr>
		<td>DOB</td>
		<td>
			<input type="date" id="txt3" name="date" maxlength="30" required>
		</td>
	</tr>

	<tr>
		<td>E-Mail</td>
		<td>
			<input type="email" id="txt4" name="E-Mail" maxlength="30" required>
		</td>
	</tr>

	<tr>
		<td>Mobile Number</td>
		<td>
			
			<input type="text" id="txt5" name="Mobile Number" maxlength="10" required>
		</td>
	</tr>

	<tr>
		<td>Gender</td>
		<td>
			<input type="radio" id="rb1" name="Gender" value="Male" required>Male
			<input type="radio" id="rb2" name="Gender" value="Female" required>Female
		</td>
	</tr>

	<tr>
		<td>Address</td>
		<td>
			<textarea name="Address" id="txtarea" rows="4" cols="40" required></textarea>
		</td>
	</tr>

	<tr>
		<td>State</td>
		<td>
			<input type="text" id="txt6" name="State" maxlength="30" required>
		</td>
	</tr>

	<tr>
		<td>City</td>
		<td>
			<input type="text" id="txt7" name="City" maxlength="30" required>
		</td>
	</tr>

	<tr>
		<td>Pincode</td>
		<td>
			<input type="text" id="txt8" name="Pincode" maxlength="6" required>
		</td>
	</tr>

	<tr>
		<td>Country</td>
		<td>
			<input type="text" id="txt9" name="Country" required>
		</td>
	</tr>

	<tr>
		<td>Scholar No</td>
		<td>
			<input type="text" id="txt10" name="SN" required>
		</td>
	</tr>

	<tr>
		<td>Applying for</td>
		<td>
			<input type="radio" id="rb3" name="Af" value="Under Graduation" required>Under Graduation
			<input type="radio" id="rb4" name="Af" value="Post Graduation" required>Post Graduation
		</td>
	</tr>
</table>

<br><br>

<div class="wrapper">
  <button type="submit" value="submit">Save and continue</button>
  &nbsp;&nbsp;&nbsp;
  <button onclick="f1()">Reset</button>
  &nbsp;&nbsp;&nbsp;
</div>
</form>
</body>
</html>