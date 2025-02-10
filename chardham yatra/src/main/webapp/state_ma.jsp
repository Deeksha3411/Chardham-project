<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*" %>
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

.bb
{
	height:600px;
	width:70%;
	background-color:WHITE;
	float:left;
}


table{
	margin:auto;
	width:30%;
	height:180px;
	
}


td{
	width:20%;
	padding:5px;
	font-size:13px;
    font-weight:bold;
}

input[type=text]
{
	padding:5px;
	width:90%;
	border-radius:0px;
	background:white;
	font-size:15px;
	font-weight:15px;
	
}

input[type=submit]:hover
{	
	background:linear-gradient(to bottom, #ccffcc 0%, #ccffcc 100%);
}

input[type=submit]
{	
	background-color:lightgreen;
	width:87%;
	background-color:white;
	color:black;
	height:40px;
}

input[type=reset]
{	
	background-color:lightgreen;
	width:80%;
	background-color:white;
	color:black;
	height:40px;
}






</style>
<body>

<%@ include file="sidebar1.jsp" %> 

<form action="logic_state.jsp"> 
<br>
<br>
<div class="bb">

<table>

<tr>
<td  colspan=2 style="text-align:center"> STATE MASTER</td>
</tr>

<TR>
<TD>STATE</TD>
<TD>
 <input type="text"  placeholder="" name="n1"/></TD>
</TR>


<tr>

<td><input type="submit" value=" Login "/></td>
<td><input type="reset" value=" Cancel "/></td>

</tr>



</table>
</div>
</form>

<% 

	String query="select * from state";
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
			out.print("<tr><td>"+rs.getString("statename")+"</td>");
			%>
			<td> 
				<a href="sedit.jsp?val=<%=rs.getString("stateid")%>" style="width:30%;"> Edit </a>
				<a href="ssdelete.jsp?val=<%=rs.getString("stateid")%>" style="width:30%;"> Delete </a>
			</td>
		</tr>
		<% 
		}		
	}
	catch(Exception e)
	{
					
	}
			
	out.println("</table>");

	%>
</body>
</html>