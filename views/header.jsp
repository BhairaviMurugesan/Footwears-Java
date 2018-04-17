<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>B Footwears</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="resources/header.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
		<div class="row">
			<nav class="navbar navbar-inverse navbar-fixed-top" id="navbar">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#myNavbar">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav">
						<a class="navbar-brand" href="home">B Footwears</a>
							<c:if test="${pageContext.request.userPrincipal.name==null }">
							<li><a href="displaysupplier" id="page">Brands</a></li>
							<li><a href="product" id="page">Product</a></li>
							</c:if>
							<security:authorize access="hasRole('ROLE_USER')">
							<li><a href="displaysupplier" id="page">Brands</a></li>
							<li><a href="productsuser" id="page">Product</a></li>
							</security:authorize>
							<li>
							<security:authorize access="hasRole('ROLE_ADMIN')">
						<li class="dropdown"><a href="Category" class="dropdown-toggle"
								data-toggle="dropdown2" id="page">Category<span
									class="caret"></span></a>
								<ul class="dropdown-menu" id="dropdown2">
									<li><a href="viewCategory" id="page2">View</a></li>
									<li><a href="Category" id="page2">Add</a></li>
								</ul></li>
								<li class="dropdown"><a href="Supplier" class="dropdown-toggle"
								data-toggle="dropdown3" id="page">Brands<span
									class="caret"></span></a>
								<ul class="dropdown-menu" id="dropdown3">
									<li><a href="viewSupplier" id="page2">View</a></li>
									<li><a href="Supplier" id="page2">Add</a></li>
								</ul></li>
								<li class="dropdown"><a href="Product" class="dropdown-toggle"
								data-toggle="dropdown3" id="page">Product<span
									class="caret"></span></a>
								<ul class="dropdown-menu" id="dropdown3">
									<li><a href="viewProduct" id="page2">View</a></li>
									<li><a href="Product" id="page2">Add</a></li>
								</ul></li>
								</security:authorize>
								</li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
						<c:if test="${pageContext.request.userPrincipal.name==null }">
							<c:url value="/login" var="login"></c:url>
							<li id="right"><a href="${login}"><span
									class="glyphicon glyphicon-log-in"></span> Login</a></li>
									</c:if>
									<c:if test="${pageContext.request.userPrincipal.name!=null }">
									<li id="right"><security:authorize access="hasRole('ROLE_USER')">
					<li><a href="#">Hi ${pageContext.request.userPrincipal.name}!!</a></li>
					<li><a href="myCart"><span
									class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
									<li><a href="History"><span
									class="glyphicon glyphicon-list"></span> Orders</a></li>
					</security:authorize><security:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href="adminCart"><span
									class="glyphicon glyphicon-list-alt"></span> Orders</a></li>
					</security:authorize></li>
											
							<c:url value="/logout" var="logout"></c:url>
							<li id="right"><a href="${logout}"><span
									class="glyphicon glyphicon-log-out"></span> Logout</a></li>
									</c:if>
						</ul>
						

					</div>
				</div>
			</nav>
		</div>
		</div>
		<div class="margin"></div>
</body>
</html>