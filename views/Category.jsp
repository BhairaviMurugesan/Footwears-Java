<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Category</title>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
		
<div id="nav">
<nav role="sub">
			

<%@include file="/WEB-INF/views/header.jsp" %>			
  
  <c:choose>
     <c:when test="${not empty AddCategoryButtonClicked}">    
     
      <%@include file="/WEB-INF/views/CategoryForm.jsp" %>
     </c:when>
     
     <c:when test="${not empty ViewCategoryButtonClicked}">
       <%@include file="/WEB-INF/views/ViewCategory.jsp" %>
   
     </c:when>
     
     <c:when test="${not empty editCategoryClicked}">
       <%@include file="/WEB-INF/views/EditCategory.jsp" %>
   
     </c:when>
     
     </c:choose> 
</body>
</html>