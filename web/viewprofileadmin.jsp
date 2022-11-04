<!DOCTYPE HTML>
<!--
	Landed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>View Profile - Admin</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
		
	</head>
	<body>
		<div id="page-wrapper">

			<!-- Header -->
				<jsp:include page="headerAdmin.jsp" />

			<!-- Main -->
				<div id="main" class="wrapper style1">
					<div class="container">
						<header class="major">
							<h2>VIEW PROFILE</h2>
							<p>Below are your information.</p>
						</header>

						<!-- Content -->
							<section id="content" align="center">
								
								<div align="center">
								<form method="get" action="editprofileadmin.jsp">
									<div  align="center"  class="row uniform 50%">
										<div class="6u -3u">
											<input type="text" disabled name="fullname" id="name" value="${sessionScope.memberprofile.getFullname()}" placeholder="Full Name">
										</div>
									</div>
									
									<div class="row uniform 50%">
										<div class="6u -3u">
											<input type="text" disabled name="username" id="name" value="${sessionScope.memberprofile.getUsername()}" placeholder="Username">
										</div>
									</div>
									
									<div class="row uniform 50%">
										<div class="6u -3u">
											<input type="text" disabled name="phoneNo" id="name" value="${sessionScope.memberprofile.getPhoneNo()}" placeholder="Phone Number">
										</div>
									</div>
									
									<div class="row uniform 50%">
										<div class="6u -3u">
											<input type="text" disabled name="email" id="name" value="${sessionScope.memberprofile.getEmail()}" placeholder="Email">
										</div>
									</div>
									
									
									
									<div class="row uniform 50%">
									<div class="12u">
										<ul class="actions">
                                                                                    <li><a href = "editprofileadmin.jsp" class="button special">Edit Profile</a> </li>
										</ul>
									</div>
									</div>
									
								</form>
								</div>
						
								
							</section>

					</div>
				</div>

			<!-- Footer -->
				<footer id="footer">
					<ul class="icons">
						<li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon alt fa-linkedin"><span class="label">LinkedIn</span></a></li>
						<li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon alt fa-github"><span class="label">GitHub</span></a></li>
						<li><a href="#" class="icon alt fa-envelope"><span class="label">Email</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: THE A TEAM.</li>
					</ul>
				</footer>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>