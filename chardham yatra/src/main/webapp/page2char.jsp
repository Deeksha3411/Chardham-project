<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>

<style>
*{
	padding:0;
	margin:0;
} 

.sidebarp
{
	height:700px;
	width:260px;
	background:linear-gradient(to bottom, #ccffff 0%, #ffffff 100%);
	float:left;
	
}

a{
	display:inline-block;
	width:94%;
	text-align:CENTER;
	text-decoration:none;
	color:black;
	padding:8px;
	font-weight:bold;
}

a:hover
{
	background:linear-gradient(to top left, #ccccff 49%, #993333 100%);
	padding:8px;
}


</style>

<body>
<%@ include file="home.jsp" %> 
<div class="sidebarp">
   	<a href="loginchar.jsp">LOGIN </a><br>
	<a href="">DISPLAY </a><br>
</div>

</body>
</html>












