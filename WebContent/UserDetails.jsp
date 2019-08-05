<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.minds.Dao.databaseconDao"%>
<%@page import="com.minds.bean.User"%>
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



<title>RMS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>





</head>




<title>RMS Templete</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<style>

body {
	font-family: "Times New Roman", Georgia, Serif;
}

h1, h2, h3, h4, h5, h6 {
	font-family: "Playfair Display";
	letter-spacing: 5px; . w3-image { max-width : 100%;
	height: auto;
}

}
.w3-light-grey, .w3-hover-light-grey:hover, .w3-light-gray,
	.w3-hover-light-gray:hover {
	color: white;
	background-color: #000000;
}


.w3-white, .w3-hover-white:hover {
    color: #000!important;
    background-color: orange!important;
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
.btn-primary {
    color: #fff;
    background-color: #8bc34a;
    border-color: #8bc34a;
}
</style>


<body>



	<!-- Navbar (sit on top) -->
	<div class="w3-top">


		<div class="w3-bar w3-white w3-padding w3-card"
			style="letter-spacing: 4px;">
			
			<a href="Home.jsp" class="w3-bar-item w3-button"><span
				class="w3-tag w3-light-pink"><font size="5">Recipe Management System</font></span></a>
			<ul class="nav navbar-nav navbar-left"
				id="comp-igjgciqbitemsContainer" class="lb1itemsContainer">
				
				<li><a href="https://www.facebook.com/"><img id="comp-igjgciqb0imageimageimage" alt="" data-type="image"
								src="https://static.wixstatic.com/media/0fdef751204647a3bbd7eaa2827ed4f9.png/v1/fill/w_20,h_20,al_c,q_80,usm_0.66_1.00_0.01/0fdef751204647a3bbd7eaa2827ed4f9.webp"
								style="width: 20px; height: 20px; object-fit: cover;"></a></li>
				
				<li><a href="https://twitter.com/"><img id="comp-igjgciqb1imageimageimage" alt="" data-type="image"
								src="https://static.wixstatic.com/media/c7d035ba85f6486680c2facedecdcf4d.png/v1/fill/w_20,h_20,al_c,q_80,usm_0.66_1.00_0.01/c7d035ba85f6486680c2facedecdcf4d.webp"
								style="width: 20px; height: 20px; object-fit: cover;"></a></li>
				
				<li><a href="https://www.instagram.com/">
				<img id="comp-igjgciqb2imageimageimage"
								alt="Black Instagram Icon" data-type="image"
								src="https://static.wixstatic.com/media/01c3aff52f2a4dffa526d7a9843d46ea.png/v1/fill/w_20,h_20,al_c,q_80,usm_0.66_1.00_0.01/01c3aff52f2a4dffa526d7a9843d46ea.webp"
								style="width: 20px; height: 20px; object-fit: cover;">
								</a></li>
				
				
			
			</ul>




			<!-- Right-sided navbar links. Hide them on small screens -->
			<div class="w3-right w3-hide-small">



				<!-- <a href="#about" class="w3-bar-item w3-button">About</a> -->
				 <a
					href="Signup.html" class="w3-bar-item w3-button">Home</a> 
					 <a
					href="Signup.html" class="w3-bar-item w3-button">Admin</a>
					 <a
					href="Signup.html" class="w3-bar-item w3-button">User</a>
				 <a
					href="#menu" class="w3-bar-item w3-button">Portfolio</a>
					
					 <a
					href="#Contact" class="w3-bar-item w3-button">Contact Us</a> 
					
					
				<!-- 	<a
					href="Signup.html" class="w3-bar-item w3-button">SignUp</a>  <a
					href="ClientShowcase.jsp" class="w3-bar-item w3-button">Client
					Showcase</a> <a href="BookOnline.jsp" class="w3-bar-item w3-button">Book
					Online</a> -->


			</div>
		</div>
	</div>
	
	
	
	<hr>
	<br><br>

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


<br>
<br>

<a href="Home.jsp">| Enter Site |</a>
<a href="AddRecipe.jsp">Add New Recipe |</a>


<h1>Add Recipe Details</h1>

	 
 <table class="table table-dark table-hover">
   
    


	

		<thead>
			<tr>
				<th>User Id</th>
				<th>User Name</th>
				<th>Password</th>
				<th>Email ID</th>
				<th>DOB</th>
				<th>Address</th>
				<th>Mobileno</th>
				<th>Add Recipe</th>

			</tr>
		</thead>
		<tbody>

			<%
				try {
					String user = (String) session.getAttribute("user");
					databaseconDao db = new databaseconDao();
					Connection con = db.getConnection();
					Statement st = con.createStatement();
					ResultSet rs;
					String sql = "select * from user";
					rs = st.executeQuery(sql);
					while (rs.next()) {
			%>

			<tr>

				<td data-order="<%=rs.getInt(1)%>"><%=rs.getInt(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td data-filter="<%=rs.getString(6)%>"><%=rs.getString(6)%></td>
				<td data-filter="<%=rs.getString(7)%>"><%=rs.getString(7)%></td>
				<td><a href='UserTweets.jsp?id=<%=rs.getInt(1)%>'>Add Recipe</a></td> <!-- create dropdown -->
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
	<!-- </div></div></div> -->

	<script type="text/javascript" language="javascript"
		src="js/jquery-1.12.4.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<script type="text/javascript" language="javascript"
		src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/buttons.flash.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/jszip.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/pdfmake.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/vfs_fonts.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/buttons.html5.min.js"></script>
	<script type="text/javascript" language="javascript"
		src="js/buttons.print.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#example').DataTable({
				dom : 'Bfrtip',
				"order" : [],
				buttons : [ 'copy', 'csv', 'excel', 'pdf', 'print' ]
			});
		});
	</script>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="footer"style="margin-bottom: 0">
 
 <p>Footer</p>
</div>
	
	
</body>
</html>
