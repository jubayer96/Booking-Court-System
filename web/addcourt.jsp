<!DOCTYPE HTML>
<!--
	Landed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Add Court</title>
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
				<header id="header">
					<h1 id="logo"><a href="admin.jsp">THE A TEAM </a>Hi! ${sessionScope.memberprofile.getUsername()}</h1>
					<nav id="nav">
						<ul>
							<li><a href="addcourt.jsp">ADD COURT</a></li>
							<li><a href="managecourt.jsp">MANAGE COURT</a></li>
							<li><a href="mainbooking.jsp">BOOKING LIST</a></li>
							<li><a href="" class="button special">LOG OUT</a></li>
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<div id="main" class="wrapper style1">
					<div class="container">
						<header class="major">
							<h2>ADD COURT</h2>
							<p>Please enter the required field.</p>
						</header>

						<!-- Content -->
							<section id="content" align="center">
								
								<div align="center">
								<form method="get" action="registerCourtServlet">
									
                                                                    <div class="row uniform 50%">
										<div class="6u -3u">
											<select name="courtName" id="courtName">
													<option >Court Name</option>
													<option >Court A</option>
													<option >Court B</option>
													<option >Court C</option>
													<option >Court D</option>
													<option >Court E</option>
													<option >Court F</option>
												</select>
										</div>
									</div>
									
									<div class="row uniform 50%">
										<div class="6u -3u">
												<select name="courtType" id="courtType">
													<option value="Court Type">Court Type</option> 
                                                                                                        <option value="Fifa court">Fifa court</option>
													<option value="Normal court">Normal court</option>											
												</select>
										</div>
									</div>
									
									<div class="row uniform 50%">
										<div class="6u -3u">
											<input type="text" name="price" id="price" value="" placeholder="Price" required>
										</div>
									</div>
									
									<div class="row uniform 50%">
									<div class="12u">
										<ul class="actions">
											<li><input type="submit" value="Add Court" class="special"></li>
										</ul>
									</div>
									</div>
									
								</form> 
                                                                
                                                                
                                                              <!--  <form action ="registerCourtServlet">
                                                                    
                                                                    <input type ="text" name="courtName" required>
                                                                    <input type ="text" name="courtType" required>
                                                                    <input type ="text" name="price" required>
                                                                    
                                                                    <input type="submit" value="Add Court" class="special">
                                                                    
                                               
                                                                </form> -->
                                                                
                                                                
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
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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