<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
*{
	padding:0;
	margin:0;
} 

.sidebar
{
	height:700px;
	width:260px;
	background:linear-gradient(to bottom, #ccffff 0%, #ffffff 100%);
	float:left;
	
}

a{
	display:inline-block;
	width:94%;
	text-align:left;
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

<div class="sidebar">
	<a> Hello, <%= session.getAttribute("usernam") %> </a><br>
   	<a href="tourist_regi.jsp ">Tourist Registration </a><br>
	<a href="office_reg.jsp">Office Registration </a><br>
	<a href="district_ma.jsp">District Enquiry </a><br>
	<a href="state_ma.jsp">State Enquiry</a>
	<a href="report.jsp">Report</a>
</div>












</body>
</html>