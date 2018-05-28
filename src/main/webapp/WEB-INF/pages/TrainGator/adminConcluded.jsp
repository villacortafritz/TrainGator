<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
  <!DOCTYPE html>
<html lang="en">
<head>
  <title> Admin Concluded Trainings | TrainGator </title>
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
          <a href="adminOngoing.html">
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
                  <span class="account-name">Name of Admin</span>
                  <span class="account-description">Administrator</span>
                </span>
              </button>
              <div class="dropdown-arrow dropdown-arrow-left"></div>
              <div class="dropdown-menu">
                <h6 class="dropdown-header d-none d-md-block d-lg-none"> Name of User </h6>
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
    <div class="wrapper">
      <div class="page">
        <div class="page">
          <div class="wrapper">
            <div class="page">
              <nav class="page-navs">
                <div class="nav-scroller">
                  <div class="nav nav-center nav-tabs">
                    <a class="nav-link" href="adminOngoing.html">On-going Trainings</a>
                    <a class="nav-link" href="adminUpcoming.html">Upcoming Trainings</a>
                    <a class="nav-link active" href="adminConcluded.html">Concluded Trainings</a>
                  </div>
                </div>
              </nav>
              <div class="page-inner">
                <div class="page-section">
                <section class="card card-fluid">
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table">
                        <thead>
                          <tr>
                            <th style="width:62px"></th>
                            <th style="min-width:280px">Concluded Training List</th>
                            <th> Number of Participants </th>
                            <th> Success Rate </th>
                            <th style="width: 50px;"> &nbsp; </th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                          <td class="align-middle"></td>
                          <td><a><br>Name of Training</a></td>
                          <td class="align-middle"> 10 </td>
                          <td class="align-middle"> 90% </td>
                          <td class="align-middle text-right">
                            <div class="btn-group">
                              <button class="btn btn-primary" style="width:200px" type="submit" onclick="window.location = 'adminTeaf.html'">Edit Training Effectiveness <br>Assessment Form Questions</button>
                            </div>
                          </td>
                          <td class="align-middle text-right">
                            <div class="btn-group">
                              <button class="btn btn-primary" style="height:60px"type="submit" onclick="window.location = 'adminEventComments.html'">View Results</button>
                            </div>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
</main>
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/popper.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/js/main.min.js"></script>
</body>
</html>
