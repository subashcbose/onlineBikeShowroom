  <html>
  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<spring:url value="resources/css/bootstrap.min.css"/>">
  <script src="<spring:url value="resources/js/jquery.min.js"/>"></script>
  <script src="<spring:url value="resources/js/bootstrap.min.js"/>"></script>
  
  <style>
    /* Remove the navbar's default margin-bott`om and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    } 
    
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none;
    }
  }
  </style>
</head>
<body>
<form-form>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="<spring:url value="loginpage"/>">Login</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="<spring:url value="/"/>">Home</a></li>
        <li><a href="<spring:url value="about"/>">About</a></li>
        <li><a href="<spring:url value="allproducts"/>">Products</a></li>
        <li><a href="<spring:url value="contact"/>">Contact</a></li>
          <li><a href="<spring:url value="aindex"/>">Admin</a></li>
          
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<spring:url value="cart"/>"><span class="glyphicon glyphicon-log-in"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>

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
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="<spring:url value="resources/images/sameimage2.jpg"/>" text="IMAGE" alt="Image"/>
        <div class="carousel-caption">
          <h3 style="color:black; font-size:200%; text-align:right;">Online bike Shopping </h3>
          <p style="color:white; font-size:150%; text-align:right;">Four wheels move the body bt two wheels 0nly move the soul </p> 
        </div>
      </div>
      <div class="item">
        <img src="<spring:url value="resources/images/sameimage3.jpg"/>" text= "Image" alt="Image"/>
        <div class="carousel-caption">
          <h3>Sujai Krishna</h3>
          <p>Lorem ipsum...</p>
        </div>
      </div> 
      <div class="item">
        <img src="<spring:url value="resources/images/roadimage.jpg"/>"/>
      </div> 
      
      <div class="item">
        <img src="<spring:url value="resources/images/image5.jpg"/>"/>
      </div>
      <div class="item">
        <img src="<spring:url value="resources/images/image4.jpg"/>"/>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
  
<div class="container text-center">
  <h3>What We Do</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <img src="<spring:url value="resources/images/image2.jpg"/>" class="img-responsive" style="width:75%" alt="Image"/>
      <p>Current Project</p>
    </div>
    <div class="col-sm-4">
      <img src="<spring:url value="resources/images/image3.jpg"/>" class="img-responsive" style="width:100%" alt="Image"/>
      <p>Project 2</p>
    </div>
    <div class="col-sm-4">
      <img src="<spring:url value="resources/images/image3.jpg"/>" class="img-responsive" style="width:100%" alt="Image"/>
       <p>Some text..</p>
      </div>
      <div class="col-sm-4">
      <img src="<spring:url value="resources/images/image3.jpg"/>" class="img-responsive" style="width:100%" alt="Image"/>
       <p>Some text..</p>
      </div>
       <div class="col-sm-4">
      <img src="<spring:url value="resources/images/image3.jpg"/>" class="img-responsive" style="width:100%" alt="Image"/>
       <p>Some text..</p>
      </div>
       <div class="col-sm-4">
      <img src="<spring:url value="resources/images/image3.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
       <p>Some text..</p>
      </div>
    </div>
  </div>
</div><br>

</form-form>
</body>
</html>

