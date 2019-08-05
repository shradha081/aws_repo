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
    body {
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    background-image: url(images/tablesetting0.jpg); background-size: cover; height: 30%;">
 
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
     
  .bg-dark {
    background-color: #ff9800!important;
}
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
  .nav-pills .nav-link.active, .nav-pills .show>.nav-link {
    color: #fff;
    background-color: #FF9800;
}
a {
    color: #FF9800;
    text-decoration: none;
    background-color: transparent;
}
.btn-primary {
    color: #fff;
    background-color: #FF9800;
    border-color: #FF5722;
}

.footer {
   position: center;
   left: 0;
   bottom: 0;
   height: fit-content;
   width: 100%;
   background-color: #ff9800!important;
   color: white;
   text-align: center;
}
  </style>
  
</head>
<body>

<div class="jumbotron jumbotron-fluid" style="text-align:center; background-image: url(images/healthy.jpg); background-size: cover; height: 20%;">
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
      <a class="navbar-brand" href="Home.jsp">Recipe Management System</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
       <ul class="nav navbar-nav">
        <li><a href="Home.jsp">Home</a></li>
        <li class="active"><a href="AdminLogin.jsp">Admin</a></li>
        <li><a href="Registration.jsp">User</a></li>
        <li><a href="ContactUs.jsp">Contact Us</a></li>
       
      </ul>
        </div>
         </div>
 
</nav>
<div class="container" style="margin-top:40px">
  <div class="row">
 
   <div class="col-sm-1">
     
    <h3>Sidebar Menu</h3>   

      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link" href="Home.jsp">Home</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" href="AdminLogin.jsp.jsp">Admin Login</a>
        </li>
       <li class="nav-item">
          <a class="nav-link" href="UserLogin.jsp">User Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="ContactUs.jsp">Contact Us</a>
        </li>
      </ul>
      <hr class="d-sm-none">
    </div>
      <div class="col-sm-11">
     
<div class="loginBox">


<h2>Admin Login</h2>

 <form class="form-horizontal" action="AdminLoginCheck.jsp">

<div class="form-group">
    <label for="username">Username:</label>
    <input type="text" class="form-control" name="username" id="username" required>
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" name="password" id="password" required>
  </div>
  <div class="form-group form-check">
    <label class="form-check-label">
      <input class="form-check-input" type="checkbox" > Remember me
    </label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  
  <button type="submit" class="btn btn-primary">Reset</button>
<a href="#" onclick="Signup">Forgot Password?</a>
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
<br>
<br>
<br>
<br>
<footer class="container-fluid text-center">
  <p>Recipe Store Copyright</p>  
  <!-- <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form> -->
</footer>
</body>
</html>
