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


  String distname=request.getParameter("n4");
  String stateid=request.getParameter("n5");
  
  out.println("distname :"+distname);
  out.println("stateid :"+stateid);
  
  
  String query="insert into district(distname,stateid) values('"+distname+"',"+stateid+")";
	out.println(query);
				
	try
	{  
		Class.forName("com.mysql.cj.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chardham","root","12345");  
		//System.out.print("Connection Established ");
		Statement st=con.createStatement();
		st.executeUpdate(query);
		con.close(); 
	}catch(Exception e1){ out.println(e1);}
				
	out.println("Account Created Successfully");
  

%>



</body>
</html>