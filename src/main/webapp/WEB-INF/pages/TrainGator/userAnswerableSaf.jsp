<!-- userAnswerableSaf page is only accessible by a user. -->
<!-- userAnswerableSaf page is where the user can view the employee's being assigned for answering of SAF. -->
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
<body>
  <div class="app has-fullwidth">
<!-- There are 4 components within the header tag: TrainGator logo, user search bar, home button, user options. -->
<!-- start implementation for the header. -->
  <header class="app-header">
        <div class="top-bar">
<!-- The TrainGator logo is seen at the left-most side of the header, it is used for redirecting the user to it's default landing page. -->
<!-- start implementation for the TrainGator logo. -->
          <div class="top-bar-brand">
            <a href="userJoined.html">
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
              <button class="btn btn-primary" style="height:55px" onclick="window.location = 'userJoined.html'">
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
                </div>
              </div>
<!-- end implementation for the user option. -->
            </div>
          </div>
        </div>
      </header>
<!-- end implementation for the header. -->
  <main class="app-main">
    <header class="page-cover">
      <div class="text-center">
        <h2 class="h4 mt-3 mb-0"> Name of User </h2>
        <p class="text-muted"> Participant/Supervisor </p>
      </div>
    </header>
    <nav class="page-navs">
      <div class="nav-scroller">
        <div class="nav nav-center nav-tabs">
          <a class="nav-link" href="userJoined.html">Joined Trainings</a>
          <a class="nav-link" href="userUpcoming.html">Upcoming Trainings</a>
          <a class="nav-link" href="userRecommended.html">Recommended Trainings</a>
          <a class="nav-link" href="userAccomplished.html">Accomplished Trainings</a>
          <a class="nav-link active" href="userAnswerableSaf.html">Answerable Skills Assessment Form</a>
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
                      <th style="width:55px"></th>
                      <th style="min-width:150px;">Name of Employee</th>
                      <th style="padding-left:55px">Assign Peer 1</th>
                      <th style="padding-left:55px">Assign Peer 2</th>
                      <th style="padding-left:55px">Assign Peer 3</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                    <td class="align-middle"></td>
                    <td><a>Name of Employee</a></td>
                    <td class="align-middle">
                        <select id="exampleSelect1" class="custom-select" style="width:180px">
                          <option selected>Select Peer </option>
                          <option value="1"> One </option>
                        </select>
                    </td>
                    <td class="align-middle">
                        <select id="exampleSelect1" class="custom-select" style="width:180px">
                          <option selected>Select Peer </option>
                          <option value="1"> One </option>
                        </select>
                    </td>
                    <td class="align-middle">
                        <select id="exampleSelect1" class="custom-select" style="width:180px">
                          <option selected>Select Peer </option>
                          <option value="1"> One </option>
                        </select>
                    </td>
                    <td class="align-middle"><button class="btn btn-primary" type="submit" onclick="window.location.href='userTeaf.html'">Answer as Supervisor</button></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>

      <div class="page-inner">
        <div class="page-section">
        <section class="card card-fluid">
          <div class="card-body">
            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr>
                    <th style="width:55px"></th>
                    <th style="text-align:center;">Name of Employee</th>
                    <th style="text-align:center;padding-left:90px">Answer Skills Assessment Form of Employee</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                  <td class="align-middle"></td>
                  <td><a>Name of Employee</a></td>
                  <td class="align-middle" style="padding-left:100px"><button class="btn btn-primary" type="submit" onclick="window.location.href='userSaf.html'" style="width:750px">Answer as Peer</button></td>
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
