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
        String stateid=request.getParameter("n2");
        String statename=request.getParameter("n1");

    	
       	String query="update state set statename='"+statename+"' where stateid="+stateid;
		out.println(query);
       	
	
		try
		{ 
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chardham","root","12345");  
			Statement st=con.createStatement();
			st.executeUpdate(query);
			out.println("Update Successfull");
		}
		catch(Exception e)
		{
			out.println("successfully ");		
		}
		
		response.sendRedirect("state_ma.jsp");

 %> 

</body>
</html>