<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
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
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    /*  padding-top: 30px;
    padding-bottom: 30px;
    margin-bottom: 30px;
    color: inherit; */
    background-color: #ffc107;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #ffc107;
      padding: 25px;
    }
  </style>
</head>
<body>
<div class="jumbotron jumbotron-fluid" style="text-align:center; background-image: url(images/healthy.jpg); background-size: cover; height: 30%;">
  <div class="container">
    <h1>Recipe Management System</h1>      
   
  </div>
</div>
<!-- <div class="jumbotron">
  <div class="container text-center">
    <h1>Recipe Management System</h1>      
    
  </div>
</div>
 -->
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
        <li class="active"><a href="Home.jsp">Home</a></li>
        <li><a href="Viewallrecipe.jsp">View All Recipe</a></li>
        <li><a href="AdminLogin.jsp">Logout</a></li>
        </ul>
        </div>
         </div>
 
</nav>

<div class="container">  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
   </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
      	  <center><img src="images/food1.jpg" style="width:70%;"></center>
      </div>

      <div class="item">
       <center> <img src="images/rolls.jpg" style="width:60%;"></center>
      </div>
    
      <div class="item">
            <center><img src="images/food2.jpg" style="width:100%;"></center>
      </div>
  
    
     
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div> 
<!-- <img src="images/food2.jpg"> -->
<!--  <a href="" onclick="submit">| USER REGISRTAION |</a> <a href="#"> FORGET PASSWORD | </a> -->
<!-- 
<script src="resources/jquery.min.js"></script>
<script src="resources/bootstrap.min.js"></script>
<script src="resources/jquery.min.js"></script>

		 -->





			<!-- End page content -->

			<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- Footer -->



		<!-- Footer --><footer class="container-fluid text-center">
  <p>Recipe Store Copyright</p>  
  <!-- <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form> -->
</footer></body></html>