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



  	out.println("name :"+name);
  	out.println("mob :"+mob);
  	out.println("gender :"+gender);
  	out.println("age :"+age);
  	out.println("stateid :"+stateid);
  	out.println("distid:"+distid);
  	out.println("destat :"+destat);
  	out.println("child :"+child);
  	out.println("adult :"+adult);
  	
  	out.println("ardate :"+ardate);
  	out.println("redate:"+redate);
  	out.println("address :"+address);
  	
  	
  	String  query="insert into tourist(name,mob,gender,age,stateid,distid,destat,child,adult,ardate,redate,address,usernam) values('"+name+"','"+mob+"', '"+gender+"',"+age+","+stateid+","+distid+",'"+destat+"',"+child+","+adult+",'"+ardate+"','"+redate+"','"+address+"','"+usernam+"')";
	out.println(query);
				
	try
	{  
		Class.forName("com.mysql.cj.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chardham","root","12345");  
		Statement st=con.createStatement();
		st.executeUpdate(query);
		con.close();
		
		}catch(Exception e1){ out.println(e1);}
	 		
	out.println("insertion  Successfully");
  	
  	
  	
  	
%>

</body>
</html>