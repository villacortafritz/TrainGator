<!DOCTYPE html>
<html lang="en">
<head>
  <title> Create Training | TrainGator </title>
  <link rel="shortcut icon" href="/icon.png">
  <link rel="stylesheet" href="/vendor/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
  <link rel="stylesheet" href="/css/main.min.css">
  <link rel="stylesheet" href="/vendor/open-iconic/css/open-iconic-bootstrap.min.css">
  <link rel="stylesheet" href="/vendor/flatpickr/flatpickr.min.css">
  <link rel="stylesheet" href="/vendor/select2/css/select2.min.css">
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
          <div class="page">
            <div class="page-inner">
              <header class="page-title-bar">
                <h1 class="page-title" style="padding-left:35%"> Create Training Event </h1>
              </header>
              <div class="page-section">
                <div class="section-deck">
                  <section class="card card-fluid">
                    <div class="card-body">
                      <form method="post" action="http://localhost:8080/adminCreateEvent">
                        <div class="form-group">
                          <label class="control-label" for="flatpickr01">Input Starting Date</label>
                          <input id="flatpickr01" type="text" class="form-control" name="train_datestart" required=""> 
                        </div>
                        <div class="form-group">
                          <label class="control-label" for="flatpickr01">Input Ending Date</label>
                          <input id="flatpickr01" type="text" class="form-control" name="train_dateend" required=""> 
                        </div>
                        <div class="form-group">
                          <label class="control-label" for="flatpickr08">Input Start Time</label>
                          <input id="flatpickr08" type="text" class="form-control" name="train_timestart"> </div>
                        <div class="form-group">
                          <label class="control-label" for="flatpickr08">Input End Time</label>
                          <input id="flatpickr08" type="text" class="form-control" name="train_timeend"> </div>
                        <div class="form-group">
                          <label for="exampleTextarea">Input Course Objective and Course Outline for Training Event</label>
                          <textarea class="form-control" id="exampleTextarea" rows="3" name="train_courseobjective"></textarea>
                        </div>
                        <div class="form-actions">
                          <button class="btn btn-primary" type="submit">Confirm</button>
                          <button type="button" class="btn btn-sm btn-secondary" onclick="window.location.href='adminOngoing.html'">
                            <i class="far fa-trash-alt"></i>
                            <span>Remove</span>
                          </button>
                        </div>
                      </form>
                    </div>
                  </section>
                </div>
                <div class="form-actions" style="padding-left:40%">
                  <button class="btn btn-primary" type="submit" style="width:200px" onclick="window.location.href='adminOngoing.html'">Confirm</button>
                </div>
          </div>
        </div>
      </main>
    </div>
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/vendor/bootstrap/js/popper.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="/js/main.min.js"></script>
    <script src="/vendor/select2/js/select2.min.js"></script>
    <script src="/vendor/flatpickr/flatpickr.min.js"></script>
    <script src="/js/pages/select2-demo.js"></script>
    <script src="/js/pages/select2Facilitator-demo.js"></script>
    <script src="/js/pages/select2Supervisor-demo.js"></script>
    <script src="/js/pages/flatpickr-demo.js"></script>
  </body>
</html>
