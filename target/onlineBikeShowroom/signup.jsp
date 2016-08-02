<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
        <li><a href="contact.jsp    ">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="loginpage.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
  <h2>Create a account</h2>
  <form class="form-horizontal" role="form">
    <div class="form-group">
      <label class="col-sm-2 control-label">Name</label>
      <div class="col-sm-4">
        <input class="form-control" id="focusedInput" type="text" placeholder="First Name...">
      </div>
<div class="col-sm-5">
        <input class="form-control" id="focusedInput" type="text" placeholder="Last Name...">
      </div>
 </div>
     <div class="form-group">
      <label class="col-sm-2 control-label">Email</label>
      <div class="col-sm-4">
        <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input here...">
      </div>
    </div>
      <div class="form-group">
        <label for="disabledTextInput" class="col-sm-2 control-label">Password</label>
        <div class="col-sm-5">
          <input type="text" id="disabledInput" class="form-control" placeholder="Disabled input">
        </div>
 </div>
<div class="form-group">
        <label for="disabledTextInput" class="col-sm-2 control-label"> Re-Enter Password</label>
        <div class="col-sm-5">
          <input type="text" id="disabledTextInput" class="form-control" placeholder="Disabled input">
        </div>

      </div>
      <div class="form-group">
      <label class="col-sm-2 control-label">Name</label>
      <div class="col-sm-4">
        <input class="form-control" id="focusedInput" type="text" placeholder="First Name...">
      </div>
      </div>
    <div class="form-group">
      <label class="col-sm-2 control-label">Gender</label>
      <div class="col-sm-5">
        <input class="form-control" id="focusedInput" type="text" placeholder="First Name...">
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2 control-label">Mobile Phone</label>
      <div class="col-sm-5">
        <input class="form-control" id="focusedInput" type="text" placeholder="First Name...">
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2 control-label">Address1</label>
      <div class="col-sm-5">
        <input type="text" class="form-control" id="inputError">
      </div>
    </div>
 <div class="form-group">
      <label class="col-sm-2 control-label">Address2</label>
      <div class="col-sm-5">
        <input type="text" class="form-control" id="inputError">
      </div>
    </div>
  </form>
</div>

</body>
</html>