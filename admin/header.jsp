<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span></button>
        <a class="navbar-brand" href="#"><span>Admin</span></a>
        
      </div>
    </div><!-- /.container-fluid -->
  </nav>
  
   <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
    <div class="profile-sidebar">
      
      <div class="profile-usertitle">
        <div class="profile-usertitle-name"><?php echo $_SESSION['username']; ?></div>
        <div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>
      </div>
      <div class="clear"></div>
    </div>
    <div class="divider"></div>
   
    
    <ul class="nav menu">
    
      <li class="active"><a href="dashboard.jsp"><em class="fa fa-dashboard">&nbsp;</em> Dashboard</a></li>
      
      <li><a href="teachers.jsp"><em class="fa fa-dashboard">&nbsp;</em> Teachers</a></li>
      
      <li><a href="parents_enquiry.jsp"><em class="fa fa-dashboard">&nbsp;</em> Parents Enquiry</a></li>
      
      <li><a href="subscribers.jsp"><em class="fa fa-dashboard">&nbsp;</em> Subscribers</a></li>
           
      <li class="parent "><a data-toggle="collapse" href="#sub-item-4">
        <em class="fa fa-navicon">&nbsp;</em>Demo<span data-toggle="collapse" href="#sub-item-4" class="icon pull-right"><em class="fa fa-plus"></em></span>
        </a>
        <ul class="children collapse" id="sub-item-4">
          <li><a class="" href="demo_insert.jsp">
            <span class="fa fa-arrow-right">&nbsp;</span> Create
          </a></li>
        
          <li><a class="" href="demo_display.jsp">
            <span class="fa fa-arrow-right">&nbsp;</span> display
          </a></li>
        </ul>
      </li>
      
      
      <li><a href="logout.jsp"><em class="fa fa-power-off">&nbsp;</em> Logout</a></li>
    </ul>
  </div><!--/.sidebar-->