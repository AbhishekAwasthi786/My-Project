<!DOCTYPE html>
<html>
<head>
	<title>Page0</title>
	<style>
		h3 {
	font-family: Calibri;
	font-size: 35pt;
	color: #929292;
	font-style: normal;
	font-weight: bold;
	text-align: center;
	
		}

	input[type=text] {
		background-color: #E7E5E5;
		width: 300px;
		height: 30px;
		position: relative;
		display: block;
		margin: auto;
		padding: 12px 15px;
		border: none;
	}

	input[type=password] {
		background-color: #E7E5E5;
		width: 300px;
		height: 30px;
		position: relative;
		display: block;
		margin: auto;
		padding: 12px 15px;
		border: none;
	}

div {
	width: 400px;
	height: 450px;
	background-color: white;
	margin: auto;
	left: 0; right: 0; top: 0; bottom: 0;
	position: fixed;
	border-radius: 10px;
}

button {
	display: block;
	margin: auto;
	padding: 15px 118px;
	font-size: 30px;
	color: white;
	border: none;
	background-color: #07CCF5;
}
</style>
</head>

<body background="Image/bg_image.jpg">
<div class="boxed">
	<h3>Login</h3>
	<form action="Page0-0.jsp" method="POST">
		<input type="text" id="txt1" name="Username" placeholder="Enter Username" required>
		<br><br>
		<input type="password" id="txt2"  name="Password" placeholder="Enter Password" required>
		<br><br>
		<button type="submit" value="submit">Sign In</button>
		<!--<br><br>
		<button type="button" style="font-size: 20; padding: 15px 103px;">Add User</button> -->
		</form>
</body>
</html>