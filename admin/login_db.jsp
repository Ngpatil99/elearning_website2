<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*, com.mysql.jdbc.Driver"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String username = request.getParameter("username");    
String password = request.getParameter("password");

if(username.equals("admin") && password.equals("admin"))
{
	 HttpSession session1=request.getSession();  
     session1.setAttribute("username",username);
     
	response.sendRedirect("dashboard.jsp");
}
else
{
	response.sendRedirect("index.html");
}

%>
</body>
</html>