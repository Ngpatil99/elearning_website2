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
    String parent = request.getParameter("parent");    
    String date = request.getParameter("date");
    String time = request.getParameter("time");
    String description = request.getParameter("description");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/easy_learning","root", "");
    
    PreparedStatement stmt=con.prepareStatement("insert into demo (parent,date,time,description)values(?,?,?,?)");  
    stmt.setString(1,parent);
    stmt.setString(2,date);
    stmt.setString(3,time);
    stmt.setString(4,description);
      
    int i=stmt.executeUpdate();
    
    
    if (i > 0) 
    {
        
        out.println("<script>");
        out.println("window.alert('Demo Added Successfully.')");
        out.println("window.location.href='demo_display.jsp';");
        out.println("</script>");
     
    } else {
    	out.println("<script>");
        out.println("window.alert('Server Error')");
        out.println("window.location.href='demo_display.jsp';");
        out.println("</script>");
    }
%>
</body>
</html>