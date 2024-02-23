<%
HttpSession session1=request.getSession(false);
String username=(String)session.getAttribute("username");  

if (session == null || session.getAttribute("username") == null) {
    response.sendRedirect("index.html"); // No logged-in user found, so redirect to login page.
} else {
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0);
      
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, com.mysql.jdbc.Driver"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/datepicker3.css" rel="stylesheet">
  <link href="css/styles.css" rel="stylesheet">
  
  <!--Custom Font-->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
</head>
<body>

<%@include file="header.jsp"%>

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
      
    <div class="row">
      <div class="col-lg-12">
        <h1 class="page-header">Parents Enquiry</h1>
      </div>
    </div><!--/.row-->
        
    
    <div class="row">
      <div class="col-lg-12">
            
        <div class="panel panel-default">
          <div class="panel-heading"> Display Data </div>
          <div class="panel-body">
            <div class="col-md-12">
              <!--<form role="form" action="womenins_db.php" method="post" enctype="multipart/form-data">-->
                
                                <form action="" method="POST" >
                 <!-- Search filter -->
                                	<input id="myInput" type="text" placeholder="Search..">
                                <!-- Search filter --><br><br>
<table border="1px" style="width: 100%;">
   
        <tr>
            <th>Parent Name</th>
            <th>Child Name</th>
			<th>Number</th>
			<th>Courses</th>
            <th>Class</th>
			<th>Area</th>
			<th>Action</th>
            
        </tr>



  <tbody id="myTable">
  <%
  Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/easy_learning","root", "");
  
  Statement stmt=con.createStatement();  
  ResultSet rs=stmt.executeQuery("select * from parent");  
  while(rs.next())  
  {
  %>
  
  <tr>          
             <td><%=rs.getString(2) %></td>
			 <td><%=rs.getString(3) %></td>
			 <td><%=rs.getString(4) %></td>
			 <td><%=rs.getString(5) %></td>
			 <td><%=rs.getString(6) %></td>
			 <td><%=rs.getString(7) %></td>
			 <td>
			 	<a href="parent_delete.jsp?id=<%=rs.getInt(1) %>">Delete</a>
			 </td>
            
        
  </tr>
  <%
  }
  %>
</tbody>

</table>




               
                                     
                                  
            </div>
                                        
                                
          </div>

        </div>
                
                
            </div>
                
              </form>
            </div>
          </div>
        </div><!-- /.panel-->
      </div><!-- /.col-->
      <!--<div class="col-sm-12">
        <p class="back-link">Lumino Theme by <a href="https://www.medialoot.com">Medialoot</a></p>
      </div>-->
    </div><!-- /.row -->
  </div><!--/.main-->
<script src="js/jquery-1.11.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/chart.min.js"></script>
  <script src="js/chart-data.js"></script>
  <script src="js/easypiechart.js"></script>
  <script src="js/easypiechart-data.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/custom.js"></script>
  
  <!--  Search Filter  --> 

<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

<!--  Search Filter  -->
  
</body>

</html>