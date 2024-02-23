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
    String pname = request.getParameter("pname");    
    String cname = request.getParameter("cname");
    String number = request.getParameter("number");
    String courses = request.getParameter("courses");
    String class1 = request.getParameter("class");
    String area=request.getParameter("area");
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/easy_learning","root", "");
    
    PreparedStatement stmt=con.prepareStatement("insert into parent (pname,cname,number,courses,class,area)values(?,?,?,?,?,?)");  
    stmt.setString(1,pname);
    stmt.setString(2,cname);
    stmt.setString(3,number);
    stmt.setString(4,courses);
    stmt.setString(5,class1);
    stmt.setString(6,area);
      
    int i=stmt.executeUpdate();
    
    
    if (i > 0) 
    {
        
        out.println("<script>");
        out.println("window.alert('Thank You')");
        out.println("window.location.href='index.html';");
        out.println("</script>");
     
    } else {
    	out.println("<script>");
        out.println("window.alert('Server Error')");
        out.println("window.location.href='index.html';");
        out.println("</script>");
    }
%>
</body>
</html>