<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
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
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Home</a></li>
        <li><a href="about.jsp">About</a></li>
        <li><a href="allproducts.jsp">Products</a></li>
        <li><a href="contact.jsp">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="loginpage.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
  <h2>All Products</h2>
 <div class="col-md-4">
      <a href="pulpitrock.jpg" class="thumbnail">
        <img src="resources/images/apachi.jpg">
      </a>
    </div>
    <div class="col-md-4">
      <a href="moustiers-sainte-marie.jpg" class="thumbnail">
        <img src="resources/images/apachi.jpg">
      </a>
    </div>
    <div class="col-md-4">
      <a href="cinqueterre.jpg" class="thumbnail">
        <img src="resources/images/apachi.jpg">
      </a>
    </div>
    <div class="col-md-4">
      <a href="pulpitrock.jpg" class="thumbnail">
        <img src="resources/images/apachi.jpg">
      </a>
    </div>
    <div class="col-md-4">
      <a href="moustiers-sainte-marie.jpg" class="thumbnail">
        <img src="resources/images/apachi.jpg">
      </a>
    </div>
    <div class="col-md-4">
      <a href="cinqueterre.jpg" class="thumbnail">
        <img src="resources/images/apachi.jpg">
      </a>
    </div>
   <div class="col-md-4">
      <a href="pulpitrock.jpg" class="thumbnail">
        <img src="resources/images/apachi.jpg">
      </a>
    </div>
    <div class="col-md-4">
      <a href="moustiers-sainte-marie.jpg" class="thumbnail">
        <img src="resources/images/apachi.jpg">
      </a>
    </div>
    <div class="col-md-4">
      <a href="cinqueterre.jpg" class="thumbnail">
        <img src="resources/images/apachi.jpg">
      </a>
    </div>   
  </div>


</body>
</html>
