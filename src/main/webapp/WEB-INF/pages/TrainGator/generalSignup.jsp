<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title> Sign Up | TrainGator </title>
    <link rel="shortcut icon" href="/icon.png">
    <link rel="stylesheet" href="/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/css/main.min.css">
    <link rel="stylesheet" href="/css/custom.css">
  </head>
  <body>
    <main class="auth">
      <header id="auth-header" class="auth-header" style="background-image: url(/images/illustration/img-1.png);">
        <h1>
          <img src="/images/rect-logo.png" alt="" height="120">
        </h1>

        <p> Already have an account? please
          <a href="signin.html">Sign In</a>
        </p>
      </header>
      <form class="auth-form" method="post" action="http://localhost:8080/generalSignup">
        <div class="form-group">
          <div class="form-label-group">
            <input type="email" id="inputEmail" class="form-control" placeholder="Email" name="email" required="" autofocus="">
            <label for="inputEmail">Email</label>
          </div>
        </div>
        <div class="form-row">
          <div class="col-md-6 mb-3 form-label-group">
            <input type="text" class="form-control" id="validationTooltip01" placeholder="First name" name="fname" required="">
            <label for="validationTooltip01">First name</label>
          </div>
          <div class="col-md-6 mb-3 form-label-group">
            <input type="text" class="form-control" id="validationTooltip02" placeholder="Last name" name="lname" required="">
            <label for="validationTooltip02">Last name</label>
          </div>
        </div>
        <div class="form-group">
          <div class="form-label-group">
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" required="">
            <label for="inputPassword">Password</label>
          </div>
        </div>
        <div class="custom-control custom-checkbox">
          	<input type="checkbox" class="custom-control-input" id="customCheck1" name="supervisorStatus" required="">
         	<label class="custom-control-label" for="customCheck1">I am a supervisor</label>
        </div><br>
        <div class="form-group">
          <select id="exampleSelect1" class="custom-select" name="supervisorName">
            <option value="Regular Employee"> If not a supervisor, select a supervisor. </option>
          </select>
        </div>
        <div class="form-group">
          <button class="btn btn-lg btn-primary btn-block" type="submit">Sign Up</button>
        </div>
    </main>
  </body>
</html>
