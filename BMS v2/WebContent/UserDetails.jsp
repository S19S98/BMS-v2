<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	body{
	background: lightblue;
	margin: 0px;
	}
	header{
		background: coral;
		margin: 0px;
		color: white;
		text-align: center;
		padding: 1px;
	}
	.nav{
		background: darkblue;
		color: white;
		margin: 0px;
	}
	.nav ul{
		list-style-type: none;
		padding: 18px;
		margin: 0px;
		padding-top: 0px;
	}
	.nav ul li{
		display: inline;
		float: right;
		padding-right: 15px;
	
	}
	.greet{
		text-align: left;
		margin: 10px;
	}
	.options h3{
		margin: 30px 10px;
	}
	.options ol{
		padding: 18px;
		margin-left: 20px;
		padding-top: 0px;
	}
	.options ol li a{
		text-decoration: none;
		color: darkblue;
	}
	footer{
		background: darkblue;
		color: yellow;
		padding: 2px;
		text-align: center;
		position: fixed;
		left: 0;
		bottom: 0;
		width: 100%;
	}
</style>
</head>
<body>
	<% 
		String name = session.getAttribute("name").toString();
	%>
	<header>
		<h1> Book Management System </h1>
	</header>
	<div class="nav">
		<ul>
			<li> About Us </li>
			<li> CONTACT US </li>
			<li> HOME </li>
		</ul>
	</div>
	<div class="greet">
		<h1> Welcome Back <%= name %></h1>
		<p> This is your online platform where you can keep track of the books that you are reading, books that you have read already and also the
		books that you want to read in future. This space was created in order to encourage you to read more and more books and get acquainted with 
		habit of reading books. This organized and visually appealing wardrobe of books will motivate you to get started with a book and quickly 
		transfer it to the read section, you will have a healthy competition with your self. </p>
	</div>
	<div class="options">
		<h3> Select your option <%= name %> </h3>
		<ol>
			<li>
				<a href="ReadingServlet" class="btn btn-primary"> View your current Reading List of Books </a>
			</li>
			<li>
				<a href="ReadServlet" class="btn btn-primary"> View your Read List of Books </a>
			</li>
			<li>
				<a href="ToBeReadServlet" class="btn btn-primary">View Your To Be Read List of Books</a>
			</li>
		</ol>
	</div>
	<footer style="margin-top: 40%">
		Copyright &copy; VISION 2020
	</footer>
</body>
</html>