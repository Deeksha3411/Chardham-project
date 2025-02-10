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

<%
   String usernam=request.getParameter("n1");
   String paswd=request.getParameter("n2");

	
	
	out.println("usernam : "+usernam);
	out.println("paswd : "+paswd);
	
	
	
		
		
		String query="select * from re_off where usernam='"+usernam+"'and paswd='"+paswd+"'";
		out.println(query);
			
			try
			{  
				Class.forName("com.mysql.cj.jdbc.Driver");  
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chardham","root","12345");  
				System.out.print("Connection Established ");
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery(query);
				if(rs.next())
				{
					session.setAttribute("usernam", usernam);
					response.sendRedirect("sidebar1.jsp");
				}
				else
					out.println("Invalid Credentials ");
				
				con.close(); 
			}catch(Exception e){ out.println(e);}  
				
	
%>
</body>
</html>