<!DOCTYPE html>
<html>
<head>
	<title>Dashboard</title>
	<style>
		h1 {
			font-size: 50px;
			text-align: center;
			text-decoration: underline;
			font-family: tahoma;
			color: white;
		}

		h4 {
			font-size: 35px;
			text-align: center;
			font-family: sans-serif;
			text-decoration: underline;
			color: white;
		}

		p {
			font-size: 35px;
			text-align: center;
			color: white;
			font-family: arial;
		}
		button {
			display: block;
			margin: auto;
			padding: 15px 30px;
			box-sizing: border-box;
			font-size: 30px;
			color: white;
			border: 1px solid white;
			background-color: #07CCF5;
			cursor: pointer;
		}

		h2 {
			font-size: 20px;
			text-align: right;
			font-family: sans-serif;
			text-decoration:underline;
			color: white;
		} 

		a {
			text-decoration: none;
			color: #07CCF5;
			font-weight: bold;
		}
	</style>
</head>
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
			String s=(String)session.getAttribute("uname");
		%>
	<h2>Welcome <%=s%></h2>
	<h1>DASHBOARD</h1>
	<br><br>
	<p>New Student Registration <a href="Page1.jsp">Click here</a></p>
	<br><br>
	<p>To Continue Previous Form Submission <a href="UpdateDoc.jsp">Click here</a></p>
	<br><br>
	<p><a href="Search.jsp">Search Student Information</a></p>
	<br><br>
	<form id="Logout" action="Logout.jsp"></form>
	<button type="submit" form="Logout" value="submit">Logout</button>
</body>
</html>