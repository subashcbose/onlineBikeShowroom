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
       
    </div>
  </div>
</nav>
<style>
body  {
    background-image:url(resources/images/Pulredab.jpg);
}
</style>

<h2>Your details Are As Follows:</h2>

		<table class="table">
			<thead>
				<tr>
					<td>Product Id</td>
					<td>Product Name</td>
					<td>Product Price</td>
				</tr>
			</thead>
			<tbody class="table-hover">
			<c:forEach items="${ls}" var="data">
				<tr>
					<td>${data.pid}</td>
					<td>${data.pname}</td>
					<td>${data.price}</td>
					<td><a href="updPd/${data.pid}">Update</a></td>
					<td><a href="delPd/${data.pid}">Delete</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</body>
</html>