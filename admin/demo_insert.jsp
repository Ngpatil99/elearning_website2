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
				<h1 class="page-header">Arrange Demo</h1>
			</div>
		</div><!--/.row-->
				
		
		<div class="row">
			<div class="col-lg-12">
						
				<div class="panel panel-default">
					<!--div class="panel-heading">Forms</div-->
					<div class="panel-body">
						<div class="col-md-6">
							<form role="form" action="demo_insert_db.jsp" method="post">

								<div class="form-group">
									<label>Select Parent</label>
									<select name="parent" class="form-control" required>
									<option value="" selected disabled>Select</option>
									<%
									Class.forName("com.mysql.jdbc.Driver");
									  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/easy_learning","root", "");
									  
									  Statement stmt=con.createStatement();  
									  ResultSet rs=stmt.executeQuery("select * from parent");  
									  while(rs.next())  
									  {
									%>
									<option value="<%=rs.getString(2) %>"><%=rs.getString(2) %></option>
									  <%
									  }
									  %>
									</select>
								</div>
								
								<div class="form-group">
									<label>Date</label>
									<input type="date" name="date" class="form-control" required>
								</div>
								
								<div class="form-group">
									<label>Time</label>
									<input type="time" name="time" class="form-control" required>
								</div>
								
								<div class="form-group">
									<label>Description</label>
									<textarea class="form-control" rows="4" cols="50" name="description"></textarea>
								</div>
	                               
	                               <button type="submit" class="btn btn-primary" name="submit">Submit</button>
									<button type="reset" class="btn btn-default">Reset</button>
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
	
</body>
</html>
    