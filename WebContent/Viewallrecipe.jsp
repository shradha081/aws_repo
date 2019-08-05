<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.minds.Dao.databaseconDao"%>
<%@page import="com.minds.bean.User"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<jsp:useBean id="v" class="com.minds.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="v" />
<html lang="en">

<head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	String email = (String) session.getAttribute("user");
%>

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

<div class="jumbotron jumbotron-fluid" style="text-align:center; background-image: url(images/main2.jpg); background-size: cover; height: 20%;">
  <div class="container">
    <h1></h1>      
   
  </div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable();
	});
</script>

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
        <li class="active"><a href="Home.jsp">Home</a></li>
        <li><a href="Viewallrecipe.jsp">View All Recipe</a></li>
        <li><a href="AdminLogin.jsp">Logout</a></li>
        </ul>
 <!--      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul> -->
    </div>
  </div>
</nav>
<%-- <div class="container text-center">
      
    
  </div>
<center><a href="Home.jsp">| Enter Site |</a>
<a href="AddRecipe.jsp">Add New Recipe |</a></center>


<center><i><h1>View All Recipe Details</h1></i></center>

	 
 <table class="table table-dark table-hover">
	<!-- <table id="example" class="display" style="width: 100%">
 -->
		<thead>
			<tr>
			    <th>ID</th>
			    <th>CATEGORY</th>
				<th>NAME</th>
				<th>INGREDIENT</th>
				<th>PROCEDURE</th>
				<th>APPROVAL</th>
				

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
					String sql = "select * from viewsrecipe";
					rs = st.executeQuery(sql);
					while (rs.next()) {
			%>

			<tr>

				<td data-order="<%=rs.getString(1)%>"><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td data-filter="<%=rs.getString(6)%>"><%=rs.getString(6)%></td>
				<td data-filter="<%=rs.getString(7)%>"><%=rs.getString(7)%></td>
				<td><a href='UserTweets.jsp?id=<%=rs.getInt(1)%>'>Add Recipe</a></td> <!-- create dropdown -->
				<td><a href='PieChart.jsp?id=<%=rs.getInt(1)%>'>Mental Health</a></td>
 
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
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="footer"style="margin-bottom: 0">
 <BR>
 <p>Footer</p>
</div>
	
	
</body>
</html>
  <tr>
                <td data-order="<%=rs.getString(1)%>"><%=rs.getString(1)%></td>
                 <td><%=rs.getString(2)%></td>
                  <td><%=rs.getString(3)%></td>
                   <td ><%=rs.getString(4)%></td>
                    <td data-filter="<%=rs.getString(5)%>"><%=rs.getString(5)%></td>
                     <td data-search="<%=rs.getString(6)%>"><%=rs.getString(6)%></td>
                      <td data-search="<%=rs.getString(7)%>"><%=rs.getString(7)%></td>
                       <td><a href='approval.jsp?id=<%=rs.getInt(8)%>'>Update</a></td> 
                     <td data-order="<%=rs.getString(9)%>"><%=rs.getString(9)%></td> 
                    <td data-order="<%=rs.getString(10)%>"><%=rs.getString(10)%></td>  
                <td data-order="<%=rs.getString(11)%>"><%=rs.getString(11)%></td>
           
                 <td><a href='subjectmappingedit.jsp?id=<%=rs.getInt(1)%>'>Update</a></td>
               
            </tr>
            <% 
        }
    		con.close();
    	}catch(Exception ex){System.out.println(ex);}
        %>
        </tbody>
     
       <tfoot>
</tfoot>  
    </table> --%>
   

<div class="container">
 
<%--  <%@page import="com.wix.Dao.wixUserDao,com.wix.bean.,java.util."%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 --%>


<center><a href="Home.jsp">| Enter Site |</a>
<a href="AddRecipe.jsp">Add New Recipe | </a></center>


<center><h1>All Recipe Details</h1></center>

	 
 <table class="table table-dark table-hover">
   
     

	

		<thead>
			<tr>
	<th>ID</th>		
	 <th>Category</th>
	 <th>Name</th>
	 <th>Ingredients</th>
	 <th>Procedure</th>
	 <th>Approval</th>

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
					String sql = "select * from recipedetails";
					rs = st.executeQuery(sql);
					while (rs.next()) {
			%>

			<tr>

				<td> <%=rs.getInt(1)%></td>
				<td data-order="<%=rs.getString(2)%>"><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<%-- <td><%=rs.getString(6)%></td>  --%>
				
				<%-- <td><a href='UserTweets.jsp?id=<%=rs.getString(1)%>'>Add Rating</a></td>  --%>
				<!-- create dropdown -->
			<%-- 	<td><a href='PieChart.jsp?id=<%=rs.getInt(1)%>'>Mental Health</a></td>--%>
 <td>
<a onclick="myFunction()">Approve</a>

<script>
function myFunction() {
  alert("Approved Success!");
}
</script></td>
 
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

    
<script type="text/javascript" language="javascript"  src="js/jquery-1.12.4.js"></script>
  <script src="js/bootstrap.min.js"></script>

	<script type="text/javascript" language="javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" language="javascript" src="js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" language="javascript" src="js/buttons.flash.min.js"></script>
	<script type="text/javascript" language="javascript" src="js/jszip.min.js"></script>
	<script type="text/javascript" language="javascript" src="js/pdfmake.min.js"></script>
	<script type="text/javascript" language="javascript" src="js/vfs_fonts.js"></script>
	<script type="text/javascript" language="javascript" src="js/buttons.html5.min.js"></script>
	<script type="text/javascript" language="javascript" src="js/buttons.print.min.js"></script>

<script type="text/javascript">

$(document).ready(function() {
	
	console.log("now setting table");
    $('#example').DataTable( {
        dom: 'Bfrtip',
        "order": [],
        lengthMenu:[[-1 ],['Show all']],
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    } );
} );
</script>
   </body>
</html>