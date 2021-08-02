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
session.setAttribute("User",session.getAttribute("User"));

%>

	<% 
		String user_name = request.getParameter("user_name");
		String busNo = request.getParameter("busNo");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/BusPassManagement","root","");
			Statement s = con.createStatement();
			System.out.println("insert into rdetails values(\""+user_name+"\",\""+busNo+"\",true)");
			int r = s.executeUpdate("update details set flag=4 where user_name=\""+user_name+"\" and busNo=\""+busNo+"\" and user=\""+session.getAttribute("User")+"\"");
			
			response.sendRedirect("renewal.jsp");
		}
		catch(Exception e){
			System.out.println(e);
			
			
		}
	%>
	
	<h1>Invalid</h1>
</body>
</html>