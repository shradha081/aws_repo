<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<%@page import="com.minds.bean.RecipeDetails"%>
<%@page import="com.minds.Dao.databaseconDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


    


 <jsp:useBean id="u" class="com.minds.bean.RecipeDetails"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
 
 
        	<% 
        			String category=request.getParameter("category");
        	       /*  String sem=request.getParameter("sem");
	        
        	        int s= Integer.parseInt(sem); */
        	        /* session.setAttribute("category", category); */
        	        /* session.setAttribute("sem", sem); */
        	        
        	%>	
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
    background: #aaa;
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
        <li ><a href="#">Home</a></li>
        <li class="active"><a href="Category.jsp">Search</a></li>
        <li><a href="AddRecipe.jsp">Add Recipe</a></li>
        <li><a href="UserLogin.jsp">Logout</a></li>
       
      </ul>
      
    </div>
  </div>
</nav>
	
	
<form action="detailsByCatg.jsp" method="post">
<center>
<table>
<h1>Choose Category</h1>
<tr><td>Category:</td><td>
<select name="category">
<option>Veg</option>
<option>NonVeg</option>

</select>
</td></tr>




</td></tr>
<tr>
<td colspan="2" align="center">
<br>
<button type="submit" class="btn btn-danger">Submit</button>
</td></tr>
</table>

</form>
</center>
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
<footer class="container-fluid text-center">
  <p>Online Store Copyright</p>  
  <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>

</body>
</html>
