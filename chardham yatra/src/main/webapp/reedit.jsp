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

.ddd
{
width:100%;
height:400px;
background-color:white;
color:black;
float:left;
}

table
{
MARGIN:AUTO;
width:30%;
}

td
{
width:70;
padding:5px;
font-size:14px;
font-weight:bold;
}

input[type=text]
{
 width:76%;
 padding:6px;
 background-color:white;
}

input[type=SUBMIT]
{
	 width:78%;
	 padding:6px;
	 background-color:white;
}

input[type=submit]:hover
{	
	background:linear-gradient(to bottom, #ccffcc 0%, #ccffcc 100%);
}

textarea
{
	width:74%;
	height:40%;
	padding:10px;
	background-color:white;	
}

select
{
	width:80%;
	height:40%;
	padding:10px;
	color:black;
}

option{
	color:black;
}

</style>
<body>
<%@include file="sidebar1.jsp" %> 
<form action="again_reedit.jsp"> 

<div class="dd">
<table>
<tr>
<td colspan=2 style="text-align:center;"> REGIONAL OFFICE REGISTRATION   </td>
</tr>
<tr>
<td>District</td>
<td>
<select name="n4"> 
	
<%
String query="select * from district";
try{ 
	Class.forName("com.mysql.cj.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chardham","root","12345");  
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(query);
	while(rs.next())
	{
		out.println("<option value="+rs.getString("distid")+">"+rs.getString("distname")+"</option>");
	}
	con.close();
	rs.close();
	st=null;
}catch(Exception e){}

%> 
</select>
</TD>
</tr>
<% 
String uname=request.getParameter("val");
query="select district.distid,distname,ofc_name,address,usernam,paswd from district inner join re_off on district.distid=re_off.distid where usernam='"+uname+"'";
//out.println(query);
try
	{ 
		Class.forName("com.mysql.cj.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chardham","root","12345");  
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(query);
		if(rs.next())
		{
		%>
		
		
<tr>
<td>Office name</td>
<td> <input type="text"  placeholder="" value=<%=rs.getString("distname") %> name="n1"/></TD>
</tr>

<TR>

<TD>Address</TD>
<td> <textarea name="n2"> <%= rs.getString("address") %>  </textarea> </td>
</TR>


<tr>
<td> Username</td>
<td> <input type="text"  placeholder="" value=<%=rs.getString("usernam") %>  name="n3"/></TD>
</tr>

<tr>
<td>Password</td>
<td> <input type="text"  placeholder="" value=<%=rs.getString("paswd") %> name="n5"/></TD>
</tr>

<tr>
<td>Confirm Password </td>
<td> <input type="text"  placeholder=""  name="n6"/></TD>
</tr>

<tr>

<% 
		}		
	}
	catch(Exception e){}
%>


<td><input type="submit" value=" Login "/></td>
<td><input type="submit" value=" Cancel "/></td>

</tr>
</center>
</table>
</div>
</form>



</body>
</html>
