<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Log in or Sign up</title>
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="/css/login.css">
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Icons -->
    <script src="https://use.fontawesome.com/b4a0ba9277.js"></script>
</head>
<body>
	<h1 class="header"><a href="/">CLΛN<i class="fa fa-gamepad" aria-hidden="true"></i></a></h1>
	<div id="container">
		<!-- <h1 class="header"><a href="/">CLΛN<i class="fa fa-gamepad" aria-hidden="true"></i></a></h1> -->
		<input type="checkbox" id="chk" aria-hidden="true">
		<div class="signup">
			<form:form action="/register" method="post" modelAttribute="newUser">
				<label for="chk" aria-hidden="true"><h2>Sign Up</h2></label>
		        <div class="form-group">
		            <label>User Name:</label>
		            <form:input path="userName" class="form-control" placeholder="Enter a username"/>
		            <form:errors path="userName" style="color: red;" class="text-danger" />
		        </div>
		        <div class="form-group">
		            <label>Email:</label>
		            <form:input path="email" class="form-control" placeholder="Enter your email"/>
		            <form:errors path="email" style="color: red;" class="text-danger" />
		        </div>
		        <div class="form-group">
		            <label>Password:</label>
		            <form:password path="password" class="form-control" placeholder="Enter a password"/>
		            <form:errors path="password" style="color: red;" class="text-danger" />
		        </div>
		        <div class="form-group">
		            <label>Confirm Password:</label>
		            <form:password path="confirm" class="form-control" placeholder="Re-enter your password"/>
		            <form:errors path="confirm" style="color: red;" class="text-danger" />
		        </div>
		        <input type="submit" value="Register" class="btn btn-primary" />
	    	</form:form>
		</div>
	
		<div class="login">
			<form:form action="/login" method="post" modelAttribute="newLogin">
				<label for="chk" aria-hidden="true"><h2>Log In</h2></label>
		        <div class="form-group">
		            <label>Email:</label>
		            <form:input path="email" class="form-control" />
		            <form:errors path="email" style="color: red;" class="text-danger" />
		        </div>
		        <div class="form-group">
		            <label>Password:</label>
		            <form:password path="password" class="form-control" />
		            <form:errors path="password" style="color: red;" class="text-danger" />
		        </div>
		        <input type="submit" value="Login" class="btn btn-dark" />
		    </form:form>
		</div>
	</div>
	
	 <footer>
            <p class="footer-copyright">&copy; CLAN CO. ALL RIGHTS RESERVED<br>Lorem ipsum dolor sit amet consectetur adipisicing elit. </p>
                <ul class="footer-links">
                    <li><a href="#">ABOUT</a></li>
                    <p class="triangle">&#9653;</p>
                    <li><a href="#">SUPPORT</a></li>
                    <p class="circle">&#9711;</p>
                    <li><a href="#">PRIVACY POLICY</a></li>
                    <p class="x">&#x2715;</p>
                    <li><a href="#contact-section">CONTACT US</a></li>
                    <p class="square">&#9634;</p>
                </ul> 
        </footer>
</body>
</html>