<%@page import="com.october.web.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/6c7c19473b.js"
	crossorigin="anonymous"></script>
</head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Kenia&family=MonteCarlo&family=Moo+Lah+Lah&family=Orbitron:wght@400..900&family=Roboto+Flex:opsz,wght@8..144,100..1000&display=swap"
	rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Literata:ital,opsz,wght@0,7..72,200..900;1,7..72,200..900&family=Rowdies:wght@300;400;700&display=swap"
	rel="stylesheet">
	
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style>
body {
	margin: 0%;
	padding: 0%;
	background: #656565;
}

#emp {
	height: 509.5px;
	margin-left: 25%;
	margin-top: -39.4%;
	background: linear-gradient(to bottom right, #ffffff 0%, #99ffcc 100%);
	background-repeat: no-repeat;
	background-size: cover;
	border-bottom-right-radius: 15px;
	padding: 10px
}

#maneger {
	position: absolute;
	margin-top: 100px;
	margin-left: 126px;
	font-size: 95px;
	text-shadow: 3px 3px 3px gray;
}

#manger_id {
	position: absolute;
	margin-top: 173px;
	margin-left: 110px;
	font-size: 30px;
	font-family: fantasy;
	color: green;
	text-decoration: none;
}

#employee {
	position: absolute;
	margin-top: 50px;
	margin-left: 129px;
	font-size: 55px;
	text-shadow: 3px 3px 3px gray;
}

#employee_id {
	position: absolute;
	margin-top: 85px;
	margin-left: 100px;
	font-size: 30px;
	font-family: fantasy;
	color: green;
	text-decoration: none;
}

.container {
	margin-right: 1000px;
	height: 530px;
	background: linear-gradient(to bottom right, #ffffff 0%, #99ffcc 100%);
	border-radius: 5px;
	border-top-left-radius: 0px;
}

#seccontainer {
	background: green;
	font-size: 55px;
	font-family: "Kenia", sans-serif;
	font-weight: 400;
	font-style: normal;
	text-align: left;
	text-shadow: 5px 5px 5px #000;
}

#empname1 {
	color: #e43e6f;
	margin-bottom: -30px;
}

#empname2 {
	color: white;
	margin-bottom: -30px;
}

#empname3 {
	color: #86CEEB;
}

form {
border-radius:10px;
padding: 10px;
padding-left:50px;
padding-right:50px;
width: 500px;
margin-left: 20% ;
margin-top: 10px;
box-shadow: 0px 0px 15px #000;

}
#heading{
font-family: sans-serif;
text-align: center;
}
.grid-container {
  display: grid;
  grid-template-columns: auto  auto  ;
  margin:10px;
  border-radius:10px;
 padding: 10px;
  text-align: center;
  height: 100%;
  width: 40% auto;
}

.grid-item {
 
  font-size: 20px;
  padding: 10px;
  text-align: center;
}

label {
  display: block;
  margin-bottom: 10px;
  margin-top:-25px;
 position: absolute;
 float: left;
}

input[type="text"],
input[type="email"],
input[type="password"] {
  width: calc(100% - 12px);
  padding: 8px;
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
}

button[type="submit"] {
  padding: 10px 20px;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
   margin-left: 150px;
   margin-top: -220px;
  
   
}

input[type="reset"] {
  padding: 10px 20px;
  background-color: #f44336;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  margin-left: 20px;
  justify-content:center;
 box-shadow: 0px 0px 19px black;
 font-family: monospace;
}

input[type="reset"]:hover {
  opacity: 0.8;
  color:#000;
  background: orange;
}

button {
	background-color: purple;
	color: #fff;
	padding: 10px 85px;
	border: none;
	border-radius: 3px;
	margin-left: 150px;
	box-shadow: 0px 0px 19px black;
	text-align: center;
	font-family: monospace;
	}

button:hover {
	cursor: pointer;
	background-color: orange;
	color: black;
}

h3 {
	margin-left: 40%;
}

.contaner1 {
	width: 100%;
	height: 100%;
	border: 1px solid;
	border-radius: 10px;
	background-color: #6565;
	overflow: scroll;
}

hr {
	margin-top: 110px;
	margin-left: 55px;
}

#i-tag1 {
	margin-top: 70px;
	margin-left: 50px;
}

#employee_id1 {
	text-decoration: none;
	position: absolute;
	margin-top: 15px;
	margin-left: 100px;
	font-size: 30px;
	font-family: fantasy;
	color: green;
	text-decoration: none;
}

#employee_id1:hover {
	color: orange;
}
</style>
<body>
	<header id="seccontainer">
		<span id="empname1">EMPLOYEES</span> <span id="empname2">MANAGEMENT</span>
		<span id="empname3">SYSTEM</span>
	</header>
	<div class="container">
		<div id="emp1">
			<i id="employee" class="fa-solid fa-user-tie" title="manger"></i><br>
			<a id="employee_id" href="Managerregister.jsp">Manager</a><br>
		</div>
		<hr width="60%" size="2" color="#000">
		<br> <a id="employee_id1" href="Home.jsp"><i
			class="fa-solid fa-house"></i>Home</a>
	</div>
	<div id="emp">
		<div class="contaner1">
			<form action="managerdata" method="post" onsubmit="func()">
				<div id="heading">
					<h1>Registration</h1>
				</div>
				
				<div class="grid-container">
					<div class="grid-item">
						<label>Name:</label><input type="text" name=name
							required="required"><br>
						<br>
					</div>
					<div class="grid-item">
						<label>Email:</label><input type="email" name=email
							required="required"><br>
						<br>
					</div>
					<div class="grid-item">
						<label>Password:</label><input type="password" name=password
							required="required"><br>
						<br>
					</div>
					<div class="grid-item">
						<label>Birth Date:</label><input type="date" name=birthdate
							required="required" style="padding: 6.5px; padding-left: 70px ;padding-right: 40px;border: none; border-radius: 2px;"><br>
						<br>
					</div>
					<div class="grid-item">
						<label>decription:</label><input type="text" name=decription
							required="required"><br>
						<br>
					</div>
					<div class="grid-item">
						<label>Phone</label><input type="text" name=phone
							required="required"> <br>
						<br>
					</div>
				</div>
				<button type="submit" >Register</button>
				<input type="reset" name="reset" value="Reset">
				<h5 Style="margin-bottom: 5px; ">
					Already have an register?<a href="Managerhome.jsp">Login In</a>
				</h5>
			</form>
          <% %>
			
		</div>
	</div>
	<script>
			function func() {
				Swal.fire("Success","Registered successfully","success");
				return true;
			}
			</script>
</body>
</html>