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
	String user = request.getParameter("user");
	System.out.println(user);
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/BusPassManagement","root","");
	Statement s = con.createStatement();
	
	int r = s.executeUpdate("update details set flag=9 where user=\""+user+"\"");
	response.sendRedirect("home.jsp");	
}
catch(Exception e){
	System.out.println(e);
	
	
}
%>

</body>
</html>