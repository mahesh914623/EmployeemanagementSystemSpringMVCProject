<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/6c7c19473b.js" crossorigin="anonymous"></script>
</head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kenia&family=MonteCarlo&family=Moo+Lah+Lah&family=Orbitron:wght@400..900&family=Roboto+Flex:opsz,wght@8..144,100..1000&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Literata:ital,opsz,wght@0,7..72,200..900;1,7..72,200..900&family=Rowdies:wght@300;400;700&display=swap" rel="stylesheet">

<style>
body{
margin: 0%;
padding: 0%;
background: #656565;

}
#emp {
    height:600px ; 
    border: 2px solid white; 
    margin-left: 29%;
    margin-top:-5.4%;
    border-top-left-radius: 160px;
    border-bottom-left-radius:160px;
    border-style:outset 10px;
    background-color: white;
    background-image: url("https://i0.wp.com/www.innotechsolutions.biz/wp-content/uploads/2021/03/HR-PAYROLL-SYSTEM.jpg?fit=1920%2C784&ssl=1");
    background-repeat: no-repeat;
    background-size: cover;
   
}
#maneger{
position:absolute;
margin-top: 100px;
margin-left: 126px;
font-size: 95px;
text-shadow: 3px 3px 3px gray;
}
#manger_id{
   position:absolute;
   margin-top: 173px;
  margin-left: 110px;
  font-size: 30px;
  font-family:fantasy;
  color: green;
  text-decoration: none;
 
}
#employee{
position:absolute;
margin-top: 220px;
margin-left: 100px;
font-size: 95px;
text-shadow: 3px 3px 3px gray;
}
#employee_id{
   position:absolute;
   margin-top: 295px;
  margin-left: 100px;
  font-size: 30px;
  font-family:fantasy;
  color: green;
  text-decoration: none;
  
}
.container{
   border: 3px solid #656565;
   margin: 5px;
   background: linear-gradient(to bottom right, #ffffff 0%, #99ffcc 100%);
   border-radius: 5px;
}
#seccontainer{
margin-left: 500px;
margin-top: 100px;
font-size:55px;
    font-family: "Kenia", sans-serif;
  font-weight: 400;
  font-style: normal;
text-align: center;
 text-shadow: 5px 5px 5px #000;
}
#empname1{
color: #e43e6f;
margin-bottom: -30px;
}
#empname2{
color: white;
margin-bottom: -30px;
}
#empname3{
color: #86CEEB;
}
</style>
<body>
<div class="container">
    <div id="emp1">
       <i id="maneger" class="fa-solid fa-user-tie"  name="manger"></i><br><a id="manger_id" href="Managerhome.jsp">Manager</a><br>
       <i id="employee" class="fa-sharp fa-solid fa-users" title="manger"></i><br><a id="employee_id" href="Employeehome.jsp">Employees</a><br> 
   </div>
    <div id="emp">
           <section id="seccontainer">
           <h1 id="empname1">EMPLOYEES</h1>
           <h1 id="empname2">MANAGEMENT</h1>
           <h1 id="empname3">SYSTEM</h1>
           </section>
    </div>
</div>
</body>
</html>