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
String name=request.getParameter("n1");
String mob=request.getParameter("n2");
String gender =request.getParameter("h1");
String age=request.getParameter("n3");
String stateid=request.getParameter("n4");
String distid=request.getParameter("n5");
String destat=request.getParameter("p1");
String child=request.getParameter("x4");
String adult=request.getParameter("x3");
String ardate =request.getParameter("n6");
String redate=request.getParameter("n7");
String address =request.getParameter("n8");
String usernam=String.valueOf(session.getAttribute("usernam"));
String tid=request.getParameter("xp");



String query="update tourist set name='"+name+"', mob='"+mob+"',gender='"+gender+"',age="+age+",address='"+address+"',destat='"+destat+"', stateid="+stateid+", distid="+distid+",child="+child+",adult="+adult+",ardate='"+ardate+"',redate='"+redate+"' , usernam='"+usernam+"' where tid="+tid;
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

response.sendRedirect("tourist_regi.jsp");



%>

</body>
</html>