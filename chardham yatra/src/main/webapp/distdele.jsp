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
String distid=request.getParameter("val");

String query="delete from district where distid="+distid;
out.println(query);	
		try
		{  
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chardham","root","12345");  
			System.out.print("Connection Established ");
			Statement st=con.createStatement();
			st.executeUpdate(query);
			
			
			con.close(); 
		}catch(Exception e){ out.println(e);} 
		
		response.sendRedirect("district_ma.jsp");
	
%>

</body>
</html>