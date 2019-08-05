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

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">RMS</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="AdminLogin.jsp">Admin</a></li>
        <li><a href="#">User</a></li>
        <li><a href="#">Contact Us</a></li>
        </ul>
        </div>
         </div>
 
</nav>
<div class="container" style="margin-top:30px">
  <div class="row">
   
  <div class="col-sm-8">
     
<div class="loginBox">


<h2>Admin Logout Success</h2>

 <form class="form-horizontal" action="AdminLoginCheck.jsp">

  <div class="form-group">
    <label for="username">Username:</label>
    <input type="text" class="form-control" name="username" id="username">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" name="password" id="password">
  </div>
  <div class="form-group form-check">
    <label class="form-check-label">
      <input class="form-check-input" type="checkbox"> Remember me
    </label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  
<a href="Home.jsp" onclick="Signup">Go Back to Home</a>
</form>

</div>




</div>
    
     </div> 
  </div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="jumbotron text-center" style="margin-bottom:0">
  <p>Footer</p>
</div>

</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<title>Admin Logout</title>
<link rel="stylesheet" href="resources/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.jsp">FeeReport</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="index.jsp">Home</a></li>
       </ul>

    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav><div class="container">
<h1>Admin Logout Success</h1>
<form action="AdminLogin.jsp" method="post">
<table>
<tbody><tr><td>Email:</td><td><input type="email" name="email" required=""></td></tr>
<tr><td>Password:</td><td><input type="password" name="password" required=""></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="Login"></td></tr>
</tbody></table>
</form></div>
<div class="container-fluid footer">
<p>Footer Text  </p>
</div>
  <script src="resources/jquery.min.js"></script>
  <script src="resources/bootstrap.min.js"></script>


</body></html> --%>