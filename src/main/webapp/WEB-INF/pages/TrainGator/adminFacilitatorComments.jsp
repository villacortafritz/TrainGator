<!-- adminFacilitatorComments page is only accessible by an administrator. -->
<!-- adminFacilitatorComments is also the training results page, but highlighting the facilitator comments. -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic information about the page (eg. name of page) is reflected within the head tag. -->
<!-- start implementation for the head tag. -->
<head>
  <title> Training Results | TrainGator </title>
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
                  <div class="page-section">
                    <div class="section-block">
                      <div class="row">
                        <div class="col-lg-12">
                          <section class="card">
                            <header class="card-header" style="text-align:center"> Game of Codes 2017 </header>
                            <div class="card-footer-content text-muted">Duration of Training </div>
                            <p class="card-text" style="text-align:center">December 04, 2018 - December 06, 2018
                            </p>
                            <div class="card-footer-content text-muted">Schedule of Training </div>
                            <p class="card-text" style="text-align:center"> 8:00 AM - 12:30 PM
                            </p>
                              <div class="card-footer-content text-muted">Training Facilitator </div>
                              <p class="card-text" style="text-align:center"> Facilitator's Name
                              </p>
                            <div class="card-footer-content text-muted">Training Course Objective and Outline </div>
                            <p class="card-text" style="text-align:center"> Blanditiis architecto quaerat fugit sit ab veritatis ipsam assumenda doloremque repellendus expedita.
                            </p>
                            <br>
                        </div>
                      </div>
                      <div class="metric-row">
                        <div class="col-12 col-sm-6 col-lg-3">
                          <div class="card-metric">
                            <div class="metric">
                              <h1 class="value">80%</h1>
                              </p>
                              <h2 class="metric-label"> Success Rate </h2>
                            </div>
                          </div>
                        </div>
                        <div class="col-12 col-sm-6 col-lg-3">
                          <div class="card-metric">
                            <div class="metric">
                              <h1 class="value">20%</h1>
                              </p>
                              <h2 class="metric-label"> Failure Rate </h2>
                            </div>
                          </div>
                        </div>
                        <div class="col-12 col-sm-6 col-lg-3">
                          <div class="card-metric">
                            <div class="metric">
                              <h1 class="value">70%</h1>
                              </p>
                              <h2 class="metric-label"> Facilitator's Rating </h2>
                            </div>
                          </div>
                        </div>
                        <div class="col-12 col-sm-6 col-lg-3">
                          <div class="card-metric">
                            <div class="metric">
                              <h1 class="value">120</h1>
                              </p>
                              <h2 class="metric-label">Number of Participants </h2>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="page-section">
                    <div class="col-lg-12">
                    <section class="card">
                      <div class="list-group list-group-messages list-group-flush list-group-bordered">
                        <nav class="page-navs">
                           <div class="nav-scroller">
                             <div class="nav nav-center nav-tabs">
                               <a class="nav-link" href="adminEventComments.html">Event Comments</a>
                               <a class="nav-link active" href="adminFacilitatorComments.html">Facilitator Comments</a>
                             </div>
                           </div>
                         </nav>
                        <div class="list-group-item read">
                          <div class="list-group-item-body pl-md-2">
                            <div class="row">
                              <div class="col-12 col-lg-3 d-none d-lg-block">
                                <h4 class="list-group-item-title text-truncate">
                                  <a><br><br><br><br><br><br><br>Name of Participant</a>
                                </h4>
                              </div>
                              <div class="col-12 col-lg-7">
                                <p class="list-group-item-text text-truncate"> Answer 1: Answer </p><br>
                                <p class="list-group-item-text text-truncate"> Answer 2: Answer </p><br>
                                <p class="list-group-item-text text-truncate"> Answer 3: Answer </p><br>
                                <p class="list-group-item-text text-truncate"> Answer 4: Answer </p><br>
                                <p class="list-group-item-text text-truncate"> Answer 5: Answer </p><br>
                                <p class="list-group-item-text text-truncate"> Answer 6: Answer </p><br>
                                <p class="list-group-item-text text-truncate"> Answer 7: Answer </p><br>
                                <p class="list-group-item-text text-truncate"> Answer 8: Answer </p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </section>
                  <div class="form-actions" style="padding-left:40%">
                    <button class="btn btn-primary" type="submit" onclick="window.location.href='adminConcluded.html'">Back to Concluded Trainings List</button>
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
      </script>
    </body>
    </html>
