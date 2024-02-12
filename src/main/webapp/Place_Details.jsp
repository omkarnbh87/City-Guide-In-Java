
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="cityGuide.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>City Guide</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css"
	media="all">
<script src="cities.js"></script>
</head>
<body id="top">
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<div class="wrapper row0">
		<div id="topbar" class="hoc clear">
			<div class="fl_left">
				<!-- ################################################################################################ -->
				<ul class="nospace">
					<li><i class="fas fa-phone rgtspace-5"></i> +91 9627408969</li>
					<li><i class="far fa-envelope rgtspace-5"></i> nbhsoftech.com</li>
				</ul>
				<!-- ################################################################################################ -->
			</div>
			<div class="fl_right">
				<!-- ################################################################################################ -->
				<ul class="nospace">
					<li><a href="index.html"><i class="fas fa-home"></i></a></li>
					<li><a href="#" title="Help Centre"><i
							class="far fa-life-ring"></i></a></li>
					<li><a href="#" title="Login"><i
							class="fas fa-sign-in-alt"></i></a></li>
					<li><a href="#" title="Sign Up"><i class="fas fa-edit"></i></a></li>
					<li id="searchform">
						<div>
							<form action="#" method="post">
								<fieldset>
									<legend>Quick Search:</legend>
									<input type="text" placeholder="Enter search term&hellip;">
									<button type="submit">
										<i class="fas fa-search"></i>
									</button>
								</fieldset>
							</form>
						</div>
					</li>
				</ul>
				<!-- ################################################################################################ -->
			</div>
		</div>
	</div>
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<div class="wrapper row1">
		<header id="header" class="hoc clear">
			<div id="logo" class="fl_left">
				<!-- ################################################################################################ -->
				<h1>
					<a href="index.html">City Guide</a>
				</h1>
				<!-- ################################################################################################ -->
			</div>
			<nav id="mainav" class="fl_right">
				<!-- ################################################################################################ -->
				<ul class="clear">
					<li class="active"><a href="Admin_home.jsp">Home</a></li>
					<li><a href="Add_places.jsp">Add Places</a></li>
					<li><a href="Place_Details.jsp">Place Details</a></li>
					<li><a href="StudentDetail.jsp">Student</a></li>
					<li><a href="BusinessmanDetail.jsp">Businessman</a></li>
					<li><a href="JobseekerDetail.jsp">Jobs</a></li>

					<li><a href="index.jsp">Logout</a></li>
				</ul>
				<!-- ################################################################################################ -->
			</nav>
		</header>
	</div>
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<div class="wrapper bgded overlay gradient"
		style="background-image: url('../images/demo/backgrounds/01.png');">
		<div id="breadcrumb" class="hoc clear">
			<!-- ################################################################################################ -->
			<h6 class="heading">Add Places</h6>
			<ul>
			</ul>
			<!-- ################################################################################################ -->
		</div>
	</div>
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->

	<div class="wrapper row3">
		<main class="hoc container clear">
			<!-- main body -->
			<!-- ################################################################################################ -->
			<div class="content">
				<!-- ################################################################################################ -->

				<center>
					<div id="comments">
						<div class="g-position--relative g-bg-color--primary">
							<div class="g-container--md g-padding-y-125--xs">
								<div
									class="g-text-center--xs g-margin-t-50--xs g-margin-b-80--xs">
									<h2
										class="g-font-size-32--xs g-font-size-36--sm g-color--white">Place
										Details</h2>
								</div>
								<div class="scrollable">
									<table>
										<thead>
											<tr>
												<th>Id</th>
												<th>Category</th>
												<th>Place</th>
												<th>City</th>
												<th>State</th>
												<th>Address</th>
												<th>Description</th>
											</tr>
										</thead>
										<%
										Connection con = ConnectionProvider.getconnection();

										try {
											Statement st = con.createStatement();
											ResultSet rs = st.executeQuery("SELECT * FROM places");
											while (rs.next()) {
										%>
										<tbody>
											<tr>
												<td><%=rs.getString("id")%></td>
												<td><%=rs.getString("cat")%></td>
												<td><%=rs.getString("p_name")%></td>
												<td><%=rs.getString("p_city")%></td>
												<td><%=rs.getString("p_state")%></td>
												<td><%=rs.getString("address")%></td>
												<td><%=rs.getString("des")%></td>
											</tr>
										</tbody>
										<%
										}
										} catch (Exception ex) {
										ex.printStackTrace();
										}
										%>
									</table>
								</div>
							</div>
						</div>
					</div>
				</center>
				<!-- ################################################################################################ -->
			</div>
			<!-- ################################################################################################ -->
			<!-- / main body -->
			<div class="clear"></div>
		</main>
	</div>
	<div class="wrapper row5">
		<div id="copyright" class="hoc clear">
			<!-- ################################################################################################ -->
			<p class="fl_left">
				nbhsoftech - <a href="#">City Guide</a>
			</p>
			<!-- ################################################################################################ -->
		</div>
	</div>
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
	<!-- JAVASCRIPTS -->
	<script src="layout/scripts/jquery.min.js"></script>
	<script src="layout/scripts/jquery.backtotop.js"></script>
	<script src="layout/scripts/jquery.mobilemenu.js"></script>
	<script src="cities.js"></script>
</body>
</html>
