<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<div class="container" style="width:100%">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
       <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/carousel/Atwood.jpg" alt="Atwood" style="width:1500px;height:400px;">
      </div>

      <div class="item">
        <img src="resources/carousel/Gucci.jpg" alt="Gucci" style="width:1500px;height:400px;">
      </div>
    
      <div class="item">
        <img src="resources/carousel/Mcqueen.jpg" alt="Mcqueen" style="width:1500px;height:400px;">
      </div>
      <div class="item">
        <img src="resources/carousel/ralph.jpg" alt="ralph" style="width:1500px;height:400px;">
      </div>
      <div class="item">
        <img src="resources/carousel/Vuitton.jpg" alt="Vuitton" style="width:1500px;height:400px;">
      </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</body>
</html>