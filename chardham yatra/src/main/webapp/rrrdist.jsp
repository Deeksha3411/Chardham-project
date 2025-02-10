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
        String distid=request.getParameter("n3");
        String distname=request.getParameter("n4");
        String stateid=request.getParameter("n5");

    	
       	String query="update district set stateid="+stateid+", distname='"+distname+"' where distid="+distid;
		out.println(query);
       	
	
		try
		{ 
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chardham","root","12345");  
			Statement st=con.createStatement();
			st.executeUpdate(query);
			out.println("Update Successfull");
		}
		catch(Exception e){}
		
		response.sendRedirect("district_ma.jsp");

 %> 

</body>
</html>