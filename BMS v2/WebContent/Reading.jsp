<%@page import="java.util.*" %>
<%@page import="com.swapnil.bean.BookBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reading List</title>
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
		text-align: center;
	}
	.options ul{
		list-style-type: none;
		padding: 18px;
		margin-left: 170px;
		padding-top: 0px;
	}
	.options ul li{
		display: inline;
		float: left;
		padding-right: 20%;
		margin-top: 10px;
	}
	.options ul li a{
		text-decoration: none;
		border: black solid 1px;
		boder-radius: 5px;
		padding: 5px;
		background: blue;
		color: white;
	}
	.tbl{
		text-align: center;
		margin-top: 50px;
		margin-left: 38%;
	}
	table, th, td {
	  border: 1px solid black;
	}
	.operations{
		text-align: center;
		margin-top: 10px;
	}
	.operations a{
		color: white;
		text-decoration: none;
		padding: 2px 12px;
		border-radius: 3px;
		border: solid black 0.5px;
	}
	.add{
		background: green;
	}
	.del{
		background: red;
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
		<h2> These are the List of books that you are currently reading <%= name %></h2>
	</div>
	<div class="tbl">
		<table>
			<%
				List<BookBean> bookList = (List<BookBean>)request.getAttribute("bookList");
				if(bookList != null){
			%>
			<tr>
				<th> Book Name </th>
				<th> Author Name </th>
				<th> Publication </th>
			</tr>
			<%
				Iterator<BookBean> it = bookList.iterator();
				while(it.hasNext()){
					BookBean bean = it.next();
			%>
			<tr>
				<td> <%= bean.getBookName() %> </td>
				<td> <%= bean.getAuthorName() %> </td>
				<td> <%= bean.getPublication() %> </td>
			</tr>
			<%
				}
				}
			%>
		</table>
	</div>
	<div class="operations">
		<a href="add_reading.html" class="add"> Add</a>
		<a href="del_reading.html" class="del"> Delete</a>
	</div>
	<footer style="margin-top: 40%">
		Copyright &copy; VISION 2020
	</footer>
</body>
</html>