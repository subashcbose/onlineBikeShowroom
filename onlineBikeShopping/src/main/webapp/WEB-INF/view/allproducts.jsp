<html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
    /* Remove the navbar's default margin-bottom and rounded borders */
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
      <a class="navbar-brand" href="loginpage">Login</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index">Home</a></li>
        <li><a href="about">About</a></li>
        <li><a href="allproducts">Products</a></li>
        <li><a href="contact">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="cart"><span class="glyphicon glyphicon-log-in"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
  <h2>All Products</h2>
 <div class="col-md-4">
      <a href="pulpitrock.jpg" class="thumbnail" width="30" height="40">
        <img src="<spring:url value="resources/images/rsz_pulser220.jpg"/>">
      </a>++
    </div>
    <div class="col-md-4">
      <a href="moustiers-sainte-marie.jpg" class="thumbnail">
        <img src="<spring:url value="resources/images/555images.jpg"/>">
      </a>
    </div>
    <div class="col-md-4">
      <a href="<spring:url value="cinqueterre.jpg"/>" class="thumbnail">
        <img src="<spring:url value="resources/images/rsz_pul180.jpg"/>">
      </a>
    </div>
    <div class="col-md-4">
      <a href="<spring:url value="pulpitrock.jpg"/>" class="thumbnail">
        <img src="<spring:url value="resources/images/rsz_pul150.jpg"/>">
      </a>
    </div>
    <div class="col-md-4">
      <a href="<spring:url value="moustiers-sainte-marie.jpg"/>" class="thumbnail">
        <img src="<spring:url value="resources/images/apachi.jpg"/>">
      </a>
    </div>
    <div class="col-md-4">
      <a href="<spring:url value="cinqueterre.jpg"/>" class="thumbnail">
        <img src="<spring:url value="resources/images/apachi.jpg"/>">
      </a>
    </div>
   <div class="col-md-4">
      <a href="<spring:url value="pulpitrock.jpg"/>" class="thumbnail">
        <img src="<spring:url value="resources/images/apachi.jpg"/>">
      </a>
    </div>
    <div class="col-md-4">
      <a href="<spring:url value="moustiers-sainte-marie.jpg"/>" class="thumbnail">
        <img src="<spring:url value="resources/images/apachi.jpg"/>">
      </a>
    </div>
    <div class="col-md-4">
      <a href="<spring:url value="cinqueterre.jpg"/>" class="thumbnail">
        <img src="<spring:url value="resources/images/apachi.jpg"/>">
      </a>
    </div>   
  </div>
</form-form>
</body>
</html>
