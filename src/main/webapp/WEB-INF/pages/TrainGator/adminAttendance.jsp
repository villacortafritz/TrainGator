<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title> Attendance | TrainGator </title>
  <link rel="stylesheet" href="/vendor/flatpickr/flatpickr.min.css">
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
                <button class="btn btn-primary" style="height:55px" onclick="window.location = 'userJoined.html'">
                  <span class="oi oi-home ml-1"></span>
                </button>
                <div class="dropdown">
                  <button class="btn-account d-none d-md-flex" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="user-avatar">
                      <img src="/images/avatars/profile.jpg" alt="">
                    </span>
                    <span class="account-summary pr-lg-4 d-none d-lg-block">
                      <span class="account-name">Name of User</span>
                      <span class="account-description">Participant/Supervisor</span>
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
        <div class="page">
          <div class="page-inner">
          <header class="page-title-bar">
            <button type="button" class="btn btn-success btn-floated">
              <span class="fa fa-plus"></span>
            </button>
          <div class="d-sm-flex align-items-sm-center">
            <h1 class="page-title mr-sm-auto mb-0" style="padding-left:45%"> Attendance </h1>
          </div>
        </header>
        <div class="page-section">
            <div class="page-section">
            <section class="card card-fluid">
            <div class="card-body">
              <div class="table-responsive">
              <form action="http://localhost:8080/submitAttendance" method="post">
                <table class="table">
                  <thead>
                    <tr>
                      <th style="width:62px"></th>
                      <th style="min-width:280px"> Name of Participant </th>
                      <th> Present </th>
                    </tr>
                  </thead>
                  <tbody>
                  
                  	<c:forEach items="${confirmedList}" var="partAttend">
	                  	<tr>
	                      <td class="align-middle"></td>
	                      <td>
	                        <a>${partAttend[1]} ${partAttend[2]}</a>
	                      </td>
	                      <td class="align-middle">
	                        <label class="switcher-control" style="margin-left:8px">
	                        <input type="checkbox" name="confirmedAttend" class="switcher-input" value="${partAttend[0]}">
	                        <span class="switcher-indicator"></span>
	                        </label>
	                     </td>
	                  	</tr>                		
					</c:forEach>	
					                   
                </tbody>
              </table>
              <div class="form-actions" style="padding-left:45%">
		        <button class="btn btn-primary" type="submit">Confirm</button>
		      </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      
    </main>
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/popper.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
  <script src="/js/main.min.js"></script>
  <script src="/vendor/flatpickr/flatpickr.min.js"></script>
  <script src="/js/pages/flatpickr-demo.js"></script>
</body>
</html>