<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>B Footwears</title>
<style type="text/css">
html {
	height: 100%;
}
body {
	background: url(resources/bg/prohome.jpg) !important;
	padding: 0px;
	height: 100%;
}
.wrapper {
	min-height: 100%;
	position: relative;
}
.content{
	padding-bottom: 60px;
}
embed {
align-content: center;
}
</style>
</head>
<body>
<div class="wrapper">
		<div class="content">
		<%@ include file="header.jsp"%>
		<br><br>
							<%@ include file="carousel.jsp"%>
					<c:if test="${pageContext.request.userPrincipal.name==null }">
					<%@ include file="displayfeatured.jsp"%>
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name!=null }">
					<security:authorize access="hasRole('ROLE_USER')">
					<%@ include file="displayfeatured.jsp"%>
					</security:authorize>
					</c:if>
		</div>
	</div>
					<div class=container>
<h1 id="about" align="center">About Us</h1>
<p>High heels are a type of shoe in which the heel, compared to the toe, is significantly higher off of the ground. These shoes go beyond simply protecting the foot from the ground or improve efficiency of walking. High heels make the wearer taller, accentuating the calf muscle and the length of the leg overall. There are many types of high heels, which come in different styles, colors, and materials, and can be found all over the world.
The intricate and complex history of high heels has led to a variety of cultural thoughts and lens through which people view them today. It is very exclusively gendered in the sense that few men wear high heels in present times..It could be formal with a dress or pants suit. 20th and 21st century cultural values have dictated that high heels are the norm in professional settings for a woman. Some researchers argue that high heels have even become part of the female workplace uniform, and operate in a much larger and complex set of display rules. The 21st century has introduced a broad spectrum and variety of styles, ranging from height and width of heel, to design and color of the shoe.
</p>
</div>
		</div>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>