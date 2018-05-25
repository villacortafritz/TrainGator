<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title> Admin Training Effectiveness Assessment Form | TrainGator </title>
  <link rel="shortcut icon" href="/icon.png">
  <link rel="stylesheet" href="/vendor/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
  <link rel="stylesheet" href="/css/main.min.css">
  <link rel="stylesheet" href="/vendor/open-iconic/css/open-iconic-bootstrap.min.css">
</head>
<body>
<div class="app has-fullwidth">
  <header class="app-header">
        <div class="top-bar">
          <div class="top-bar-brand">
            <a href="userJoined.html">
              <img src="/images/rect-logo.png" height="45" alt="">
            </a>
          </div>
          <div class="top-bar-list">
            <div class="top-bar-item top-bar-item-full">
              <div class="top-bar-search">
                <div class="input-group input-group-search">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <span class="oi oi-magnifying-glass"></span>
                    </span>
                  </div>
                  <input type="text" class="form-control" aria-label="Search" placeholder="Search for a specific person"> </div>
              </div>
            </div>
            <div class="top-bar-item top-bar-item-right px-0 d-none d-sm-flex">
              <button class="btn btn-primary" style="height:55px" onclick="window.location = 'adminOngoing.html'">
                <span class="oi oi-home ml-1"></span>
              </button>
              <div class="dropdown">
                <button class="btn-account d-none d-md-flex" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <span class="user-avatar">
                    <img src="/images/avatars/profile.jpg" alt="">
                  </span>
                  <span class="account-summary pr-lg-4 d-none d-lg-block">
                    <span class="account-name">${fname} ${lname}</span>
                    <span class="account-description">${usertype}</span>
                  </span>
                </button>
                <div class="dropdown-arrow dropdown-arrow-left"></div>
                <div class="dropdown-menu">
                  <h6 class="dropdown-header d-none d-md-block d-lg-none">${fname} ${lname}</h6>
                  <a class="dropdown-item" href="generalSignin.html">
                    <span class="dropdown-icon oi oi-account-logout"></span> Logout</a>
                    <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#">Help Center</a>
                  <a class="dropdown-item" href="#">Ask Forum</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </header>
  <main class="app-main">
    <div class="wrapper">
      <div class="page">
        <div class="page-inner" style="padding-left:15%; padding-right:15%;">
          <header class="page-title-bar">
            <h1 class="page-title" style="text-align:center;"> Training Effectiveness Assessment Form </h1>
          </header>
          <div class="page-section">
          <form action="http://localhost:8080/submitQuestions" method="post">
            <div class="section-deck">
                <section class="card card-fluid">
                  <div class="card-body">
                    <table>
                      <tr style="padding: 10px; margin: 10px;">
                        Input for Question 1
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        <textarea name="ques1" class="form-control" placeholder="Enter question here"></textarea>
                        </br>
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        Input for Question 2
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        <textarea name="ques2" class="form-control" placeholder="Enter question here"></textarea>
                        </br>
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        Input for Question 3
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        <textarea name="ques3" class="form-control" placeholder="Enter question here"></textarea>
                        </br>
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        Input for Question 4
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        <textarea name="ques4" class="form-control" placeholder="Enter question here"></textarea>
                        </br>
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        Input for Question 5
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        <textarea name="ques5" class="form-control" placeholder="Enter question here"></textarea>
                        </br>
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        Input for Question 6
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        <textarea name="ques6" class="form-control" placeholder="Enter question here"></textarea>
                        </br>
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        Input for Question 7
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        <textarea name="ques7" class="form-control" placeholder="Enter question here"></textarea>
                        </br>
                      </tr>
                    </table>
                  </div>
                </section>
            </div>
            <div class="form-actions" style="padding-left:45%">
              <button class="btn btn-primary" type="submit">Submit form</button>
            </div>
           </form> 
          </div>
      </div>
    </div>
  </main>
  </div>
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/popper.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
  <script src="/vendor/stacked-menu/stacked-menu.min.js"></script>
  <script src="/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
  <script src="/js/main.min.js"></script>
</body>
</html>
