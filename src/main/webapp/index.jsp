

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="">
<head>
<title>City Guide</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css"
	media="all">
</head>
<body id="top">
	<div class="wrapper row0">
		<div id="topbar" class="hoc clear">
			<div class="fl_left">
				<ul class="nospace">
					<li><i class="fas fa-phone rgtspace-5"></i> +91 9627408969</li>
					<li><i class="far fa-envelope rgtspace-5"></i> nbhsoftech.com</li>
				</ul>
			</div>
			<div class="fl_right">
				<ul class="nospace">
					<li><a href="index.jsp"><i class="fas fa-home"></i></a></li>

					<li><a href="login.jsp" title="Login"><i
							class="fas fa-sign-in-alt"></i></a></li>
					<li><a href="reg.jsp" title="Sign Up"><i
							class="fas fa-edit"></i></a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="wrapper row1">
		<header id="header" class="hoc clear">
			<div id="logo" class="fl_left">
				<h1>
					<a href="index.html">City Guide</a>
				</h1>
			</div>
			<nav id="mainav" class="fl_right">
				<ul class="clear">
					<li class="active"><a href="index.html">Home</a></li>
					<li><a href="Administrator.jsp">Administrator</a></li>
					<li><a href="user_login.jsp">Users</a></li>
					<li><a href="reg.jsp">Registration</a></li>
				</ul>
			</nav>
		</header>
	</div>

	<div class="wrapper bgded overlay gradient"
		style="background-image: url('images/city1.jpg.jpg'); width: auto">
		<div id="pageintro" class="hoc clear">
			<article>

				<marquee behavior="scroll" direction="left" scrollamount="20">
					<h1 class="heading">WELCOME IN City Guide</h1>
				</marquee>

				<marquee scrollamount="25" direction="right">
					<h1 class="heading">City Guide APPLICATION</h1>
				</marquee>

				<footer> </footer>
			</article>
		</div>
	</div>

	<div class="wrapper row2">
		<section class="hoc container clear">
			<div class="sectiontitle">
				<!--<h6 class="heading">Abstract</h6>-->
			</div>

		</section>
	</div>
	<div class="wrapper row4"></div>
	<div class="wrapper row5">
		<div id="copyright" class="hoc clear">
			<p class="fl_left">
				nbhsoftech - <a href="#">City Guide</a>
			</p>
		</div>
	</div>

	<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
	<!-- JAVASCRIPTS -->
	<script src="layout/scripts/jquery.min.js"></script>
	<script src="layout/scripts/jquery.backtotop.js"></script>
	<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>
