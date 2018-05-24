
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Course Feedback Form | TrainGator </title>
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
              <ul class="header-nav nav">
                <li class="nav-item dropdown header-nav-dropdown has-notified">
                  <a class="nav-link" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="oi oi-pulse"></span>
                  </a>
                  <div class="dropdown-arrow"></div>
                  <div class="dropdown-menu dropdown-menu-rich dropdown-menu-right">
                    <h6 class="dropdown-header stop-propagation">
                      <span>Activities
                        <span class="badge">(1)</span>
                      </span>
                    </h6>
                    <div class="dropdown-scroll has-scrollable">
                      <a href="#" class="dropdown-item unread">
                        <div class="user-avatar"><img src="/images/avatars/uifaces15.jpg" alt=""></div>
                        <div class="dropdown-item-body"><p class="text"> Jeffrey Wells created a schedule </p></div>
                      </a>
                  </div>
                </li>
              </ul>
              <button class="btn btn-primary" style="height:55px" onclick="window.location = 'userJoined.html'">
                <span class="oi oi-home ml-1"></span>
              </button>
              <div class="dropdown">
                <button class="btn-account d-none d-md-flex" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <span class="user-avatar">
                    <img src="/images/avatars/profile.jpg" alt="">
                  </span>
                  <span class="account-summary pr-lg-4 d-none d-lg-block">
                    <span class="account-name">N${fname} ${lname}</span>
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
            <h1 class="page-title" style="text-align:center;"> Course Feedback Form</h1>
          </header>
          <div class="page-section">
            <div class="section-deck">
                <section class="card card-fluid">
                  <div class="card-body">
                    <table>
                      <tr style="padding: 10px; margin: 10px;">
                        Question 1
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        <textarea class="form-control" placeholder="Enter comment here"></textarea>
                        </br>
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        Question 2
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        <textarea class="form-control" placeholder="Enter comment here"></textarea>
                        </br>
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        Question 3
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        <textarea class="form-control" placeholder="Enter comment here"></textarea>
                        </br>
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        Question 4
                      </tr>
                      <tr style="padding: 10px; margin: 10px;">
                        <textarea class="form-control" placeholder="Enter comment here"></textarea>
                        </br>
                      </tr>
                    </table>
                  </div>
                </section>
            </div>
            <div class="form-actions" style="padding-left:45%">
              <button class="btn btn-primary" type="submit" onclick="window.location.href='userAccomplished.html'">Submit form</button>
            </div>
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
