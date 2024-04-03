<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	padding: 10px;
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

input {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 3px;
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
	overflow: auto; 
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

table {
	border-collapse: collapse;
	width: 50%;
	border: 2px solid #fff;
	border-radius: 8px;
	overflow: hidden;
	margin-left: 70px;
	margin-top: 140px;
	box-shadow: 0px 0px 15px black;
	position: fixed;
}

th, td {
	border: none;
	padding: 10px;
	text-align: left;
	font-size: 16px;
	font-weight: bold;
	color: white; /* changed text color */
}

th {
	background-color: #663399;
}

tr:nth-child(even) {
	background-color: #3f3f3f;
}

tr:nth-child(odd) {
	background-color: #2f2f2f;
}

.del {
	position: absolute;
	text-decoration: none;
	background-color: purple;
	color: #fff;
	padding: 13px 32px;
	border-radius: 5px;
	cursor: pointer;
	font-family: sans-serif;
	margin-top: 20%;
	margin-left: 25%;
	word-spacing: 10px;
	box-shadow: 0px 0px 15px black;
}

.del:hover {
	background-color: orange;
	color: black;
}

.del1 {
	position: absolute;
	text-decoration: none;
	background-color: purple;
	color: #fff;
	padding: 13px 42px;
	border-radius: 5px;
	cursor: pointer;
	font-family: sans-serif;
	margin-top: 20%;
	margin-left: 39%;
	word-spacing: 10px;
	box-shadow: 0px 0px 15px black;
}

.del1:hover {
	background-color: orange;
	color: black;
}
#profile{
background: transparent;
border: none;
font-size:30px;
font-family: fantasy;
color: green;

}
#profile-i{

font-size:30px;
color: green;
margin-top: 65px;
margin-left: 90px;

}
#profile-i:hover {
	color: orange;
	cursor: pointer;
}
#profile:hover {
	color: orange;
	cursor: pointer;
}
</style>
<body>
	<header id="seccontainer">
		<span id="empname1">EMPLOYEES</span> 
		<span id="empname2">MANAGEMENT</span>
		<span id="empname3">SYSTEM</span>
		<span style=" margin-left:450px;color: white;font-size: 30px;"><i class="fa-solid fa-right-from-bracket"></i><a href="Employeelogin.jsp" style="text-decoration: none; color: white">Logout</a></span>
	</header>
	<div class="container">
		<div id="emp1">
			<i id="employee" class="fa-sharp fa-solid fa-users" title="manger"></i><br>
			<a id="employee_id" href="Employeedatafetch.jsp">Employees</a><br>
		</div>
		<hr width="60%" size="2" color="#000">
		<br> <a id="employee_id1" href="Home.jsp"><i
			class="fa-solid fa-house"></i>Home</a><br>
		<br>
		<form action="profileadd" method="post">
			<i class="fa-solid fa-user" id="profile-i"></i><button  id="profile" type="submit"  >Profile</button>
		</form>

	</div>
	<div id="emp">
		<div class="contaner1">
			<c:forEach var="emp" items="${data_e}">
				<table border="2">
					<tr>
						<th>Employee_Id</th>
						<th>Name</th>
						<th>Email</th>
						<th>Password</th>
						<th>Department</th>
						<th>Role</th>
						<th>Phone</th>
						<th>salary</th>
					<tr>
						<td>${emp.id }</td>
						<td>${emp.name }</td>
						<td>${emp.email }</td>
						<td>${emp.password }</td>
						<td>${emp.department }</td>
						<td>${emp.role }</td>
						<td>${emp.phone }</td>
						<td>${emp.salary}</td>
					</tr>
				</table>
				<a class="del" href="<c:url value='/delete1/${emp.id}'/>">Delete</a>
				<a class="del1" href="<c:url value='/${emp.id}'/>">Edit</a>
			</c:forEach>

		</div>
	</div>
</body>
</html>