<!DOCTYPE html>
<html lang="en">
  <head>
    <title>College Magazine</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="adminhome.jsp">Admin</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="adminhome.jsp" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="addeditorial.jsp" class="nav-link">Add Editorial</a></li>
	          <li class="nav-item active"><a href="adminedit.jsp" class="nav-link">Editorials</a></li>
	          <li class="nav-item"><a href="adminpost.jsp" class="nav-link">Posts</a></li>
	          <li class="nav-item"><a href="adminstu.jsp" class="nav-link">Students</a></li>
	          <li class="nav-item"><a href="adminfac.jsp" class="nav-link">Faculties</a></li>
	          <li class="nav-item"><a href="index.jsp" class="nav-link">Logout</a></li>
	          <!--<li class="nav-item"><a href="schedule.html" class="nav-link">Admin</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
	          <li class="nav-item cta mr-md-2"><a href="register.jsp" class="nav-link">Register</a></li>-->

	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

   	
		<section class="ftco-section">
    	<div class="container">
    		<div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2 class="mb-1">Editorials</h2><br><br>
			<center><table border="2">
			<tr>
			<th><center><p style="margin-top: 16px;margin-left: 20px;margin-right: 20px;">Name</p></center></th>
			<th><center><p style="margin-top: 16px;margin-left: 20px;margin-right: 20px;">Roll No.</p></center></th>
			<th><center><p style="margin-top: 16px;margin-left: 20px;margin-right: 20px;">Department</p></center></th>
			<th><center><p style="margin-top: 16px;margin-left: 20px;margin-right: 20px;">Contact No.</p></center></th>
			<th><center><p style="margin-top: 16px;margin-left: 20px;margin-right: 20px;">Email ID</p></center></th>
			</tr>
			<%@include file="dbcon.jsp"%>
			<%
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(" select * from editorial ");
			while(rs.next()){%>
			<tr>
			<td><center><p style="margin-top: 16px;margin-left: 20px;margin-right: 20px;"><%=rs.getString(2)%></p></center></td>
			<td><center><p style="margin-top: 16px;margin-left: 20px;margin-right: 20px;"><%=rs.getString(3)%></p></center></td>
			<td><center><p style="margin-top: 16px;margin-left: 20px;margin-right: 20px;"><%=rs.getString(4)%></p></center></td>
			<td><center><p style="margin-top: 16px;margin-left: 20px;margin-right: 20px;"><%=rs.getString(5)%></p></center></td>
			<td><center><p style="margin-top: 16px;margin-left: 20px;margin-right: 20px;"><%=rs.getString(6)%></p></center></td>
			</tr>
			<%}%>
			</table></center><br><br><br><br>
          </div>
        </div>
    	</div>
    </section>
		

    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">

            <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved. Online College Magazine</p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>