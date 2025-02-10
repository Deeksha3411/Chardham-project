<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.*" %>
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

<form action="sssedit.jsp"> 
<br>
<br>
<div class="bb">
<% 
 String stateid=request.getParameter("val");


String query="select * from state where stateid="+stateid;
  out.println(query);	
		try
		{  
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chardham","root","12345");  
			System.out.print("Connection Established ");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(query);
			while(rs.next())
			{
%>
<table>

<tr>
<td  colspan=2 style="text-align:center"> STATE MASTER</td>
</tr>

<TR>
<TD>STATE</TD>
<TD>

<input type="text"  placeholder="" value=<%= rs.getString("statename") %> name="n1"/></TD>
</TR>

<tr>

<TD></TD>
<td>
 <input type="hidden" value=<%= rs.getString("stateid") %> name="n2"/>
</tr>

<tr>

<td><input type="submit" value=" Login "/></td>
<td><input type="reset" value=" Cancel "/></td>

</tr>



</table>
</div>

<%
	}
			
			con.close(); 
		}catch(Exception e){ out.println(e);} 
		
		
 %> 
</form>


</body>
</html>