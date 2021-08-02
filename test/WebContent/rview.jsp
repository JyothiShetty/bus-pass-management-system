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
	 try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/BusPassManagement","root","");
			Statement s = con.createStatement();
			String user_name = request.getParameter("user_name");
			String isreject = request.getParameter("isreject");
			System.out.println(isreject);
			if(isreject==null)
			{
				int r = s.executeUpdate("update details set flag=5 where user_name=\""+user_name+"\"");
				response.sendRedirect("vrenewel.jsp");	
			}
			else {
				int r = s.executeUpdate("update details set flag=6 where user_name=\""+user_name+"\"");
				response.sendRedirect("vrenewel.jsp");	
			}
	 }
	catch(Exception e){
		System.out.println(e);
		
		
	}
	%>
</body>
</html>