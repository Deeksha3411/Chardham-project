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

.box
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
	background:white:
	
}

input[type=date]
{
	padding:5px;
	width:90%;
	border-radius:0px;
	background:white:	
}

input[type=submit]:hover
{	
	background:linear-gradient(to bottom, #ccffcc 0%, #ccffcc 100%);
}

input[type=submit]
{	
	background-color:lightgreen;
	width:84%;
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

textarea
{
	width:87%;
	height:40%;
	padding:10px;
	background-color:white;	
}


input[type=number]
{
	padding:5px;
	width:90%;
	border-radius:0px;
	background:white;
}

select
{
    padding:5px;
	width:95%;
	border-radius:0px;
	background:white;
}


</style>
<body>

<%@ include file="sidebar1.jsp" %>

<form action="logicedittour.jsp"> 

<table>

<tr>
<td colspan=2 style="text-align:center;"> CREATE NEW ACCOUNT   </td>
</tr>

<% 
String tid=request.getParameter("val");
String query="select tourist.tid,name,mob,gender,age,distname,statename,destat,child,adult,ardate,redate,address,usernam from tourist inner join district on tourist.distid=district.distid inner join state on tourist.stateid=state.stateid where tourist.tid="+tid;
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


<td style="width:20%;"> NAME </td>
<TD style="width:30%;"> 
	<input type="text"  placeholder=""  value=<%=rs.getString("name") %> name="n1"/>
	<input type="hidden" value=<%= rs.getString("tid") %> name="xp"/>
</TD>
 
</tr>


<tr>
<td> MOBILE NO </td>
<TD> <input type="text"  placeholder=""  value=<%=rs.getString("mob") %> name="n2"/></TD>
</tr>

<tr>
<td> GENDER </td>
	<TD> 
		<input type="radio" name="h1" value="Male"> Male 
		<input type="radio" name="h1" value="Female"> Female
	</TD>
</tr>

<tr>
<td> AGE </td>
<TD> <input type="number"  placeholder="" value=<%=rs.getString("age") %> name="n3"/></TD>

</tr>

<tr>
	<td> 
	DESTINATION </td>
	<td> 
		<input  type="checkbox" name="p1"  value="Kedarnath"> Kedarnath 
		<input  type="checkbox" name="p1"  value="Badrinath"> Badrinath<br> &nbsp;
		<input  type="checkbox" name="p1"  value="Yamnotri"> Yamnotri &nbsp; &nbsp;
		<input  type="checkbox" name="p1" value="Gangotri"/>Gangotri &nbsp; &nbsp;
	</td>
</tr>

<TR>
 <TD>
  NO OF MEMBERS</TD>
  
  <TD><input style="width:42%;"  type="text"  placeholder="Child"  value=<%=rs.getString("child") %>  name="x4"/>
      <input style="width:42%;" type="text"  placeholder="Adult" value=<%=rs.getString("adult") %> name="x3"/>
  </TD>
  </TR>

<tr>
<td>DATE OF ARRIVAL </td>
<TD> <input type="date"  placeholder=""  value=<%=rs.getString("ardate") %> name="n6"/></TD>

</tr>

<tr>
<td>DATE OF RETURN</td>
<TD> <input type="date"  placeholder="" value=<%=rs.getString("redate") %>  name="n7"/></TD>
</tr>
<tr>

<td>ADDRESS </td>
<td> <textarea name="n8"> <%=rs.getString("address") %>  </textarea></td>
</tr>

<% 
		}		
	}
	catch(Exception e){}
%>


<tr>
<td> STATE </td>
<TD>


<select name="n4"> 
 <%
 query="select * from state";


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
</tr>



<tr>
<td> DISTRICT </td>
<TD>

<select  name="n5"> 
	
<%
 query="select * from district";
try{ 
	Class.forName("com.mysql.cj.jdbc.Driver");  
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/chardham","root","12345");  
	Statement  st =con.createStatement();
	ResultSet rs=st.executeQuery(query);
	while(rs.next())
	{
		out.println("<option value="+rs.getString("distid")+">"+rs.getString("distname")+"</option>");
	}
}catch(Exception e){}

%> 
</SELECT>
</TD>
</tr>













<tr>

<td><input type="submit" value=" Login "/></td>
<td><input type="submit" value=" Cancel "/></td>

</tr>



</table>

</form>





</body>
</html>