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
        String distid=request.getParameter("n2");
        String ofc_name=request.getParameter("n1");
        String address=request.getParameter("n2");
        String usernam=request.getParameter("n3");
        String paswd=request.getParameter("n5");

    	
       	String query="update re_off set ofc_name='"+ofc_name+"',address='"+address+"',paswd='"+paswd+"' where usernam='"+usernam+"'";
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
		
		response.sendRedirect("office_reg.jsp");

 %> 


</body>
</html>