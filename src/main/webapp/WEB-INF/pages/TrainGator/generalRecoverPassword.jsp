<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title> Password Recovery | TrainGator </title>
  <link rel="shortcut icon" href="/icon.png">
  <link rel="stylesheet" href="/vendor/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
  <link rel="stylesheet" href="/css/main.min.css">
  <link rel="stylesheet" href="/css/custom.css">
</head>
  <body>
    <main class="auth">
      <form class="auth-form auth-form-reflow">
        <div class="text-center mb-4">
          <div class="mb-4">
            <img class="" src="/images/transparent-logo.png" alt="" height="200"> </div>
          <h1 class="h3"> Reset Your Password </h1>
        </div>
        <p class="mb-4">Don't fret, we'll get you back up in no time! If you have successfully created an account before, we can send a password reset link to your registered email. </p>
        <div class="form-group mb-4">
          <label class="d-block text-left" for="inputUser">Input Email</label>
          <input type="text" id="inputUser" class="form-control form-control-lg" required="" autofocus="">
          <p class="text-muted">
            <small>We'll send password reset link to your email.</small>
          </p>
        </div>
        <div class="form-group">
          <button class="btn btn-lg btn-primary btn-block" type="submit" formaction="generalSignin.html">Rest Password</button>
        </div>
        <div class="d-block d-md-inline-block" style="padding-left:34%">
          <a href="generalSignin.html" class="btn btn-block btn-light">Return to signin</a>
        </div>
      </form>
    </main>
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/vendor/bootstrap/js/popper.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="/js/main.min.js"></script>
  </body>
</html>
