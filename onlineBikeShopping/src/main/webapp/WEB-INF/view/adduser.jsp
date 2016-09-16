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
   
 <h1>Add team page</h1>  
<p>Here you can add a new team.</p>  
<form:form method="POST" commandname="user" action="add">  
<table>  
<tbody>  
    <tr>  
        <td><form:label path="Name">Name:</form:label></td>  
        <td><form:input path="Name" value="${Name}" readonly="true"/></td>  
    </tr>  
    <tr>  
        <td><form:label path="Email">Email:</form:label></td>  
        <td><form:input path="Email" value="${Email}"readonly="true"/></td>   
   </tr>
   <tr>  
        <td><form:label path="Password">Email:</form:label></td>  
        <td><form:input path="Password" value="${Password}"readonly="true"/></td>   
   </tr>
   <tr>  
        <td><form:label path="Conform Password">Conform Password:</form:label></td>  
        <td><form:input path="Conform Password" value="${Conform Password}"readonly="true"/></td>   
   </tr>
   <tr>  
        <td><form:label path="Mobile Number">Mobile Number:</form:label></td>  
        <td><form:input path="Mobile Number" value="${Mobile Number}"readonly="true"/></td>   
   </tr>
    <tr>  
        <td><input type="submit" value="Add"></td>  
        <td></td>  
        
    </tr>  
    <c:if test="${!empty user}">
    <h2>List Employees</h2>
 <table align="left" border="1">
  <tr>
   <th>User Name</th>
   <th>User Email</th>
   <th>User Password</th>
   <th>User Conform Password</th>
   <th>User Mobile Number</th>
           <th>Actions on Row</th>
  </tr>
   
    <c:forEach var="user" items="${listUsers }">
<tr>
<td>${user.Name }</td>
<td>${user.Email }</td>
<td>${user.Password }</td>
<td>${user.Conform Password }</td>
<td>${user.Mobile Number }</td>
<td>
<a href="listuser"> list user</a>
   onclick="return conform('Are you sure?')">Delete</a>
</td>
</tr>
</c:forEach>
</c:if>
</table>
</tbody>  
</table>  
</form:form>  

<p><a href="index">Home page</a></p>  
</form-form>
</body>
</html>
  