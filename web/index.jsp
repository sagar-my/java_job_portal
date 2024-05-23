

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index Page</title>
        <%@include file="All_Components/allCss.jsp" %>
        <style>
        </style>
    </head>
    <body style="background: #f0f1f2">
        <%@include file="All_Components/navbar.jsp" %>      
   <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" style="height:70vh;">
    <div class="carousel-item active">
      <img class="d-block w-100" src="img/second.jpg" alt="First slide" style="width: 100%; height: 70vh;">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/job2.jpg" alt="Second slide" style="width: 100%; height: 70vh;">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/job.png" alt="Third slide" style="width: 100%; height: 70vh;">
    </div>
       <div class="carousel-item">
      <img class="d-block w-100" src="img/third.jpg" alt="Third slide" style="width: 100%; height: 70vh;">
    </div>
       <div class="carousel-item">
      <img class="d-block w-100" src="img/ee.png" alt="Third slide" style="width: 100%; height: 70vh;">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>       
        <%@include file="All_job.jsp" %>
        <div class="mt-100">
             <%@include file="All_Components/footer.jsp" %>
        </div>
    </body>
</html>
