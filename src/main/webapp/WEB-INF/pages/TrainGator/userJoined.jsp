<!DOCTYPE html>
<html lang="en">
<head>
  <title> Home | TrainGator </title>
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
          <div class="wrapper">
            <div class="page">
              <header class="page-cover">
                <div class="text-center">
                  <a href="userJoined.html" class="user-avatar user-avatar-xl">
                    <img src="/images/avatars/profile.jpg" alt="User Avatar">
                  </a>
                  <h2 class="h4 mt-3 mb-0"> Name of User </h2>
                  <p class="text-muted"> Participant/Supervisor </p>
                </div>
              </header>
          <div class="page">
            <div class="wrapper">
              <div class="page">
                <nav class="page-navs">
                  <div class="nav-scroller">
                    <div class="nav nav-center nav-tabs">
                      <a class="nav-link active" href="userJoined.html">Joined Trainings</a>
                      <a class="nav-link" href="userUpcoming.html">Upcoming Trainings</a>
                      <a class="nav-link" href="userRecommended.html">Recommended Trainings</a>
                      <a class="nav-link" href="userAccomplished.html">Accomplished Trainings</a>
                    </div>
                  </div>
                </nav>
                <div class="page-inner">
                  <header class="page-title-bar">
                    <div>
                      <button class="btn btn-primary" type="submit" style="width:49%" onclick="window.location.href='userTna.html'">Answer Training Needs Analysis Form</button>
                      <button class="btn btn-primary" type="submit" style="width:50%" onclick="window.location.href='userSaf.html'">Answer Skills Assessment Form</button>
                    </div>
                  </header>
                  <div class="page-section">
                    <section class="card">
                      <div class="list-group list-group-messages list-group-flush list-group-bordered">
                        <div class="list-group-item unread">
                          <div class="page-section">
                            <div class="section-block">
                              <div class="board board-list">
                                <section class="tasks">
                                  <header class="task-header">
                                    <h1 class="task-title mr-auto"> Joined Training List
                                    </h1>
                                  </header>
                                  <div class="task-issue">
                                    <div class="card">
                                      <header class="card-header">
                                        <h4 class="card-title">
                                          <a href="#">Name of Training</a>
                                        </h4>
                                        <h6 class="card-subtitle text-muted">
                                          <span class="due-date">Progress: </span>
                                          <time class="text-muted">Day 4</time> /
                                          <time class="text-muted">Day 6</time>
                                          <br>
                                          <span class="due-date">Date: 2018-01-01 to 2018-01-06</span>
                                          <br>
                                          <span class="due-date">Facilitator: Name of Facilitator</span>
                                          <br>
                                          <br>
                                          <button class="btn btn-primary" type="submit" style="width:80%" onclick="window.location.href='userAttendance.html'">Attendance</button>
                                        </h6>
                                      </header>
                                      <div class="card-body">
                                        <div class="list-group">
                                          <div class="list-group-item">
                                            <div class="list-group-item-body py-1 text-truncate">
                                                <i class="fa fa-long-arrow-alt-right"></i>
                                              <div class="avatar-group">
                                                <a href="#" class="user-avatar user-avatar-sm" data-toggle="tooltip" title="Name of User">
                                                  <img src="/images/avatars/uifaces2.jpg" alt="Name of User">
                                                </a>
                                              </div>
                                            </div>
                                          </div>
                                          <a href="#" class="list-group-item pt-0">
                                            <div class="list-group-item-body">
                                              <div class="progress progress-xs">
                                                <div class="progress-bar bg-success" role="progressbar" style="width: 66.66666666666667%;" aria-valuenow="66.66666666666667" aria-valuemin="0" aria-valuemax="100"></div>
                                              </div>
                                            </div>
                                            <div class="list-group-item-figure">
                                              <span class="todos">Day 4 / Day 6</span>
                                            </div>
                                          </a>
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
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/popper.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
  <script src="/js/main.min.js"></script>
</body>
</html>
