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
		String user=request.getParameter("user_name");
		String pass=request.getParameter("password");
		String a,b,c,d,e,f;
		Statement s = con.createStatement();
		ResultSet r = s.executeQuery("select * from login");
		r.next();
		a = r.getString(1);
		b = r.getString(2);
		r.next();
		c= r.getString(1);
		d= r.getString(2);
		r.next();
		e= r.getString(1);
		f= r.getString(2);
		
		if(user.equals(a) && pass.equals(b)){
			System.out.println("admin");
			response.sendRedirect("admin.jsp");
		}
		else if(user.equals(c) && pass.equals(d)){
			System.out.println("user");
			session.setAttribute("User",c);
			response.sendRedirect("home.jsp");
		}
		else if(user.equals(e) && pass.equals(f)){
			System.out.println("user");
			session.setAttribute("User",e);
			response.sendRedirect("home.jsp");
		}
		else{
			response.sendRedirect("test.jsp");
		}
	}
	catch(Exception e){
		System.out.println(e);
		
	}
		



%>
</body>
</html>