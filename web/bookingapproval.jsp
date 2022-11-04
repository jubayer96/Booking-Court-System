<!DOCTYPE HTML>
<!--
	Landed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->

<jsp:useBean id="bookrq" class="Bean.Booking" scope="page">
    <jsp:setProperty name="bookrq" property="bookingID" value="${param.bookingID}"/>
    <jsp:setProperty name="bookrq" property="courtName" value="${param.courtName}"/>
    <jsp:setProperty name="bookrq" property="username" value="${param.username}"/>
    <jsp:setProperty name="bookrq" property="courtType" value="${param.courtType}"/>
</jsp:useBean>

<html>
    
	<head>
		<title>Confirmation Court</title>
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
					<h1 id="logo"><a href="index.html">THE A TEAM</a></h1>
					<nav id="nav">
						<ul>
							<li><a href="addcourt.html">ADD COURT</a></li>
							<li><a href="managecourt.html">MANAGE COURT</a></li>
							<li><a href="bookinglist.html">BOOKING LIST</a></li>
							<li><a href="" class="button special">LOG OUT</a></li>
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<div id="main" class="wrapper style1">
					<div class="container">
						<header class="major">
							<h2>CONFIRMATION COURT</h2>
							<p>Below are the detail of the booked court.</p>
						</header>
						
						

						<!-- Content -->
							<section id="content" align="center">
                                                            <form action="bookingApprovalServlet" method="post">
								<div align="center">
								
								<div class="row uniform 50%">
										<div class="6u -3u">
											BookingID<br><input type="text" name="bookingID" id="bookingID" value="<jsp:getProperty name="bookrq" property="bookingID"/>"  disabled>
										</div>
								</div>
								
								<div class="row uniform 50%">
										<div class="6u -3u">
											Username<br><input type="text" name="username" id="username" value="<jsp:getProperty name="bookrq" property="username" />" disabled>
										</div>
								</div>
								
								<div class="row uniform 50%">
										<div class="6u -3u">
											Court Name<br><input type="text" name="courtName" id="courtName" value="<jsp:getProperty name="bookrq" property="courtName" />" disabled>
										</div>
								</div>
								
								<div class="row uniform 50%">
										<div class="6u -3u">
											Court Type<br><input type="text" name="courtType" id="courtType" value="<jsp:getProperty name="bookrq" property="courtType" />" disabled>
										</div>
								</div>
								
								<div class="row uniform 50%">
									<div class="6u -3u">
                                                                            Approval<br><select id="approval" name="bookingStat" required>
													<option value="Yes">YES</option>
													<option value="No">NO</option>
												</select>
									</div>
								</div>
									
									<div class="row uniform 50%">
									<div class="12u">
										<ul class="actions">
											<li><input type="hidden" name="bookingID" value="<jsp:getProperty name="bookrq" property="bookingID"/>">
                                                                                            <input type="submit" value="Submit" class="special"></li>
											<li><input type="submit" value="Cancel" class="special"></li>
										</ul>
									</div>
									</div>
									
								</div>
						
                                                            </form>
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