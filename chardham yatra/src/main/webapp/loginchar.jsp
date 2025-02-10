<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>

*{
	padding:0;
	margin:0;
} 

.boxb
{
	height:600px;
	width:70%;
	background-color:WHITE;
	float:left;
}


table{
	margin:auto;
	width:30%;
	height:350px;
}


td{
	width:30%;
	padding:10px;
	font-size:15px;
    font-weight:bold;
}

input[type=text]
{
	padding:20px;
	width:90%;
	border-radius:0px;
	background-color:white;
	
}

input[type=submit]:hover
{	
	background:linear-gradient(to bottom, #ccffcc 0%, #ccffcc 100%);
}

input[type=submit]
{	
	background-color:lightgreen;
	width:80%;
	background-color:white;
	color:black;
	height:45px;
}

input[type=reset]
{	
	background-color:lightgreen;
	width:80%;
	background-color:white;
	color:black;
	height:45px;
}





</style>

<body>
 
<div class="boxb">
<%@ include file="page2char.jsp" %>

<form action="logicloginchar.jsp"> 
	<table>
		<tr>
			<td colspan=2> USER NAME</td></tr>
		<tr>
			<td colspan=2> <input type="text"  placeholder="Enter UserName " name="n1"/></td>
		</tr>
		<tr>
			<td colspan=2>PASSWORD</td></tr>
		<tr>
			<td colspan=2> <input type="text"  placeholder="Enter Password " name="n2"/></td>
		</tr>
		<tr>
			<td>
				<input type="submit" value=" Login "/>
			</td>
			<td>
				<input type="reset" value=" Cancel "/>
			</td>
		</tr>
	</table>
</form>
</div>









</body>
</html>

