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
    String fname = request.getParameter("fname");    
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String contactno = request.getParameter("contactno");
    String working = request.getParameter("working");
    String residence=request.getParameter("residence");
    String vehical = request.getParameter("vehical");    
    String dob = request.getParameter("dob");
    String edudatil = request.getParameter("edudatil");
    String courses = request.getParameter("courses");
    String interested_courses = request.getParameter("interested_courses");
    String board=request.getParameter("board");
    String other_board = request.getParameter("other_board");    
    String stream = request.getParameter("stream");
    String other_subject = request.getParameter("other_subject");
    String interested_to_teach = request.getParameter("interested_to_teach");
    String graduation_course = request.getParameter("graduation_course");
    
    
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/easy_learning","root", "");
    
    PreparedStatement stmt=con.prepareStatement("insert into teacher (fname,lname,email,contactno,working,residence,vehical,dob,edudatil,courses,interested_courses,board,other_board,stream,other_subject,interested_to_teach,graduation_course)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");  
    stmt.setString(1,fname);
    stmt.setString(2,lname);
    stmt.setString(3,email);
    stmt.setString(4,contactno);
    stmt.setString(5,working);
    stmt.setString(6,residence);
    stmt.setString(7,vehical);
    stmt.setString(8,dob);
    stmt.setString(9,edudatil);
    stmt.setString(10,courses);
    stmt.setString(11,interested_courses);
    stmt.setString(12,board);
    stmt.setString(13,other_board);
    stmt.setString(14,stream);
    stmt.setString(15,other_subject);
    stmt.setString(16,interested_to_teach);
    stmt.setString(17,graduation_course);
      
    int i=stmt.executeUpdate();
    
    
    if (i > 0) 
    {
        
        out.println("<script>");
        out.println("window.alert('Registration Successfully.')");
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