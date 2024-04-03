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
    height:509.5px ; 
    margin-left: 25%;
    margin-top:-39.4%;
    background: linear-gradient(to bottom right, #ffffff 0%, #99ffcc 100%);
    background-repeat: no-repeat;
    background-size: cover;
    border-bottom-right-radius:15px;
   padding:10px
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
margin-top: 50px;
margin-left: 129px;
font-size: 55px;
text-shadow: 3px 3px 3px gray;
}
#employee_id{
   position:absolute;
  margin-top: 85px;
margin-left: 100px;
  font-size: 30px;
  font-family:fantasy;
  color: green;
  text-decoration: none;
  
}
.container{
  
   margin-right: 1000px;
   height:530px;
   background: linear-gradient(to bottom right, #ffffff 0%, #99ffcc 100%);
   border-radius: 5px;
   border-top-left-radius: 0px;
}
#seccontainer{
background: green;
font-size:55px;
    font-family: "Kenia", sans-serif;
  font-weight: 400;
  font-style: normal;
text-align: left;
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
form {
      max-width: 500px;
      padding: 20px;
      background-color: #000 transparent;
      border-radius: 5px;
      box-shadow: 0 0 10px #000;
      margin-top: 10%;
      margin-left: 25%;
      
    }

    input {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      box-sizing: border-box;
      border: 1px solid #ccc;
      border-radius: 3px;
    }

    button {
      background-color: purple;
      color: #fff;
      padding: 10px 85px;
      border: none;
      border-radius: 3px;
      margin-left: 150px;
      box-shadow: 0px 0px 19px black ;
      text-align: center;
    }
    button:hover{
     cursor: pointer;
     background-color: orange;
     color: black;
    }
    h3{
     margin-left: 40%;
    }
    .contaner1{
    width: 100%;
    height: 100%;
    border: 1px solid;
    border-radius:10px;
    background-color: #6565;
    overflow: scroll;
    
    }
    hr{
    margin-top:110px; 
    margin-left: 55px;
    }
    #i-tag1{
      margin-top:70px; 
    margin-left: 50px;
     }
     #employee_id1{
     text-decoration: none;
      position:absolute;
     margin-top: 15px;
   margin-left: 100px;
  font-size: 30px;
  font-family:fantasy;
  color: green;
  text-decoration: none;
     }
     #employee_id1:hover {
	color: orange;
    } 
</style>
<body>
<header id="seccontainer">
     <span id="empname1">EMPLOYEES</span>   
     <span id="empname2">MANAGEMENT</span>
     <span id="empname3">SYSTEM</span>
</header>
<div class="container">
    <div id="emp1">
       <i id="employee" class="fa-sharp fa-solid fa-users" title="manger"></i><br><a id="employee_id" href="Employeelogin.jsp">Employees</a><br> 
   </div>
    <hr width="60%" size="2" color="#000"><br>
    <a id="employee_id1" href="Home.jsp"><i class="fa-solid fa-house"></i>Home</a>
</div>
 <div id="emp">
         <div class="contaner1">
		       <form action="login" method="post">
				<h3>Login Page</h3>
				Email: <input type="email" name=email required="required"><br>
				Password: <input type="password" name="password" required="required"><br>
				<button type="submit">Login</button><br>
				<h5>Don't have an account?<a href="Employeehome.jsp" style="border:none;background:none;padding:0px;color:blue;margin: 0px;box-shadow: none; text-decoration: none; ">Register</a></h5>
				
		      </form>
         </div> 
</div>
</body>
</html>