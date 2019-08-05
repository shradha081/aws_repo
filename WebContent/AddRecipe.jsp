<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>

.navbar {
	margin-bottom: 50px;
	border-radius: 0;
}

body {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 14px;
	line-height: 1.42857143;
	color: #333;
	background-image: url(images/tablesetting0.jpg);
	background-size: cover;
	height: 30%;
	">
}

.fakeimg {
	height: 200px;
}

/* Remove the jumbotron's default bottom margin */
.jumbotron {
	margin-bottom: 0;
	background-color: #ffc107;
}


footer {
	background-color: #ffc107;
	padding: 25px;
}
</style>
</head>
<body>
	<div class="jumbotron jumbotron-fluid"
		style="text-align: center; background-image: url(images/main2.jpg); background-size: cover; height: 20%;">
		<div class="container">
			<h1>
				<b></b>
			</h1>

		</div>
	</div>
	
	<br>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Recipe Management System</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="#">Home</a></li>
					<li><a href="Category.jsp">Search</a></li>
					<li class="active"><a href="AddRecipe.jsp">Add Recipe</a></li>
					<li><a href="UserLogin.jsp">Logout</a></li>

				</ul>
				<ul class="nav navbar-nav navbar-right">
					<!-- <li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li> -->
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<!--  style="margin-top:30px" -->
		<div class="row">

			<div class="col-sm-3">
				<h1>Recipeis</h1>
				<hr>
				<ul class="nav nav-pills flex-column">
					<li class="nav-item"><img src="images/unsplash1.jpg"
						class="w3-round w3-image w3-opacity-min" alt="" width="270"
						height="450"></li>
				</ul>

			</div>
			<div class="col-sm-9">
				<h1>| Add Recipe Details |</h1>
				<hr>
				<div class="loginBox">


					<form action="AddRecipeCheck.jsp">
						<div class="form-group">
							<label class="control-label col-sm-4" for="category">
								Cagetory:</label> <select class="form-control" name="category">
								<option value="veg">veg</option>
								<option value="nonveg">non-veg</option>

							</select>

						</div>
						<div class="form-group">
							<label for="pwd">Name:</label> <input type="text"
								class="form-control" name="name" id="name"
								placeholder="Enter Name" required>
						</div>
						<div class="form-group">
							<label for="pwd">Ingredients:</label> <input type="text"
								class="form-control" name="ingredients" id="ingredients"
								placeholder="Add Ingredients" required>
						</div>
						<div class="form-group">
							<label for="pwd">Procedure:</label> <input type="text"
								class="form-control" name="procedure" id="procedure"
								placeholder="Add Procedure" required>
						</div>
						

						<button type="submit" class="btn btn-danger">Submit</button>
						<button type="reset" class="btn btn-danger">Reset</button>

						<a href="UserLogin.jsp" onclick="Signup">Login</a>
					</form>
				</div>

			</div>
		</div>
	</div>


	<!-- </form>

</table> -->
	<br>
	<br>
	<br>
	<footer class="container-fluid text-center">
		<p>Online Store Copyright</p>
		
	</footer>

</body>
</html>