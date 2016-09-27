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
        <li><a href="<spring:url value="cart"/>"><span class="glyphicon glyphicon-log-in"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>
<style>
body  {
    background-image:url(resources/images/Pulredab.jpg);
}
</style>

<h2>Customer Information</h2>
<form:form action="./addUser" commandName="cust" method="POST">
<form:errors path="*" cssClass="errorblock" element="div" />
 
			<table class="table">
				<tr>
					<td><form:label path="name">Your Name</form:label></td>
					<td><form:input path="name"/> </td>
					<td><font color="red"><errors path="name"/></font></td>
				</tr>
				<tr>
					<td><form:label path="email">Email Id </form:label></td>
					<td><form:input path="email"/> </td>
					<td><font color="red"><errors path="email"></errors></font></td>
				</tr>
			<tr>
					<td><form:label path="password">Password</form:label></td>
					<td><form:input type='password' path="password"/> </td>
					<td><font color="red"><errors path="password"/></font></td>
				</tr>
			
				
				<tr>
      <td colspan="2">
            <input type="submit" value="SAVE"/>
            <input type="reset" value="Clear Data"/>
        </td>
    </tr>
			</table>
		
		</form:form>
		
	
</body>
</html>