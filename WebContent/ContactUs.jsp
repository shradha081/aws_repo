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
        <li><a href="Registration.jsp">User</a></li>
        <li class="active"><a href="ContactUs.jsp">Contact Us</a></li>
       
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
  
   <!--  <div class="col-sm-3">
      <h1>Categories</h1> 
      <hr>
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
				<img src="images/category1.jpg" class="w3-round w3-image w3-opacity-min"
					alt="" width="270" height="450">
			 </li>
			
			
  </ul>
  </div> -->
  
  
  
     <!--  <div class="fakeimg" >


				<img src="images/category1.jpg" class="w3-round w3-image w3-opacity-min"
					alt="" width="250" height="450">
			</div> -->
			
  
  
    
     
      
      
     <!--  
      <h3>Sidebar Menu</h3>
      <p>Lorem ipsum dolor sit ame.</p>
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link" href="Home.jsp">Home</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="Registration.jsp">|</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="UserLogin.jsp">Register</a>
        </li>
       <li class="nav-item">
          <a class="nav-link" href="UserLogin.jsp">User Login</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="AdminLogin.jsp">Admin Login</a>
        </li>
      </ul>
      <hr class="d-sm-none"> -->
    
  <div class="col-sm-10">
       <h2>Contact Us</h2> <hr> 

   <ul class="nav nav-pills flex-column">
        <li class="nav-item">
				<img src="images/unsplash6.jpg" class="w3-round w3-image w3-opacity-min"
					alt="" width="700" height="450">
			 </li>
			
			
  </ul> 
    
     </div> 
  </div>
</div>
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
