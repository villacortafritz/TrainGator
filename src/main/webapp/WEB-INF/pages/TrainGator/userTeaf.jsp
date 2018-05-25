
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<html lang="en">
<head>
  <title>Training Effectiveness Analysis Form | TrainGator </title>
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
                        <span class="account-name">${fname} ${lname}</span>
                        <span class="account-description">${usertype}</span>
                      </span>
                    </button>
                    <div class="dropdown-arrow dropdown-arrow-left"></div>
                    <div class="dropdown-menu">
                      <h6 class="dropdown-header d-none d-md-block d-lg-none"> ${fname} ${lname} </h6>
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
        <div class="page-inner" style="padding-left:15%;padding-right:15%;">
          <header class="page-title-bar">
            <h1 class="page-title"  style="text-align:Center;"> Training Effectiveness Assessment Form </h1>
          </header>
          <div class="page-section">
            <div class="section-deck">
              <section class="card card-fluid">
                <div class="card-body" style="padding-top: 50px;">
                  <form action="http://localhost:8080/submitAnswerTeaf" method="post">
                    <fieldset>
                      <div class="form-group">
                      	
                        <label for="exampleInputEmail1">1. ${questions.get(0).catDesc}</label>
                        <div class="col-lg-9" style="padding-top: 10px;">
                          <section class="text-center text-sm-left">
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr01" name="q1teaf" value="5">
                              <label class="visual-picker-figure" for="vpr01">
                                <span class="visual-picker-content">
                                  <strong>Strongly Agree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr02" name="q1teaf" value="4">
                              <label class="visual-picker-figure" for="vpr02">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Agree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr03" name="q1teaf" value="3">
                              <label class="visual-picker-figure" for="vpr03">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Neutral</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr04" name="q1teaf" value="2">
                              <label class="visual-picker-figure" for="vpr04">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Disagree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr05" name="q1teaf" value="1">
                              <label class="visual-picker-figure" for="vpr05">
                                <span class="visual-picker-content" style="padding-top: 5px;">
                                  <strong>Strongly Disagree</strong>
                                </span>
                              </label>
                            </div>
                          </section>
                        </div>
                      </div>
                    </fieldset>
                  
                  </fieldset>
                      <div class="form-group">
                        <label for="exampleInputEmail1">2. ${questions.get(1).catDesc}</label>
                        <div class="col-lg-9" style="padding-top: 10px;">
                          <section class="text-center text-sm-left">
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr06" name="q2teaf" value="5" >
                              <label class="visual-picker-figure" for="vpr06">
                                <span class="visual-picker-content">
                                  <strong>Strongly Agree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr07" name="vprSM" name="q2teaf" value="4">
                              <label class="visual-picker-figure" for="vpr07">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Agree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr08" name="q2teaf" value="3">
                              <label class="visual-picker-figure" for="vpr08">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Neutral</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr09" name="q2teaf" value="2">
                              <label class="visual-picker-figure" for="vpr09">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Disagree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr10" name="q2teaf" value="1">
                              <label class="visual-picker-figure" for="vpr10">
                                <span class="visual-picker-content" style="padding-top: 5px;">
                                  <strong>Strongly Disagree</strong>
                                </span>
                              </label>
                            </div>
                          </section>
                        </div>
                      </div>
                    </fieldset>
                  
                    <fieldset>
                      <div class="form-group">
                        <label for="exampleInputEmail1">3. ${questions.get(2).catDesc}</label>
                        <div class="col-lg-9" style="padding-top: 10px;">
                          <section class="text-center text-sm-left">
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr11" name="q3teaf" value="5">
                              <label class="visual-picker-figure" for="vpr11">
                                <span class="visual-picker-content">
                                  <strong>Strongly Agree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr12" name="q3teaf" value="4">
                              <label class="visual-picker-figure" for="vpr12">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Agree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr13" name="q3teaf" value="3">
                              <label class="visual-picker-figure" for="vpr13">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Neutral</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr14" name="q3teaf" value="2">
                              <label class="visual-picker-figure" for="vpr14">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Disagree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr15" name="q3teaf" value="1">
                              <label class="visual-picker-figure" for="vpr15">
                                <span class="visual-picker-content" style="padding-top: 5px;">
                                  <strong>Strongly Disagree</strong>
                                </span>
                              </label>
                            </div>
                          </section>
                        </div>
                      </div>
                    </fieldset>
                  
                    <fieldset>
                      <div class="form-group">
                        <label for="exampleInputEmail1">4. ${questions.get(3).catDesc}</label>
                        <div class="col-lg-9" style="padding-top: 10px;">
                          <section class="text-center text-sm-left">
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr16" name="q4teaf" value="5">
                              <label class="visual-picker-figure" for="vpr16">
                                <span class="visual-picker-content">
                                  <strong>Strongly Agree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr17" name="q4teaf" value="4" >
                              <label class="visual-picker-figure" for="vpr17">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Agree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr18" name="q4teaf" value="3">
                              <label class="visual-picker-figure" for="vpr18">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Neutral</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr19" name="q4teaf" value="2">
                              <label class="visual-picker-figure" for="vpr19">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Disagree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr20" name="q4teaf" value="1">
                              <label class="visual-picker-figure" for="vpr20">
                                <span class="visual-picker-content" style="padding-top: 5px;">
                                  <strong>Strongly Disagree</strong>
                                </span>
                              </label>
                            </div>
                          </section>
                        </div>
                      </div>
                    </fieldset>
                  
                  <fieldset>
                      <div class="form-group">
                        <label for="exampleInputEmail1">5. ${questions.get(4).catDesc}</label>
                        <div class="col-lg-9" style="padding-top: 10px;">
                          <section class="text-center text-sm-left">
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr21" name="q5teaf" value="5">
                              <label class="visual-picker-figure" for="vpr21">
                                <span class="visual-picker-content">
                                  <strong>Strongly Agree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr22" name="q5teaf" value="4">
                              <label class="visual-picker-figure" for="vpr22">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Agree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr23" name="q5teaf" value="3">
                              <label class="visual-picker-figure" for="vpr23">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Neutral</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr24" name="q5teaf" value="2">
                              <label class="visual-picker-figure" for="vpr24">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Disagree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr25" name="q5teaf" value="1">
                              <label class="visual-picker-figure" for="vpr25">
                                <span class="visual-picker-content" style="padding-top: 5px;">
                                  <strong>Strongly Disagree</strong>
                                </span>
                              </label>
                            </div>
                          </section>
                        </div>
                      </div>
                    </fieldset>
                  
                    <fieldset>
                      <div class="form-group">
                        <label for="exampleInputEmail1">6. ${questions.get(5).catDesc}</label>
                        <div class="col-lg-9" style="padding-top: 10px;">
                          <section class="text-center text-sm-left">
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr26" name="q6teaf" value="5">
                              <label class="visual-picker-figure" for="vpr26">
                                <span class="visual-picker-content">
                                  <strong>Strongly Agree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr27" name="q6teaf" value="4">
                              <label class="visual-picker-figure" for="vpr27">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Agree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr28" name="q6teaf" value="3">
                              <label class="visual-picker-figure" for="vpr28">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Neutral</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr29" name="q6teaf" value="2">
                              <label class="visual-picker-figure" for="vpr29">
                                <span class="visual-picker-content" style="padding-bottom:15px;">
                                  <strong>Disagree</strong>
                                </span>
                              </label>
                            </div>
                            <div class="visual-picker visual-picker-sm has-peek px-3">
                              <input type="radio" id="vpr30" name="q6teaf" value="1">
                              <label class="visual-picker-figure" for="vpr30">
                                <span class="visual-picker-content" style="padding-top: 5px;">
                                  <strong>Strongly Disagree</strong>
                                </span>
                              </label>
                            </div>
                          </section>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="exampleTextarea">7. ${questions.get(6).catDesc}</label>
                        <textarea class="form-control" name="q7teaf" rows="3"></textarea>
                      </div>
                      <div class="form-group">
                        <label for="exampleTextarea">8. Other comments?</label>
                        <textarea class="form-control" name="q8teaf" rows="3"></textarea>
                      </div>
                    </fieldset>
                    <div class="form-actions" style="margin-left:45%">
		              <button class="btn btn-primary" type="submit" onclick="window.location.href='userAccomplished.html'">Submit form</button>
		            </div>
                  </form>
                </div>
              </section>
            </div>
            
          </div>
        </div>
      </div>
    </div>
  </main>
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/popper.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
  <script src="/vendor/stacked-menu/stacked-menu.min.js"></script>
  <script src="/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
  <script src="/js/main.min.js"></script>
</body>
</html>
