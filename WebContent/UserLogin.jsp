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
/* Remove the navbar's default rounded borders and increase the bottom margin */
.navbar {
	margin-bottom: 50px;
	border-radius: 0;
}

.fakeimg {
	height: 200px;
	/* background: #aaa; */
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
	<div class="jumbotron jumbotron-fluid"
		style="text-align: center; background-image: url(images/main2.jpg); background-size: cover; height: 20%;">
		<div class="container">
			<h1>
				<b></b>
			</h1>

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
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Recipe Management System</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="Home.jsp">Home</a></li>
					<li><a href="AdminLogin.jsp">Admin</a></li>
					<li class="active"><a href="#">User</a></li>
					<li><a href="ContactUs.jsp">Contact Us</a></li>

				</ul>

			</div>
		</div>
	</nav>


	<div class="container" style="margin-top: 30px">
		<div class="row">


			<div class="col-sm-4">
				<h1>Categories</h1>
				<hr>
				<ul class="nav nav-pills flex-column">
					<li class="nav-item"><img src="images/category1.jpg"
						class="w3-round w3-image w3-opacity-min" alt="" width="270"
						height="450"></li>
				</ul>

			</div>

			<div class="col-sm-7">
				<h1>User Login</h1>
				<div class="loginBox">
					<form action="UserLoginCheck.jsp">

						<div class="form-group">
							<label for="email">Email address:</label> <input type="text"
								class="form-control" name="email" id="email"
								placeholder="Enter Email" required>
						</div>
						<div class="form-group">
							<label for="pwd">Password:</label> <input type="password"
								class="form-control" name="password" id="pwd"
								placeholder="Enter Password" required>
						</div>

						<div class="form-group form-check">
							<label class="form-check-label"> <input
								class="form-check-input" type="checkbox"> Remember me
							</label>
						</div>

						<button type="submit" class="btn btn-danger">Submit</button>
						<button type="reset" class="btn btn-danger">Reset</button>

						<a href="Registration.jsp" onclick="Signup">Register</a>
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
	<br>

	<footer class="container-fluid text-center">
		<p>Online Store Copyright</p>
	</footer>

</body>
</html>
