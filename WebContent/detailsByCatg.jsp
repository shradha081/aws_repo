<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.minds.Dao.databaseconDao"%>
<%@page import="com.minds.bean.User"%>
<%@page import="com.minds.bean.RecipeDetails"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<jsp:useBean id="u" class="com.minds.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u" />
<html lang="en">
<head>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	String email = (String) session.getAttribute("user");
%>

<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
   body {
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    background-image: url(images/tablesetting0.jpg); background-size: cover; height: 30%;">
 
}
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
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
        <li><a href="Home.jsp">Home</a></li>
        <li class="active"><a href="AddRecipe.jsp">Add Recipe</a></li>
        <!-- <li><a href="RecipeDetails.jsp">User</a></li> -->
        <li><a href="UserLogout.jsp">Logout</a></li>
       
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>


 <script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable();
	});
</script>


</head>
<body>


	<div class="container">
 
<%--  <%@page import="com.wix.Dao.wixUserDao,com.wix.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 --%>


<center><a href="Home.jsp">| Enter Site |</a>
<a href="AddRecipe.jsp">Add New Recipe | </a></center>


<center><h1>All Recipe Details</h1></center>

	 
 <table class="table table-dark table-hover">
   
     

	

		<thead>
			<tr>
			<th>Id</th>
	 <th>Category</th>
	 <th>Name</th>
	 <th>Ingredients</th>
	 <th>Procedure</th>
	 <th>Rating</th>
 
			</tr>
		</thead>
		<tbody>

			<%
				try {
					String user = (String) session.getAttribute("user");
					String catg= request.getParameter("category");
					
					databaseconDao db = new databaseconDao();
					Connection con = db.getConnection();
					Statement st = con.createStatement();
					ResultSet rs;
					String sql = "select * from recipedetails where category='"+catg+"'";
					rs = st.executeQuery(sql);
					while (rs.next()) {
			%>

			<tr>

				<td data-order="<%=rs.getInt(1)%>"><%=rs.getInt(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td> 
				
				
				 <td>
			<a href='Rating.jsp?id=<%=rs.getInt(1)%>'>Rating</a>

<!-- <script>
function myFunction() {
  alert("Approved Success!");
}
</script> -->
</td> 
				<%-- <td><a href='UserTweets.jsp?id=<%=rs.getString(1)%>'>Add Rating</a></td>  --%>
				<!-- create dropdown -->
			<%-- 	<td><a href='PieChart.jsp?id=<%=rs.getInt(1)%>'>Mental Health</a></td>--%>
 
			</tr>

			<%
				}
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</tbody>
	</table>
	
	
	 
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
