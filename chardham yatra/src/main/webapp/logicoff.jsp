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

String distnam=request.getParameter("n4");
String ofc_name=request.getParameter("n1");
String address=request.getParameter("n2");
String usernam=request.getParameter("n3");
String paswd=request.getParameter("n5");
String confmpass=request.getParameter("n6");
String distid=request.getParameter("val");



out.println("distnam : "+distnam);
out.println("paswd : "+paswd);
out.println("address : "+address);
out.println("usernam : "+usernam);
out.println("confmpass : "+confmpass);
out.println("ofc_name : "+ofc_name);
//out.println("distid : "+distid);





String query="insert into re_off(distid,ofc_name,address,paswd,usernam) values("+distnam+",'"+ofc_name+"','"+address+"','"+paswd+"','"+usernam+"')";
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