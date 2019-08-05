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
 
 

	<% String id = request.getParameter("id");
	System.out.println("ID :" + id);%>
	<!-- int i = Integer.parseInt(id);
	System.out.println("I :" + i);
	RecipeDetails bean = databaseconDao.getRecordById(i);
 -->
        	
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
   /*  background-image: url(images/tablesetting0.jpg); background-size: cover; height: 30%;"> */
 
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
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Admin</a></li>
        <li><a href="#">User</a></li>
        <li><a href="#">Contact Us</a></li>
       
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>

 <!-- <div class="col-sm-9"> -->
	<div class="container">
		<center><h1>Recipe Details</h1></center>

<!-- <form action="AddRecipeCheck.jsp">  -->
 <%
        try
        {
        
        	String user = (String) session.getAttribute("user");
			/* String catg= request.getParameter("category"); */
			
			databaseconDao db = new databaseconDao();
			Connection con = db.getConnection();
			Statement st = con.createStatement();
			ResultSet rs;
			/* String sql = "select * from recipedetails where category='"+catg+"'"; */
			String sql = "select * from recipedetails where id='"+id+"'";
			rs = st.executeQuery(sql);
			while (rs.next()) {
        	
        %> 
<div class="form-group">
    <label for="id"></label>
    
    <input type="hidden" class="form-control" name= "id" id="id" value="<%=rs.getInt(1)%>">
  </div>
  <div class="form-group">
    <label for="name">Category:</label>
    
    <input type="text" class="form-control" name= "category" id="category" value="<%=rs.getString(2)%>">
  </div>
<div class="form-group">
    <label for="name">Name:</label>
    
    <input type="text" class="form-control" name= "name" id="name" value="<%=rs.getString(3)%>">
  </div>
  <div class="form-group">
    <label for="ingredients">Ingredients:</label>
    <input type="text" class="form-control" name= "ingredients" id="ingedients" value="<%=rs.getString(4)%>"> 
  </div>
  <div class="form-group">
    <label for="procedure">Procedure:</label>
    <input type="text" class="form-control" name= "procedure" id="procedure" value="<%=rs.getString(5)%>">
  </div>
  <div class="form-group">
    <label for="procedure">Rating:</label>
    
  
   <select class="form-control" name="rating">
      	<option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
     
		 		
	  </select>
      </div>
	   
			
	 <% 
        }
    		con.close();
    	}catch(Exception ex){System.out.println(ex);}
        %> 
    
    </div>
 
 
		
		
		
		<center><button onclick="myFunction()">Print this page</button></center>
		
	

<script>
function myFunction() {
  window.print();
}
</script>
		
	</div>










<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br><br>
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