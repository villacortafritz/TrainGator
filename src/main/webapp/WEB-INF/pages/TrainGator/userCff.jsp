
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title> Course Feedback Form | TrainGator </title>
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
        <div class="page-inner" style="padding-left:15%; padding-right:15%;">
          <header class="page-title-bar">
            <h1 class="page-title" style="text-align:center;"> Course Feedback Form</h1>
          </header>
          <div class="page-section">
            <div class="section-deck">
                <section class="card card-fluid">
                  <div class="card-body">
                    <div class="form-group">
                      <strong><label for="customCheck1">1. Comprehension of the Subject. (This question pertains to how the comprehension of the student improved,<br>&nbsp;&nbsp;&nbsp; by comparing their comprehension before the class and after the class.) </label></strong><br>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="1CheckBox1">
                        <label class="custom-control-label" for="1CheckBox1">3 or more Levels</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="1CheckBox2">
                        <label class="custom-control-label" for="1CheckBox2">2 Levels</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="1CheckBox3">
                        <label class="custom-control-label" for="1CheckBox3">1 Level</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="1CheckBox4">
                        <label class="custom-control-label" for="1CheckBox4">No Improvement</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="1CheckBox5">
                        <label class="custom-control-label" for="1CheckBox5">Regressed</label>
                      </div>
                    </div>
                    <div class="form-group">
                      <strong><label for="customCheck1">2. If your answer to #1 is either "No improvement" or "Regressed", give your reason(s) by choosing one or several of the items below:  </label></strong><br>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="2CheckBox1">
                        <label class="custom-control-label" for="2CheckBox1">The textbooks/manuals were too difficult.</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="2CheckBox2">
                        <label class="custom-control-label" for="2CheckBox2">The textbooks/manuals were inadequate.</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="2CheckBox3">
                        <label class="custom-control-label" for="2CheckBox3">The explanation of the instructor was insufficient.</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="2CheckBox4">
                        <label class="custom-control-label" for="2CheckBox4">The content of the lectures was too difficult.</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="2CheckBox5">
                        <label class="custom-control-label" for="2CheckBox5">The size of the class was too big.</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="2CheckBox6">
                        <label class="custom-control-label" for="2CheckBox6">I did not have enough time to finish the exercise.</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="2CheckBox7">
                        <label class="custom-control-label" for="2CheckBox7">I did not have pre-knowledge of this subject.</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="2CheckBox8">
                        <label class="custom-control-label" for="2CheckBox8">I was absent during critical period of the subject.</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="2CheckBox9">
                        <label class="custom-control-label" for="2CheckBox9">I did not pay sufficient attention to instructor.</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="2CheckBox10">
                        <label class="custom-control-label" for="2CheckBox10">My computer experience was insufficient.</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="2CheckBox11">
                        <label class="custom-control-label" for="2CheckBox11">Other  </label>
                      </div>
                    </div>
                    <div class="form-group">
                      <strong><label for="customCheck1">3. How well did you understand each objective given by the instructor? </label></strong><br>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="3CheckBox1">
                        <label class="custom-control-label" for="3CheckBox1">Very Well</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="3CheckBox2">
                        <label class="custom-control-label" for="3CheckBox2">Well</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="3CheckBox3">
                        <label class="custom-control-label" for="3CheckBox3">Fair</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="3CheckBox4">
                        <label class="custom-control-label" for="3CheckBox4">Little</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="3CheckBox5">
                        <label class="custom-control-label" for="3CheckBox5">Very Little.</label>
                      </div>
                      <div class="custom-control custom-checkbox" style="margin-left:20px">
                        <input type="checkbox" class="custom-control-input" id="3CheckBox6">
                        <label class="custom-control-label" for="3CheckBox6">No Response</label>
                      </div>
                    </div>
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
