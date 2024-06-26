<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xml:lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Online Banking</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Tangerine">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Material+Icons+Outlined"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
<style>

.navbar {
 background-color: blue !important;
}

.material-icons-outlined {
	float: left;
	margin: 2px;
}
</style>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		String uname = (String) session.getAttribute("username");
	String authority = (String) session.getAttribute("role");
	%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand"
			href="<%=request.getContextPath()%>/views/home.jsp"> &nbsp;&nbsp; Welcome <%
			if (uname != null) {
		%> <%=uname%> <%
 	}
 %></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav ms-auto">
				<%
					if (uname == null) {
				%>
				<li class="nav-item"><a
					href="<%=request.getContextPath()%>/views/login.jsp"
					class="nav-link active">Login</a></li>
				<li class="nav-item"><a
					href="<%=request.getContextPath()%>/views/signup.jsp"
					class="nav-link active">Register &nbsp;&nbsp;</a></li>
				<%
					} else {
				%>


				<%-- <li class="nav-item"><a
					href="<%=request.getContextPath()%>/views/dashboard.jsp"
					class="nav-link active"><span class="material-icons-outlined">
							home </span>Home</a></li> --%>



				<%-- <%
					if (authority.equals("USER")) {
				%>
				<li class="nav-item"><a
					href="<%=request.getContextPath()%>/views/cart.jsp"
					class="nav-link active"><span class="material-icons-outlined">
							shopping_cart </span>Cart</a></li>
				<%
					if (session.getAttribute("category") != null) {
				%>
				<li class="nav-item"><a
					href="<%=request.getContextPath()%>/GetItemsServlet"
					class="nav-link active"><span class="material-icons-outlined">
							inventory_2 </span>Continue Shopping</a></li>
				<%
					}
				}
				%> --%>
				<li class="nav-item"><a
					href="<%=request.getContextPath()%>/Logout" class="nav-link active"><span
						class="material-icons-outlined"> logout </span>Logout &nbsp;&nbsp;</a></li>
				<%
					}
				%>
			</ul>
		</div>
	</nav>
</body>
</html>