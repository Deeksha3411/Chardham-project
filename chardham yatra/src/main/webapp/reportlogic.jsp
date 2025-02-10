<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style> 
h2{
	text-align:center;
}
</style>
</head>
<body>

<%@ include file="sidebar1.jsp" %> 

<%

	String ch=request.getParameter("h1");
	String query="";
	
	if(ch.equals("DATE WISE"))
	{
		String adt=request.getParameter("n6");
		String ddt=request.getParameter("n7");
		out.println("<h2>List Tourist Came from "+adt+" to "+ddt+"</h2>");
		query="select tourist.tid,name,child,adult,ardate,redate,state.statename,district.distname from tourist inner join district on district.distid=tourist.distid inner join state on state.stateid=tourist.stateid where ardate between '"+adt+"' and '"+ddt+"'";
	}
	if(ch.equals("STATE NAME"))
	{
		String stid=request.getParameter("n1");
		out.println("<h2>List of Tourist Came from Selected State </h2>");
		
		query="select tourist.tid,name,child,adult,ardate,redate,state.statename,district.distname from tourist inner join district on district.distid=tourist.distid inner join state on state.stateid=tourist.stateid where state.stateid="+stid;
	}
	if(ch.equals("STATE WISE TOURIST"))
	{
		out.println("<h2>State Wise List of Tourist Came from Across India  </h2> ");
		query="select tourist.tid,name,child,adult,ardate,redate,state.statename,district.distname from tourist inner join district on district.distid=tourist.distid inner join state on state.stateid=tourist.stateid order by state.stateid";
	}
	
	
	

	out.println("<br> <br> <br> <center><table border=1 cellpadding=10 cellspacing=0><tr> <th>tid </th><th>name</th> <th> distid</th> <th>stateid</th> <th>child</th> <th>adult</th> <th>ardate</th> <th>redate</th> </center>" );
	try
	{ 
		Class.forName("com.mysql.cj.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chardham","root","12345");  
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(query);
		while(rs.next())
		{
			out.print("<tr><td>"+rs.getString("tid")+"</td>");
			out.print("<td>"+rs.getString("name")+"</td>");
			out.print("<td>"+rs.getString("distname")+"</td>");
			out.print("<td>"+rs.getString("statename")+"</td>");
			out.print("<td>"+rs.getString("child")+"</td>");
			out.print("<td>"+rs.getString("adult")+"</td>");
			out.print("<td>"+rs.getString("ardate")+"</td>");
			out.print("<td>"+rs.getString("redate")+"</td>");
		}		
	}
	catch(Exception e){}
	
	out.println("</table>");
	%>









</body>
</html>