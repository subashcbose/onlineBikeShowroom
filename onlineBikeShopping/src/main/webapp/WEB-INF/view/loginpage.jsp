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
     <a class="navbar-brand" href="<spring:url value="loginpage"/>">Login</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="<spring:url value="/"/>">Home</a></li>
        <li><a href="<spring:url value="about"/>">About</a></li>
        <li><a href="<spring:url value="allproducts"/>">Products</a></li>
        <li><a href="<spring:url value="contact"/>">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<spring:url value="cart"/>"><span class="glyphicon glyphicon-log-in"></span> Cart</a></li>      </ul>
    </div>
  </div>
</nav>
<style>
body  {
    background-image:url(resources/images/ktm.jpg);
}
</style>
<div class="container">
  <h2 style="color:black; text-align:center;">Login Here</h2>
  <form class="form-horizontal" role="form">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">User Name:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" placeholder="Enter email">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">
        <input t ype="password" class="form-control" id="pwd" placeholder="Enter password">
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox"> Remember me</label>
        </div>   
      </div>
    </div>
    </div>
 <div class="container">
  <ul class="pager">
    <li class="previous"><a href="<spring:url value="/index"/>">Submit</a></li>
    <li class="next"><a href="<spring:url value="/signup"/>">Sign Up</a></li>
  </ul>
</div>
</div>
</form-form>
</body>
</html>