<!-- adminAttendance page is only accessible by an administrator. -->
<!-- adminAttendance is a the administrator's access point to open the list of participants assigned in the event. -->
<!-- adminAttendance is a page wherein the administrator can assign the status of the participant if they are present during the event. -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic information about the page (eg. name of page) is reflected within the head tag. -->
<!-- start implementation for the head tag. -->
<head>
  <title> Attendance | TrainGator </title>
  <link rel="stylesheet" href="/vendor/flatpickr/flatpickr.min.css">
  <link rel="shortcut icon" href="/icon.png">
  <link rel="stylesheet" href="/vendor/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
  <link rel="stylesheet" href="/css/main.min.css">
  <link rel="stylesheet" href="/vendor/open-iconic/css/open-iconic-bootstrap.min.css">
</head>
<!-- end implementation for the head tag. -->
<body>
  <div class="app has-fullwidth">
<!-- There are 4 components within the header tag: TrainGator logo, user search bar, home button, user options. -->
<!-- start implementation for the header. -->
    <header class="app-header">
<<<<<<< HEAD
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
=======
        <div class="top-bar">
<!-- The TrainGator logo is seen at the left-most side of the header, it is used for redirecting the user to it's default landing page. -->
<!-- start implementation for the TrainGator logo. -->
          <div class="top-bar-brand">
            <a href="adminOngoing.html">
              <img src="/images/rect-logo.png" height="45" alt="">
            </a>
          </div>
<!-- end implementation for the TrainGator logo. -->
          <div class="top-bar-list">
            <div class="top-bar-item top-bar-item-full">
              <div class="top-bar-search">
                <div class="input-group input-group-search">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <span class="oi oi-magnifying-glass"></span>
>>>>>>> 3d4ee8733ed80df0e27cdb3c38ccb65e8cc054c1
                    </span>
<!-- The search bar at the header has the purpose of searching the users within the database. -->
<!-- start implentation for the search bar. -->
                  </div>
                  <input type="text" class="form-control" aria-label="Search" placeholder="Search for a specific person">
                 </div>
<!-- end implementation for the search bar. -->
              </div>
            </div>
<!-- The home button is located at the header since it has the purpose of redirecting the user back to it's default landing page. -->
<!-- start implementation for the search bar. -->
            <div class="top-bar-item top-bar-item-right px-0 d-none d-sm-flex">
              <button class="btn btn-primary" style="height:55px" onclick="window.location = 'adminOngoing'">
                <span class="oi oi-home ml-1"></span>
              </button>
<!-- end implementation for the search bar. -->
<!-- The user option consists of the log out button for the purpose of logging out the user in it's current session. -->
<!-- start implementation for the user option. -->
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
                  <h6 class="dropdown-header d-none d-md-block d-lg-none"> Name of Admin </h6>
                  <a class="dropdown-item" href="generalSignin.html">
                    <span class="dropdown-icon oi oi-account-logout"></span> Logout</a>
                    <div class="dropdown-divider"></div>
                </div>
              </div>
<!-- end implementation for the user option. -->
            </div>
          </div>
        </div>
      </header>
<!-- end implementation for the header. -->
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
<<<<<<< HEAD
                 
=======
>>>>>>> 3d4ee8733ed80df0e27cdb3c38ccb65e8cc054c1
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
<<<<<<< HEAD
					</c:forEach>	
=======
					</c:forEach>           
                    <tr>
                      <td class="align-middle"></td>
                      <td>
                        <a>Name of Participant</a>
                      </td>
                      <td class="align-middle">
                        <label class="switcher-control" style="margin-left:8px">
                        <input type="checkbox" name="onoffswitch" class="switcher-input">
                        <span class="switcher-indicator"></span>
                        </label>
                     </td>
                  </tr>
>>>>>>> 3d4ee8733ed80df0e27cdb3c38ccb65e8cc054c1
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
<<<<<<< HEAD

      

=======
      <div class="form-actions" style="padding-left:45%">
        <button class="btn btn-primary" type="submit" onclick="window.location.href='adminOngoing.html'">Confirm</button>
      </div>
>>>>>>> 3d4ee8733ed80df0e27cdb3c38ccb65e8cc054c1
    </main>
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/popper.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
  <script src="/js/main.min.js"></script>
  <script src="/vendor/flatpickr/flatpickr.min.js"></script>
  <script src="/js/pages/flatpickr-demo.js"></script>
</body>
</html>