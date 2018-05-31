<!-- userJoined page is only accessible by a user. -->
<!-- userJoined page is where the user can view the training event the user is currently in/doing. -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic information about the page (eg. name of page) is reflected within the head tag. -->
<!-- start implementation for the head tag. -->
<head>
  <title> Home | TrainGator </title>
  <link rel="shortcut icon" href="/icon.png">
  <link rel="stylesheet" href="/vendor/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
  <link rel="stylesheet" href="/css/main.min.css">
  <link rel="stylesheet" href="/vendor/open-iconic/css/open-iconic-bootstrap.min.css">
</head>
<!-- end implementation for the head tag. -->
<body onload="percent(${joined[0][9]},${joined[0][10]})">
  <div class="app has-fullwidth">
<!-- There are 4 components within the header tag: TrainGator logo, user search bar, home button, user options. -->
<!-- start implementation for the header. -->
  <header class="app-header">
        <div class="top-bar">
<!-- The TrainGator logo is seen at the left-most side of the header, it is used for redirecting the user to it's default landing page. -->
<!-- start implementation for the TrainGator logo. -->
          <div class="top-bar-brand">
            <a href="/user/userJoined">
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
                    </span>
<!-- The search bar at the header has the purpose of searching the users within the database. -->
<!-- start implentation for the search bar. -->
                  </div>
                  <input type="text" class="form-control" aria-label="Search" placeholder="Search for a specific person"> </div>
              </div>
<!-- end implementation for the search bar. -->
            </div>
<!-- The home button is located at the header since it has the purpose of redirecting the user back to it's default landing page. -->
<!-- start implementation for the search bar. -->
            <div class="top-bar-item top-bar-item-right px-0 d-none d-sm-flex">
              <button class="btn btn-primary" style="height:55px" onclick="window.location = '/user/userJoined'">
                <span class="oi oi-home ml-1"></span>
              </button>
<!-- end implementation for the search bar. -->
<!-- The user option consists of the log out button for the purpose of logging out the user in it's current session. -->
<!-- start implementation for the user option. -->
              <div class="dropdown">
                <button class="btn-account d-none d-md-flex" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <span class="account-summary pr-lg-4 d-none d-lg-block">
                    <span class="account-name">${fname} ${lname}</span>
                    <span class="account-description">${usertype}</span>
                  </span>
                </button>
                <div class="dropdown-arrow dropdown-arrow-left"></div>
                <div class="dropdown-menu">
                  <h6 class="dropdown-header d-none d-md-block d-lg-none">${fname} ${lname}</h6>
                  <a class="dropdown-item" href="/logout">
                    <span class="dropdown-icon oi oi-account-logout"></span> Logout</a>
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
          <div class="wrapper">
            <div class="page">
              <header class="page-cover">
                <div class="text-center">
                  <h2 class="h4 mt-3 mb-0">${fname} ${lname}</h2>
                  <p class="text-muted">${usertype}</p>
                </div>
              </header>
          <div class="page">
            <div class="wrapper">
              <div class="page">
                <nav class="page-navs">
                  <div class="nav-scroller">
                    <div class="nav nav-center nav-tabs">
                      <a class="nav-link active" href="/user/userJoined">Joined Trainings</a>
                      <a class="nav-link" href="/user/userUpcoming">Upcoming Trainings</a>
                      <a class="nav-link" href="/user/userRecommended">Recommended Trainings</a>
                      <a class="nav-link" href="/user/userAccomplished">Accomplished Trainings</a>
                      <a class="nav-link" href="/user/userAnswerableSaf">Answerable Skills Assessment Form</a>
                    </div>
                  </div>
                </nav>
                <div class="page-inner">
                  <header class="page-title-bar">
                    <div>
                      <c:if test="${usertype=='Supervisor/Manager'}">
                        <button class="btn btn-primary" id="usertnabtn"type="submit" style="width:100%" onclick="window.location.href='/user/userTna'">Answer Training Needs Analysis Form</button>
                      </c:if>
                    </div>
                      <c:if test="${AnsweredSaf}">
                        <button class="btn btn-primary" type="submit" style="width:100%" onclick="window.location.href='/user/userSaf?forId=${userID}'">Answer Skills Assessment Form</button>
                      </c:if>
                  </header>
                  </div>
                  <div class="page-section">
                    <section class="card">
                      <div class="list-group list-group-messages list-group-flush list-group-bordered">
                        <div class="list-group-item unread">
                          <div class="page-section">
                            <div class="section-block">
                              <div class="board board-list">
                                <section class="tasks">
                                  <header class="task-header">
                                    <h1 class="task-title mr-auto"> Joined Training
                                    </h1>
                                  </header>
                                  <div class="task-issue">
                                    <div class="card">
                                      <header class="card-header">
                                        <h4 class="card-title">
                                          ${joined[0][1]}
                                        </h4>
                                        <h6 class="card-subtitle text-muted">
                                          <span class="due-date">Date: 2018-01-01 to 2018-01-06</span>
                                          <br>
                                          <span class="due-date">Facilitator: Name of Facilitator</span>
                                          <br>
                                          <span class="due-date">${joined[0][2]} to ${joined[0][3]}</span>
                                          <hr>
                                          <button class="btn btn-primary btn-small" type="submit" style="width:80%" onclick="window.location.href='adminAttendance'">Attendance</button>
                                        </h6>
                                      </header>
                                      <div class="card-body">
                                        <div class="list-group">
                                          <div class="list-group-item">
                                            <div class="list-group-item-body py-1 text-truncate">
                                            </div>
                                          </div>
                                          <c:choose>
                                              <c:when test="${joined[0][9]==null}">
                                                <div class="list-group-item pt-0">
                                                  <div class="list-group-item-body">
                                                    <div class="progress progress-xs">
                                                      
                                                      <div class="progress-bar bg-success" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                  </div>
                                                  <div class="list-group-item-figure">
                                                    <span class="todos">Day 0 / Day ${joined[0][10]}</span>
                                                  </div>
                                                </div>
                                              </c:when>
                                              <c:otherwise>
                                                  <div class="list-group-item pt-0">
                                                  <div class="list-group-item-body">
                                                    <div class="progress progress-xs">
                                                      
                                                      <div class="progress-bar bg-success" id="displaypercent" role="progressbar"   aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                  </div>
                                                  <div class="list-group-item-figure">
                                                    <span class="todos">Day ${joined[0][9]} / Day ${joined[0][10]}</span>
                                                  </div>
                                                </div>
                                              </c:otherwise>
                                          </c:choose>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </section>
                              </div>
                            </div>
                          </div>
                    </section>
                  </div>
                </div>
              </div>
            </div>
      </main>
  <script type="text/javascript">
    function percent(n1,n2) {
      var x = (n1 / n2)*100;
      document.getElementById('displaypercent').style.width = x + '%';
    }
  </script>
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/popper.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
  <script src="/js/main.min.js"></script>
</body>
</html>
