<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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

.pp
{
	height:600px;
	width:70%;
	background-color:WHITE;
	float:left;
	
}


table{
	margin:auto;
	width:30%;
	height:300px;
	margin-left:30%;
	
}


td{
	width:20%;
	padding:5px;
	font-size:15px;
    font-weight:bold;
}

tr{
height:10px;

}

input[type=text]
{
	padding:5px;
	width:90%;
	border-radius:0px;
	background:linear-gradient(to bottom, #ccffcc 0%, #ccffcc 100%);
	
}

input[type=submit]:hover
{	
	background:linear-gradient(to bottom, #ccffcc 0%, #ccffcc 100%);
}

input[type=submit]
{	
	background-color:lightgreen;
	width:85%;
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

select
{

    padding:5px;
	width:90%;
	border-radius:0px;
	background:white;
}




</style>
<body>

<%@ include file="sidebar1.jsp" %> 

<form action="logicdist.jsp"> 

<div class="pp">
<table>
<tr>
<td COLSPAN=2 style="text-align:center"> DISTRICT MASTER</td>
</tr>

<TR>
<TD>DISTRICT</TD>
<TD>
	<input type="text" name="n4" placeholder="Enter District "/> 
</TD>
</TR>

<TR>
<TD>STATE  </TD>
<TD>



<select name="n5">
<%
String query="select * from state";


try{ 
	Class.forName("com.mysql.cj.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chardham","root","12345");  
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(query);
	while(rs.next())
	{
		out.println("<option value="+rs.getString("stateid")+">"+rs.getString("statename")+"</option>");
	}
}catch(Exception e){}

%> 

</select></TD>
</TR>
<tr>
	<td><input type="submit" value=" Login "/></td>
	<td><input type="submit" value=" Cancel "/></td>
</tr>

</table>
</div>

</form>

<% 

	query="select * from district";
    //out.println(query);
    
	out.println("<br> <br><table border=1 cellpadding=10 cellspacing=0><tr><th> statename </th> <th> edit/delete</th>");
	try
	{ 
		Class.forName("com.mysql.cj.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chardham","root","12345");  
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(query);
		while(rs.next())
		{
			out.print("<tr><td>"+rs.getString("distname")+"</td>");
			%>
			<td> 
				<a href="roughdist.jsp?val=<%=rs.getString("distid")%>" style="width:30%;"> Edit </a>
				<a href="distdele.jsp?val=<%=rs.getString("distid")%>" style="width:30%;"> Delete </a>
			</td>
		</tr>
		<% 
		}		
	}
	catch(Exception e){}
	
	out.println("</table>");
	%>

</body>
</html>