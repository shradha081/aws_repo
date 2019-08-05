<%@page import="com.minds.Dao.databaseconDao"%>
<%@page import="com.minds.bean.User"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>

<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    body {
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    background-image: url(images/tablesetting0.jpg); background-size: cover; height: 30%;">
 
}
    .fakeimg {
    height: 200px;
   
  }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
       background-color: #ffc107;
      
    }
  /*   .jumbotron {
    margin-bottom: 0;
    padding-top: 30px;
    padding-bottom: 30px;
    margin-bottom: 30px;
    color: inherit;
    background-color: #ffc107;
} */
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #ffc107;
      padding: 25px;
    }
    
  </style>
</head>
<body>
<div class="jumbotron jumbotron-fluid" style="text-align:center; background-image: url(images/main2.jpg); background-size: cover; height: 20%;">
  <div class="container">
    <h1><b></b></h1>      
   
  </div>
</div>
<!-- <div class="jumbotron">
  <div class="container text-center">
    <h1>Recipe Management System</h1>      
    <p></p>
  </div>
</div> -->

<br>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Recipe Management System</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
     <ul class="nav navbar-nav">
        <li><a href="Home.jsp">Home</a></li>
        <li><a href="AdminLogin.jsp">Admin</a></li>
        <li class="active"><a href="Registration.jsp">User</a></li>
        <li><a href="ContactUs.jsp">Contact Us</a></li>
       
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>
	
	
<div class="container" style="margin-top:30px">
  <div class="row">
  
    <div class="col-sm-4">
      <h1>Categories</h1> 
      <hr>
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
				<img src="images/category1.jpg" class="w3-round w3-image w3-opacity-min"
					alt="" width="270" height="450">
			 </li>
			
			
  </ul>
    
     
    </div>
  <div class="col-sm-7">
         <h1>User Registration</h1> <hr>
<div class="loginBox">


<form action="AddUser.jsp"> 

<div class="form-group">
    <label for="username">User Name:</label>
    <input type="text" class="form-control" name= "username" id="username" placeholder="Username" required>
  </div>
   <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" name= "password" id="pwd" placeholder="Enter Password" required>
  </div>

  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="text" class="form-control"  name= "email" id="email" placeholder="Enter Email" required>
  </div>
   <div class="form-group">
    <label for="pwd">Date Of Birth:</label>
    <input type="text" class="form-control" name= "dateofbirth" id="DOB" placeholder="Enter Date of Birth" required>
  </div>
  
  
 
  <div class="form-group">
    <label for="address">Address:</label>
    <input type="text" class="form-control" name= "address" id="address" placeholder="Enter address" required>
  </div>
   <div class="form-group">
    <label for="state">Mobile No:</label>
    <input type="text" class="form-control" name= "mobileno" id="mobileno" placeholder="Enter mobileno" required>
  </div>
 
  
  <div class="form-group form-check">
    <label class="form-check-label">
      <input class="form-check-input" type="checkbox"> Remember me</label>
  </div>
  
  
  <button type="submit" class="btn btn-danger">Submit</button>
   <button type="reset" class="btn btn-danger">Reset</button>
  <br>
<b><a style="font-family: serif; font-size:xx-large; ;color: white; " href="UserLogin.jsp" onclick="Signup">Login</a></b>
</form>


</div>
    
     
    
     </div> 
  </div>
</div>
<br>
<br>
<br>


<br>
<br>
<footer class="container-fluid text-center">
  <p>Online Store Copyright</p>  
  <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>


</body>
</html>
