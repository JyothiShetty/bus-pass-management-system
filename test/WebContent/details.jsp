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
		String ageId = request.getParameter("ageId");
		String busNo = request.getParameter("busNo");
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		String date = request.getParameter("date");
		
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/BusPassManagement","root","");
			Statement s = con.createStatement();
			System.out.println("insert into details values(\""+user_name+"\",\""+ageId+"\",\""+busNo+"\",\""+source+"\",\""+destination+"\",\""+date+"\",true)");
			int r = s.executeUpdate("insert into details values(\""+user_name+"\",\""+ageId+"\",\""+busNo+"\",\""+source+"\",\""+destination+"\",\""+date+"\",true,\""+session.getAttribute("User")+"\")");
			
			response.sendRedirect("applyBusPass.jsp");
		}
		catch(Exception e){
			System.out.println(e);
			
			
		}
	%>
		<div class="card ">
		<h1>This User name is already exist.</h1>
		</div>
</body>
</html>