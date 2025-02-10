<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>

*{
	padding:0;
	margin:0;
} 

.box
{
	height:600px;
	width:70%;
	background-color:WHITE;
	float:left;
}


table{
	margin:auto;
	width:40%;
	height:350px;
}


td{
	width:40%;
	padding:5px;
	font-size:15px;
    font-weight:bold;
}

input[type=text]
{
	padding:5px;
	width:80%;
	border-radius:0px;
	background:white:
	
}

input[type=date]
{
	padding:5px;
	width:90%;
	border-radius:0px;
	background:white:
	
}

input[type=submit]:hover
{	
	background:linear-gradient(to bottom, #ccffcc 0%, #ccffcc 100%);
}

input[type=submit]
{	
	background-color:lightgreen;
	width:84%;
	background-color:white;
	color:black;
	height:45px;
}

input[type=reset]
{	
	background-color:lightgreen;
	width:80%;
	background-color:white;
	color:black;
	height:45px;
}




input[type=number]
{
	padding:5px;
	width:99%;
	border-radius:0px;
	background:white;
	
}

select
{

    padding:5px;
	width:68%;
	border-radius:0px;
	background:white;
}



</style>
<body>


<%@ include file="sidebar1.jsp" %> 

<form action="reportlogic.jsp"> 


<table BORDER=0>

<tr>
<td colspan=2 style="text-align:center;"> REPORT   </td>
</tr>



<tr>

	<TD COLSPAN=2> 
	     <input type="radio" name="h1" value="STATE WISE TOURIST"> STATE WISE TOURIST
	    </TD>
	    </tr>
	    
		
<tr>
         <TD>
         <input type="radio" name="h1" value="STATE NAME">STATE NAME
        </TD>
        <TD>
        <select  name="n1"> 
        
        <%
    String query="select * from state";


try{ 
	Class.forName("com.mysql.cj.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chardham","root","12345");  
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(query);
	while(rs.next())
	{
		out.println("<option value="+rs.getString("stateid")+">"+rs.getString("statename")+"</option>");
	}
}catch(Exception e){}

%>
        </select>
         </TD>
        </tr>
        
        
 <tr>
         <TD COLSPAN=2> 
	    <input type="radio" name="h1" value="DATE WISE">DATE WISE
	     </TD>
	     </tr> 
    
 <tr>
        <td>DATE OF ARRIVAL </td>
        <TD> <input type="date"  placeholder="" name="n6"/></TD>
        </TR>
        
        
<TR>
          <td>DATE OF RETURN</td>
          <TD> <input type="date"  placeholder=""  name="n7"/></TD>
          </tr>
          
          
 <tr>

          <td><input type="submit" value="DISPLAY REPORT"/></td>
          <td><input type="submit" value=" Cancel "/></td>

</tr>
 
       
       
		
		
		
		
		



</table>

</form>












</body>
</html>