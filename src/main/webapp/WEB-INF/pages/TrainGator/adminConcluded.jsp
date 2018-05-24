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
                <input type="text" class="form-control" aria-label="Search" placeholder="Search"> </div>
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
                          <td><a><br><br>Name of Training</a></td>
                          <td class="align-middle"><br> 10 </td>
                          <td class="align-middle"><br> 90% </td>
                          <td class="align-middle text-right">
                            <div class="btn-group">
                              <button class="btn btn-primary" style="height:100px" type="submit" onclick="window.location = 'adminCff.html'">Edit Course <br> Feedback <br> Form Questions</button>
                            </div>
                          </td>
                          <td class="align-middle text-right">
                            <div class="btn-group">
                              <button class="btn btn-primary" style="height:100px" type="submit" onclick="window.location = 'adminFff.html'">Edit Facilitator's <br> Feedback <br> Form Questions</button>
                            </div>
                          </td>
                          <td class="align-middle text-right">
                            <div class="btn-group">
                              <button class="btn btn-primary" style="height:100px" type="submit" onclick="window.location = 'adminTeaf.html'">Edit Training <br> Effectiveness <br> Assessment Form <br> Questions</button>
                            </div>
                          </td>
                          <td class="align-middle text-right">
                            <div class="btn-group">
                              <button class="btn btn-primary" style="height:100px" type="submit" onclick="window.location = 'adminEventComments.html'">View Results</button>
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
