<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title> Skills Assessment Form | TrainGator </title>
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
          <div class="page-inner">
            <header class="page-title-bar">
                <h1 class="page-title" style="text-align:Center;"> Skills Assessment Form </h1>
            </header>
          <div class="page-section">  
            <div  class="section-deck">

              <form method="post" action="http://localhost:8080/userSaf"> <!-- change the action -->
                <input type="hidden" name="ansId" value="${userID}"><!-- assuming nga di peer/sv nag answer -->
                <input type="hidden" name="userId" value="${userID}">
                    <div class="col-lg-12">
                      <section class="card card-fluid">
                        <div class="card-body">
                          <h4 class="card-title" style="text-align:center"> Management </h4>
                            <font size="2px"style="padding-left:427px" > 1 &emsp; &emsp; 2 &emsp; &emsp;3 &emsp; &emsp; 4 &emsp; &emsp;5 &emsp; &emsp; 6 &emsp; &emsp; 7 &emsp; &emsp;8 &emsp; &emsp; 9 &emsp; &emsp;10  </font><br>
                              <br>
                              <span class="rating rating-primary">
                                <font size="3px" style="padding-left:200px">Scope Management &nbsp; </font>
                                <input  type="radio" name="1" id="scopemTrophy10" value="10" >
                                <label  style="padding-left:20px" style="padding-left:20px" for="scopemTrophy10">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="1" id="scopemTrophy9" value="9">
                                <label  style="padding-left:20px" for="scopemTrophy9">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="1" id="scopemTrophy8" value="8" checked>
                                <label style="padding-left:20px" for="scopemTrophy8">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="1" id="scopemTrophy7" value="7">
                                <label style="padding-left:20px" for="scopemTrophy7">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="1" id="scopemTrophy6" value="6">
                                <label style="padding-left:20px" for="scopemTrophy6">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="1" id="scopemTrophy5" value="5">
                                <label style="padding-left:20px" for="scopemTrophy5">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="1" id="scopemTrophy4" value="4">
                                <label style="padding-left:20px" for="scopemTrophy4">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="1" id="scopemTrophy3" value="3" checked>
                                <label style="padding-left:20px" for="scopemTrophy3">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="1" id="scopemTrophy2" value="2">
                                <label style="padding-left:20px" for="scopemTrophy2">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="1" id="scopemTrophy1" value="1">
                                <label  style="padding-left:68px" for="scopemTrophy1">
                                  <span class="fa fa-trophy"></span>
                                </label>
                              </span>

                              <br>
                              <span class="rating rating-primary">
                                <font size="3px" style="padding-left:200px">Schedule Management &nbsp; </font>
                                <input type="radio" name="2" id="scheTrophy10" value="10">
                                <label style="padding-left:20px" for="scheTrophy10">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="2" id="scheTrophy9" value="9">
                                <label style="padding-left:20px" for="scheTrophy9">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="2" id="scheTrophy8" value="8" checked>
                                <label style="padding-left:20px" for="scheTrophy8">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="2" id="scheTrophy7" value="7">
                                <label style="padding-left:20px" for="scheTrophy7">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="2" id="scheTrophy6" value="6">
                                <label style="padding-left:20px" for="scheTrophy6">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="2" id="scheTrophy5" value="5">
                                <label style="padding-left:20px" for="scheTrophy5">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="2" id="scheTrophy4" value="4">
                                <label style="padding-left:20px" for="scheTrophy4">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="2" id="scheTrophy3" value="3" checked>
                                <label style="padding-left:20px" for="scheTrophy3">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="2" id="scheTrophy2" value="2">
                                <label style="padding-left:20px" for="scheTrophy2">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="2" id="scheTrophy1" value="1">
                                <label style="padding-left:48px" for="scheTrophy1">
                                  <span class="fa fa-trophy"></span>
                                </label>
                              </span>

                              <br>
                              <span class="rating rating-primary">
                                <font size="3px" style="padding-left:200px">Quality Management &nbsp; </font>
                                <input type="radio" name="3" id="quaMTrophy10" value="10">
                                <label style="padding-left:20px" for="quaMTrophy10">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="3" id="quaMTrophy9" value="9">
                                <label style="padding-left:20px" for="quaMTrophy9">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="3" id="quaMTrophy8" value="8" checked>
                                <label style="padding-left:20px" for="quaMTrophy8">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="3" id="quaMTrophy7" value="7">
                                <label style="padding-left:20px" for="quaMTrophy7">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="3" id="quaMTrophy6" value="6">
                                <label style="padding-left:20px" for="quaMTrophy6">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="3" id="quaMTrophy5" value="5">
                                <label style="padding-left:20px" for="quaMTrophy5">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="3" id="quaMTrophy4" value="4">
                                <label style="padding-left:20px" for="quaMTrophy4">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="3" id="quaMTrophy3" value="3" checked>
                                <label style="padding-left:20px" for="quaMTrophy3">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="3" id="quaMTrophy2" value="2">
                                <label style="padding-left:20px" for="quaMTrophy2">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="3" id="quaMTrophy1" value="1">
                                <label  style="padding-left:63px" for="quaMTrophy1">
                                  <span class="fa fa-trophy"></span>
                                </label>
                              </span>

                              <br>
                              <span class="rating rating-primary">
                                <font size="3px" style="padding-left:200px">Manpower Management &nbsp; </font>
                                <input type="radio" name="4" id="manTrophy10" value="10">
                                <label style="padding-left:20px" for="manTrophy10">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="4" id="manTrophy9" value="9">
                                <label style="padding-left:20px" for="manTrophy9">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="4" id="manTrophy8" value="8" checked>
                                <label style="padding-left:20px" for="manTrophy8">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="4" id="manTrophy7" value="7">
                                <label style="padding-left:20px" for="manTrophy7">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="4" id="manTrophy6" value="6">
                                <label style="padding-left:20px" for="manTrophy6">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="4" id="manTrophy5" value="5">
                                <label style="padding-left:20px" for="manTrophy5">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="4" id="manTrophy4" value="4">
                                <label style="padding-left:20px" for="manTrophy4">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="4" id="manTrophy3" value="3" checked>
                                <label style="padding-left:20px" for="manTrophy3">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="4" id="manTrophy2" value="2">
                                <label style="padding-left:20px" for="manTrophy2">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="4" id="manTrophy1" value="1">
                                <label style="padding-left:38px" style="padding-left:37px" for="manTrophy1">
                                  <span class="fa fa-trophy"></span>
                                </label>
                              </span>

                              <br>
                              <span class="rating rating-primary">
                                <font size="3px" style="padding-left:200px">Cost Management &nbsp; </font>
                                <input type="radio" name="cosTrophy" id="cosTrophy10" value="10">
                                <label style="padding-left:20px" for="cosTrophy10">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="5" id="cosTrophy9" value="9">
                                <label style="padding-left:20px" for="cosTrophy9">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="5" id="cosTrophy8" value="8" checked>
                                <label style="padding-left:20px" for="cosTrophy8">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="5" id="cosTrophy7" value="7">
                                <label style="padding-left:20px" for="cosTrophy7">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="5" id="cosTrophy6" value="6">
                                <label style="padding-left:20px" for="cosTrophy6">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="5" id="cosTrophy5" value="5">
                                <label style="padding-left:20px" for="cosTrophy5">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="5" id="cosTrophy4" value="4">
                                <label style="padding-left:20px" for="cosTrophy4">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="5" id="cosTrophy3" value="3" checked>
                                <label style="padding-left:20px" for="cosTrophy3">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="5" id="cosTrophy2" value="2">
                                <label style="padding-left:20px" for="cosTrophy2">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="5" id="cosTrophy1" value="1">
                                <label style="padding-left:83px" for="cosTrophy1">
                                  <span class="fa fa-trophy"></span>
                                </label>
                              </span>

                              <br>
                              <span class="rating rating-primary">
                                <font size="3px" style="padding-left:200px">Communication Management &nbsp; </font>
                                <input type="radio" name="6" id="comTrophy10" value="10">
                                <label style="padding-left:20px" for="comTrophy10">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="6" id="comTrophy9" value="9">
                                <label style="padding-left:20px" for="comTrophy9">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="6" id="comTrophy8" value="8" checked>
                                <label style="padding-left:20px" for="comTrophy8">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="6" id="comTrophy7" value="7">
                                <label style="padding-left:20px" for="comTrophy7">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="6" id="comTrophy6" value="6">
                                <label style="padding-left:20px" for="comTrophy6">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="6" id="comTrophy5" value="5">
                                <label style="padding-left:20px" for="comTrophy5">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="6" id="comTrophy4" value="4">
                                <label style="padding-left:20px" for="comTrophy4">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="6" id="comTrophy3" value="3" checked>
                                <label style="padding-left:20px" for="comTrophy3">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="6" id="comTrophy2" value="2">
                                <label style="padding-left:20px" for="comTrophy2">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="6" id="comTrophy1" value="1">
                                <label style="padding-left:2px" for="comTrophy1">
                                  <span class="fa fa-trophy"></span>
                                </label>
                              </span>

                              <br>
                              <span class="rating rating-primary">
                                <font size="3px" style="padding-left:200px">Problem Management &nbsp; </font>
                                <input type="radio" name="7" id="probTrophy10" value="10">
                                <label style="padding-left:20px" for="probTrophy10">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="7" id="probTrophy9" value="9">
                                <label style="padding-left:20px" for="probTrophy9">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="7" id="probTrophy8" value="8" checked>
                                <label style="padding-left:20px" for="probTrophy8">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="7" id="probTrophy7" value="7">
                                <label style="padding-left:20px" for="probTrophy7">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="7" id="probTrophy6" value="6">
                                <label style="padding-left:20px" for="probTrophy6">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="7" id="probTrophy5" value="5">
                                <label style="padding-left:20px" for="probTrophy5">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="7" id="probTrophy4" value="4">
                                <label style="padding-left:20px" for="probTrophy4">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="7" id="probTrophy3" value="3" checked>
                                <label style="padding-left:20px" for="probTrophy3">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="7" id="probTrophy2" value="2">
                                <label style="padding-left:20px" for="probTrophy2">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="7" id="probTrophy1" value="1">
                                <label style="padding-left:55px" for="probTrophy1">
                                  <span class="fa fa-trophy"></span>
                                </label>
                              </span>

                              <br>
                              <span class="rating rating-primary">
                                <font size="3px" style="padding-left:200px">Risk Management &nbsp; </font>
                                <input type="radio" name="8" id="riskTrophy10" value="10">
                                <label style="padding-left:20px" for="riskTrophy10">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="8" id="riskTrophy9" value="9">
                                <label style="padding-left:20px" for="riskTrophy9">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="8" id="riskTrophy8" value="8" checked>
                                <label style="padding-left:20px" for="riskTrophy8">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="8" id="riskTrophy7" value="7">
                                <label style="padding-left:20px" for="riskTrophy7">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="8" id="riskTrophy6" value="6">
                                <label style="padding-left:20px" for="riskTrophy6">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="8" id="riskTrophy5" value="5">
                                <label style="padding-left:20px" for="riskTrophy5">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="8" id="riskTrophy4" value="4">
                                <label style="padding-left:20px" for="riskTrophy4">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="8" id="riskTrophy3" value="3" checked>
                                <label style="padding-left:20px" for="riskTrophy3">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="8" id="riskTrophy2" value="2">
                                <label style="padding-left:20px" for="riskTrophy2">
                                  <span class="fa fa-trophy"></span>
                                </label>
                                <input type="radio" name="8" id="riskTrophy1" value="1">
                                <label style="padding-left:86px" for="riskTrophy1">
                                  <span class="fa fa-trophy"></span>
                                </label>
                              </span>
                            </div>
                          </section>
                    </div>

                    <div class="col-lg-12">
                      <section class="card card-fluid">
                        <div class="card-body">
                        <h4 class="card-title" style="text-align:Center"> Human Skill </h4>
                          <font size="2px"style="padding-left:417px" > 1 &emsp; &emsp; 2 &emsp; &emsp;3 &emsp; &emsp; 4 &emsp; &emsp;5 &emsp; &emsp; 6 &emsp; &emsp; 7 &emsp; &emsp;8 &emsp; &emsp; 9 &emsp; &emsp;10  </font><br>
                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> Making of the recovery CD  &nbsp; </font>
                          <input type="radio" name="9" id="recoTrophy10" value="10">
                          <label style="padding-left:20px" for="recoTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="9" id="recoTrophy9" value="9">
                          <label style="padding-left:20px" for="recoTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="9" id="recoTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="recoTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="9" id="recoTrophy7" value="7">
                          <label style="padding-left:20px" for="recoTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="9" id="recoTrophy6" value="6">
                          <label style="padding-left:20px" for="recoTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="9" id="recoTrophy5" value="5">
                          <label style="padding-left:20px" for="recoTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="9" id="recoTrophy4" value="4">
                          <label style="padding-left:20px" for="recoTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="9" id="recoTrophy3" value="3" >
                          <label style="padding-left:20px" for="recoTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="9" id="recoTrophy2" value="2">
                          <label style="padding-left:20px" for="recoTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="9" id="recoTrophy1" value="1">
                          <label style="padding-left:12px" for="recoTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> Setup &nbsp; </font>
                          <input type="radio" name="10" id="setupTrophy10" value="10">
                          <label style="padding-left:20px" for="setupTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="10" id="setupTrophy9" value="9">
                          <label style="padding-left:20px" for="setupTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="10" id="setupTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="setupTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="10" id="setupTrophy7" value="7">
                          <label style="padding-left:20px" for="setupTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="10" id="setupTrophy6" value="6">
                          <label style="padding-left:20px" for="setupTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="10" id="setupTrophy5" value="5">
                          <label style="padding-left:20px" for="setupTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="10" id="setupTrophy4" value="4">
                          <label style="padding-left:20px" for="setupTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="10" id="setupTrophy3" value="3" >
                          <label style="padding-left:20px" for="setupTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="10" id="setupTrophy2" value="2">
                          <label style="padding-left:20px" for="setupTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="10" id="setupTrophy1" value="1">
                          <label style="padding-left:160px" for="setupTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> Operations &nbsp; </font>
                          <input type="radio" name="11" id="operaTrophy10" value="10">
                          <label style="padding-left:20px" for="operaTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="11" id="operaTrophy9" value="9">
                          <label style="padding-left:20px" for="operaTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="11" id="operaTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="operaTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="11" id="operaTrophy7" value="7">
                          <label style="padding-left:20px" for="operaTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="11" id="operaTrophy6" value="6">
                          <label style="padding-left:20px" for="operaTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="11" id="operaTrophy5" value="5">
                          <label style="padding-left:20px" for="operaTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="11" id="operaTrophy4" value="4">
                          <label style="padding-left:20px" for="operaTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="11" id="operaTrophy3" value="3" >
                          <label style="padding-left:20px" for="operaTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="11" id="operaTrophy2" value="2">
                          <label style="padding-left:20px" for="operaTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="11" id="operaTrophy1" value="1">
                          <label style="padding-left:123px" for="operaTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> Setup of simulator &nbsp; </font>
                          <input type="radio" name="12" id="setupsimuTrophy10" value="10">
                          <label style="padding-left:20px" for="setupsimuTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="12" id="setupsimuTrophy9" value="9">
                          <label style="padding-left:20px" for="setupsimuTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="12" id="setupsimuTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="setupsimuTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="12" id="setupsimuTrophy7" value="7">
                          <label style="padding-left:20px" for="setupsimuTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="12" id="setupsimuTrophy6" value="6">
                          <label style="padding-left:20px" for="setupsimuTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="12" id="setupsimuTrophy5" value="5">
                          <label style="padding-left:20px" for="setupsimuTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="12" id="setupsimuTrophy4" value="4">
                          <label style="padding-left:20px" for="setupsimuTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="12" id="setupsimuTrophy3" value="3" >
                          <label style="padding-left:20px" for="setupsimuTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="12" id="setupsimuTrophy2" value="2">
                          <label style="padding-left:20px" for="setupsimuTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="12" id="setupsimuTrophy1" value="1">
                          <label style="padding-left:72px" for="setupsimuTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> Simulator operations &nbsp; </font>
                          <input type="radio" name="13" id="simuOpTrophy10" value="10">
                          <label style="padding-left:20px" for="simuOpTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="13" id="simuOpTrophy9" value="9">
                          <label style="padding-left:20px" for="simuOpTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="13" id="simuOpTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="simuOpTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="13" id="simuOpTrophy7" value="7">
                          <label style="padding-left:20px" for="simuOpTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="13" id="simuOpTrophy6" value="6">
                          <label style="padding-left:20px" for="simuOpTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="13" id="simuOpTrophy5" value="5">
                          <label style="padding-left:20px" for="simuOpTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="13" id="simuOpTrophy4" value="4">
                          <label style="padding-left:20px" for="simuOpTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="13" id="simuOpTrophy3" value="3" >
                          <label style="padding-left:20px" for="simuOpTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="13" id="simuOpTrophy2" value="2">
                          <label style="padding-left:20px" for="simuOpTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="13" id="simuOpTrophy1" value="1">
                          <label style="padding-left:55px" for="simuOpTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> HOST Simulator operations &nbsp; </font>
                          <input type="radio" name="14" id="hostTrophy10" value="10">
                          <label style="padding-left:20px" for="hostTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="14" id="hostTrophy9" value="9">
                          <label style="padding-left:20px" for="hostTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="14" id="hostTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="hostTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="14" id="hostTrophy7" value="7">
                          <label style="padding-left:20px" for="hostTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="14" id="hostTrophy6" value="6">
                          <label style="padding-left:20px" for="hostTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="14" id="hostTrophy5" value="5">
                          <label style="padding-left:20px" for="hostTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="14" id="hostTrophy4" value="4">
                          <label style="padding-left:20px" for="hostTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="14" id="hostTrophy3" value="3" >
                          <label style="padding-left:20px" for="hostTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="14" id="hostTrophy2" value="2">
                          <label style="padding-left:20px" for="hostTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="14" id="hostTrophy1" value="1">
                          <label style="padding-left:10px" for="hostTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>
                      </div>
                      </section>
                    </div>

                    <div class="col-lg-12">
                      <section class="card card-fluid">
                        <div class="card-body">
                          <h3 class="card-title" style="text-align:Center"> Language </h3>
                            <font size="2px"style="padding-left:334px" > 1 &emsp; &emsp; 2 &emsp; &emsp;3 &emsp; &emsp; 4 &emsp; &emsp;5 &emsp; &emsp; 6 &emsp; &emsp; 7 &emsp; &emsp;8 &emsp; &emsp; 9 &emsp; &emsp;10  </font><br>
                          <br>
                          <span class="rating rating-primary">
                            <font size="3px" style="padding-left:200px">Japanese &nbsp; </font>
                            <input type="radio" name="15" id="japTrophy10" value="10">
                            <label style="padding-left:20px" for="japTrophy10">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="15" id="japTrophy9" value="9">
                            <label style="padding-left:20px" for="japTrophy9">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="15" id="japTrophy8" value="8" checked>
                            <label style="padding-left:20px" for="japTrophy8">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="15" id="japTrophy7" value="7">
                            <label style="padding-left:20px" for="japTrophy7">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="15" id="japTrophy6" value="6">
                            <label style="padding-left:20px" for="japTrophy6">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="15" id="japTrophy5" value="5">
                            <label style="padding-left:20px" for="japTrophy5">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="15" id="japTrophy4" value="4">
                            <label style="padding-left:20px" for="japTrophy4">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="15" id="japTrophy3" value="3" checked>
                            <label style="padding-left:20px" for="japTrophy3">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="15" id="japTrophy2" value="2">
                            <label style="padding-left:20px" for="japTrophy2">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="15" id="japTrophy1" value="1">
                            <label style="padding-left:53px" for="japTrophy1">
                              <span class="fa fa-trophy"></span>
                            </label>
                          </span>

                          <br>
                          <span class="rating rating-primary">
                            <font size="3px" style="padding-left:200px">English &nbsp; </font>
                            <input type="radio" name="16" id="engTrophy10" value="10">
                            <label style="padding-left:20px" for="engTrophy10">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="16" id="engTrophy9" value="9">
                            <label style="padding-left:20px" for="engTrophy9">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="16" id="engTrophy8" value="8" checked>
                            <label style="padding-left:20px" for="engTrophy8">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="16" id="engTrophy7" value="7">
                            <label style="padding-left:20px" for="engTrophy7">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="16" id="engTrophy6" value="6">
                            <label style="padding-left:20px" for="engTrophy6">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="16" id="engTrophy5" value="5">
                            <label style="padding-left:20px" for="engTrophy5">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="16" id="engTrophy4" value="4">
                            <label style="padding-left:20px" for="engTrophy4">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="16" id="engTrophy3" value="3" checked>
                            <label style="padding-left:20px" for="engTrophy3">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="16" id="engTrophy2" value="2">
                            <label style="padding-left:20px" for="engTrophy2">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="16" id="engTrophy1" value="1">
                            <label style="padding-left:68px" style="padding-left:68px" for="engTrophy1">
                              <span class="fa fa-trophy"></span>
                            </label>
                          </span>
                        </div>
                      </section>
                    </div>

                    <div class="col-lg-12">
                      <section class="card card-fluid">
                        <div class="card-body">
                          <h3 class="card-title" style="text-align:Center"> Alliance Process </h3>
                            <font size="2px"style="padding-left:437px" > 1 &emsp; &emsp; 2 &emsp; &emsp;3 &emsp; &emsp; 4 &emsp; &emsp;5 &emsp; &emsp; 6 &emsp; &emsp; 7 &emsp; &emsp;8 &emsp; &emsp; 9 &emsp; &emsp;10  </font><br>
                          <br>
                          <span class="rating rating-primary">
                            <font size="3px" style="padding-left:200px">Development Process &nbsp; </font>
                            <input type="radio" name="17" id="devPTrophy10" value="10">
                            <label style="padding-left:20px" for="devPTrophy10">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="17" id="devPTrophy9" value="9">
                            <label style="padding-left:20px" for="devPTrophy9">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="17" id="devPTrophy8" value="8" checked>
                            <label style="padding-left:20px" for="devPTrophy8">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="17" id="devPTrophy7" value="7">
                            <label style="padding-left:20px" for="devPTrophy7">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="17" id="devPTrophy6" value="6">
                            <label style="padding-left:20px" for="devPTrophy6">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="17" id="devPTrophy5" value="5">
                            <label style="padding-left:20px" for="devPTrophy5">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="17" id="devPTrophy4" value="4">
                            <label style="padding-left:20px" for="devPTrophy4">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="17" id="devPTrophy3" value="3" checked>
                            <label style="padding-left:20px" for="devPTrophy3">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="17" id="devPTrophy2" value="2">
                            <label style="padding-left:20px" for="devPTrophy2">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="17" id="devPTrophy1" value="1">
                            <label style="padding-left:68px" for="devPTrophy1">
                              <span class="fa fa-trophy"></span>
                            </label>
                          </span>

                          <br>
                          <span class="rating rating-primary">
                            <font size="3px" style="padding-left:200px" >Devise Development Plan &nbsp; </font>
                            <input type="radio" name="18" id="devDTrophy10" value="10">
                            <label style="padding-left:20px" for="devDTrophy10">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="18" id="devDTrophy9" value="9">
                            <label style="padding-left:20px" for="devDTrophy9">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="18" id="devDTrophy8" value="8" checked>
                            <label style="padding-left:20px" for="devDTrophy8">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="18" id="devDTrophy7" value="7">
                            <label style="padding-left:20px" for="devDTrophy7">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="18" id="devDTrophy6" value="6">
                            <label style="padding-left:20px" for="devDTrophy6">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="18" id="devDTrophy5" value="5">
                            <label style="padding-left:20px" for="devDTrophy5">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="18" id="devDTrophy4" value="4">
                            <label style="padding-left:20px" for="devDTrophy4">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="18" id="devDTrophy3" value="3" checked>
                            <label style="padding-left:20px" for="devDTrophy3">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="18" id="devDTrophy2" value="2">
                            <label style="padding-left:20px" for="devDTrophy2">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="18" id="devDTrophy1" value="1">
                            <label style="padding-left:43px" for="devDTrophy1">
                              <span class="fa fa-trophy"></span>
                            </label>
                          </span>

                          <br>
                          <span class="rating rating-primary">
                            <font size="3px" style="padding-left:200px" >Bug Analysis &nbsp; </font>
                            <input type="radio" name="19" id="bugATrophy10" value="10">
                            <label style="padding-left:20px" for="bugATrophy10">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="19" id="bugATrophy9" value="9">
                            <label style="padding-left:20px" for="bugATrophy9">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="19" id="bugATrophy8" value="8" checked>
                            <label style="padding-left:20px" for="bugATrophy8">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="19" id="bugATrophy7" value="7">
                            <label style="padding-left:20px" for="bugATrophy7">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="19" id="bugATrophy6" value="6">
                            <label style="padding-left:20px" for="bugATrophy6">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="19" id="bugATrophy5" value="5">
                            <label style="padding-left:20px" style="padding-left:20px" for="bugATrophy5">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="19" id="bugATrophy4" value="4">
                            <label style="padding-left:20px" for="bugATrophy4">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="19" id="bugATrophy3" value="3" checked>
                            <label style="padding-left:20px" for="bugATrophy3">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="19" id="bugATrophy2" value="2">
                            <label style="padding-left:20px" for="bugATrophy2">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="19" id="bugATrophy1" value="1">
                            <label style="padding-left:133px" for="bugATrophy1">
                              <span class="fa fa-trophy"></span>
                            </label>
                          </span>

                          <br>
                          <span class="rating rating-primary">
                            <font size="3px" style="padding-left:200px" > Test/SIT/UAT Issue management&nbsp; </font>
                            <input type="radio" name="20" id="issMTrophy10" value="10">
                            <label style="padding-left:20px" for="issMTrophy10">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="20" id="issMTrophy9" value="9">
                            <label style="padding-left:20px" for="issMTrophy9">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="20" id="issMTrophy8" value="8" checked>
                            <label style="padding-left:20px" for="issMTrophy8">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="20" id="issMTrophy7" value="7">
                            <label style="padding-left:20px" for="issMTrophy7">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="20" id="issMTrophy6" value="6">
                            <label style="padding-left:20px" for="issMTrophy6">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="20" id="issMTrophy5" value="5">
                            <label style="padding-left:20px" for="issMTrophy5">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="20" id="issMTrophy4" value="4">
                            <label style="padding-left:20px" for="issMTrophy4">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="20" id="issMTrophy3" value="3" checked>
                            <label style="padding-left:20px" for="issMTrophy3">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="20" id="issMTrophy2" value="2">
                            <label style="padding-left:20px" for="issMTrophy2">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="20" id="issMTrophy1" value="1">
                            <label style="padding-left:0px" for="issMTrophy1">
                              <span class="fa fa-trophy"></span>
                            </label>
                          </span>
                        </div>
                      </section>
                    </div>

                  <div class="col-lg-12">
                    <section class="card card-fluid">
                        <div class="card-body">
                          <h3 class="card-title"  style="text-align:Center"> Systems Engineer </h3>
                            <font size="2px"style="padding-left:509px" > 1 &emsp; &emsp; 2 &emsp; &emsp;3 &emsp; &emsp; 4 &emsp; &emsp;5 &emsp; &emsp; 6 &emsp; &emsp; 7 &emsp; &emsp;8 &emsp; &emsp; 9 &emsp; &emsp;10  </font><br>
                            <br>
                          <span class="rating rating-primary">
                            <font size="3px" style="padding-left:200px"> Grasp of Technology Trends  &nbsp; </font>
                            <input type="radio" name="21" id="gttTrophy10" value="10">
                            <label style="padding-left:20px" for="gttTrophy10">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="21" id="gttTrophy9" value="9">
                            <label style="padding-left:20px" for="gttTrophy9">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="21" id="gttTrophy8" value="8" checked>
                            <label style="padding-left:20px" for="gttTrophy8">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="21" id="gttTrophy7" value="7">
                            <label style="padding-left:20px" for="gttTrophy7">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="21" id="gttTrophy6" value="6">
                            <label style="padding-left:20px" for="gttTrophy6">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="21" id="gttTrophy5" value="5">
                            <label style="padding-left:20px" for="gttTrophy5">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="21" id="gttTrophy4" value="4">
                            <label style="padding-left:20px" for="gttTrophy4">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="21" id="gttTrophy3" value="3" checked>
                            <label style="padding-left:20px" for="gttTrophy3">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="21" id="gttTrophy2" value="2">
                            <label style="padding-left:20px" for="gttTrophy2">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="21" id="gttTrophy1" value="1">
                            <label style="padding-left:95px" for="gttTrophy1">
                              <span class="fa fa-trophy"></span>
                            </label>
                          </span>

                          <br>
                          <span class="rating rating-primary">
                            <font size="3px" style="padding-left:200px"> Communication skill as expert on the field&nbsp; </font>
                            <input type="radio" name="22" id="csExpTrophy10" value="10">
                            <label style="padding-left:20px" for="csExpTrophy10">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="22" id="csExpTrophy9" value="9">
                            <label style="padding-left:20px" for="csExpTrophy9">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="22" id="csExpTrophy8" value="8" checked>
                            <label style="padding-left:20px" for="csExpTrophy8">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="22" id="csExpTrophy7" value="7">
                            <label style="padding-left:20px" for="csExpTrophy7">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="22" id="csExpTrophy6" value="6">
                            <label style="padding-left:20px" for="csExpTrophy6">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="22" id="csExpTrophy5" value="5">
                            <label style="padding-left:20px" for="csExpTrophy5">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="22" id="csExpTrophy4" value="4">
                            <label style="padding-left:20px" for="csExpTrophy4">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="22" id="csExpTrophy3" value="3" checked>
                            <label style="padding-left:20px" for="csExpTrophy3">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="22" id="csExpTrophy2" value="2">
                            <label style="padding-left:20px" for="csExpTrophy2">
                              <span class="fa fa-trophy"></span>
                            </label>
                            <input type="radio" name="22" id="csExpTrophy1" value="1">
                            <label style="padding-left:20px" for="csExpTrophy1">
                              <span class="fa fa-trophy"></span>
                            </label>
                          </span>
                      </div>
                    </section>
                  </div>

                  <div class="col-lg-12">
                    <section class="card card-fluid">
                      <div class="card-body">
                        <h3 class="card-title" style="text-align:Center"> Technical </h3>
                          <font size="2px"style="padding-left:503px" > 1 &emsp; &emsp; 2 &emsp; &emsp;3 &emsp; &emsp; 4 &emsp; &emsp;5 &emsp; &emsp; 6 &emsp; &emsp; 7 &emsp; &emsp;8 &emsp; &emsp; 9 &emsp; &emsp;10  </font><br>
                          <br>

                        <br>
                        <span class="rating rating-primary">
                          <font style="padding-left:200px" size="3px"> Estimation of the development  &nbsp; </font>
                          <input type="radio" name="24" id="estDTrophy10" value="10">
                          <label style="padding-left:20px" for="estDTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="24" id="estDTrophy9" value="9">
                          <label style="padding-left:20px" for="estDTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="24" id="estDTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="estDTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="24" id="estDTrophy7" value="7">
                          <label style="padding-left:20px" for="estDTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="24" id="estDTrophy6" value="6">
                          <label style="padding-left:20px" for="estDTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="24" id="estDTrophy5" value="5">
                          <label style="padding-left:20px" for="estDTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="24" id="estDTrophy4" value="4">
                          <label style="padding-left:20px" for="estDTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="24" id="estDTrophy3" value="3" checked>
                          <label style="padding-left:20px" for="estDTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="24" id="estDTrophy2" value="2">
                          <label style="padding-left:20px" for="estDTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="24" id="estDTrophy1" value="1">
                          <label style="padding-left:70px" for="estDTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                          <br>
                        <span class="rating rating-primary">
                          <font style="padding-left:200px" size="3px"> Review specification  &nbsp; </font>
                          <input type="radio" name="25" id="revSpeTrophy10" value="10">
                          <label style="padding-left:20px" for="revSpeTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="25" id="revSpeTrophy9" value="9">
                          <label style="padding-left:20px" for="revSpeTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="25" id="revSpeTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="revSpeTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="25" id="revSpeTrophy7" value="7">
                          <label style="padding-left:20px" for="revSpeTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="25" id="revSpeTrophy6" value="6">
                          <label style="padding-left:20px" for="revSpeTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="25" id="revSpeTrophy5" value="5">
                          <label style="padding-left:20px" for="revSpeTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="25" id="revSpeTrophy4" value="4">
                          <label style="padding-left:20px" for="revSpeTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="25" id="revSpeTrophy3" value="3" checked>
                          <label style="padding-left:20px" for="revSpeTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="25" id="revSpeTrophy2" value="2">
                          <label style="padding-left:20px" for="revSpeTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="25" id="revSpeTrophy1" value="1">
                          <label style="padding-left:147px" for="revSpeTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font style="padding-left:200px" size="3px"> Review Source Code  &nbsp; </font>
                          <input type="radio" name="26" id="revSouTrophy10" value="10">
                          <label style="padding-left:20px" for="revSouTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="26" id="revSouTrophy9" value="9">
                          <label style="padding-left:20px" for="revSouTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="26" id="revSouTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="revSouTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="26" id="revSouTrophy7" value="7">
                          <label style="padding-left:20px" for="revSouTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="26" id="revSouTrophy6" value="6">
                          <label style="padding-left:20px" for="revSouTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="26" id="revSouTrophy5" value="5">
                          <label style="padding-left:20px" for="revSouTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="26" id="revSouTrophy4" value="4">
                          <label style="padding-left:20px" for="revSouTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="26" id="revSouTrophy3" value="3" checked>
                          <label style="padding-left:20px" for="revSouTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="26" id="revSouTrophy2" value="2">
                          <label style="padding-left:20px" for="revSouTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="26" id="revSouTrophy1" value="1">
                          <label style="padding-left:145px" for="revSouTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font style="padding-left:200px" size="3px"> Making of test cases  &nbsp; </font>
                          <input type="radio" name="27" id="testCaseTrophy10" value="10">
                          <label style="padding-left:20px" for="testCaseTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="27" id="testCaseTrophy9" value="9">
                          <label style="padding-left:20px" for="testCaseTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="27" id="testCaseTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="testCaseTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="27" id="testCaseTrophy7" value="7">
                          <label style="padding-left:20px" for="testCaseTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="27" id="testCaseTrophy6" value="6">
                          <label style="padding-left:20px" for="testCaseTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="27" id="testCaseTrophy5" value="5">
                          <label style="padding-left:20px" for="testCaseTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="27" id="testCaseTrophy4" value="4">
                          <label style="padding-left:20px" for="testCaseTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="27" id="testCaseTrophy3" value="3" checked>
                          <label style="padding-left:20px" for="testCaseTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="27" id="testCaseTrophy2" value="2">
                          <label style="padding-left:20px" for="testCaseTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="27" id="testCaseTrophy1" value="1">
                          <label style="padding-left:145px" for="testCaseTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font style="padding-left:200px" size="3px"> Review test cases  &nbsp; </font>
                          <input type="radio" name="28" id="revTestCaseTrophy10" value="10">
                          <label style="padding-left:20px" for="revTestCaseTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="28" id="revTestCaseTrophy9" value="9">
                          <label style="padding-left:20px" for="revTestCaseTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="28" id="revTestCaseTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="revTestCaseTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="28" id="revTestCaseTrophy7" value="7">
                          <label style="padding-left:20px" for="revTestCaseTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="28" id="revTestCaseTrophy6" value="6">
                          <label style="padding-left:20px" for="revTestCaseTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="28" id="revTestCaseTrophy5" value="5">
                          <label style="padding-left:20px" for="revTestCaseTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="28" id="revTestCaseTrophy4" value="4">
                          <label style="padding-left:20px" for="revTestCaseTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="28" id="revTestCaseTrophy3" value="3" checked>
                          <label style="padding-left:20px" for="revTestCaseTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="28" id="revTestCaseTrophy2" value="2">
                          <label style="padding-left:20px" for="revTestCaseTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="28" id="revTestCaseTrophy1" value="1">
                          <label style="padding-left:168px" for="revTestCaseTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font style="padding-left:200px" size="3px"> Log Analysis  &nbsp; </font>
                          <input type="radio" name="29" id="logAnTrophy10" value="10">
                          <label style="padding-left:20px" for="logAnTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="29" id="logAnTrophy9" value="9">
                          <label style="padding-left:20px" for="logAnTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="29" id="logAnTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="logAnTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="29" id="logAnTrophy7" value="7">
                          <label style="padding-left:20px" for="logAnTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="29" id="logAnTrophy6" value="6">
                          <label style="padding-left:20px" for="logAnTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="29" id="logAnTrophy5" value="5">
                          <label style="padding-left:20px" for="logAnTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="29" id="logAnTrophy4" value="4">
                          <label style="padding-left:20px" for="logAnTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="29" id="logAnTrophy3" value="3" checked>
                          <label style="padding-left:20px" for="logAnTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="29" id="logAnTrophy2" value="2">
                          <label style="padding-left:20px" for="logAnTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="29" id="logAnTrophy1" value="1">
                          <label style="padding-left:201px" for="logAnTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>
                      </div>
                    </section>
                  </div>

                  <div class="col-lg-12">
                    <section class="card card-fluid">
                      <div class="card-body">
                        <h6 style="text-align:Center"> Development Experience  </h6>
                          <font size="2px"style="padding-left:340px" > 1 &emsp; &emsp; 2 &emsp; &emsp;3 &emsp; &emsp; 4 &emsp; &emsp;5 &emsp; &emsp; 6 &emsp; &emsp; 7 &emsp; &emsp;8 &emsp; &emsp; 9 &emsp; &emsp;10  </font><br>

                          <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px" > C / C++  &nbsp; </font>
                          <input type="radio" name="30" id="cTrophy10" value="10">
                          <label style="padding-left:20px" for="cTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="30" id="cTrophy9" value="9">
                          <label style="padding-left:20px" for="cTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="30" id="cTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="cTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="30" id="cTrophy7" value="7">
                          <label style="padding-left:20px" for="cTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="30" id="cTrophy6" value="6">
                          <label style="padding-left:20px" for="cTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="30" id="cTrophy5" value="5">
                          <label style="padding-left:20px" for="cTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="30" id="cTrophy4" value="4">
                          <label style="padding-left:20px" for="cTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="30" id="cTrophy3" value="3" checked>
                          <label style="padding-left:20px" for="cTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="30" id="cTrophy2" value="2">
                          <label style="padding-left:20px" for="cTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="30" id="cTrophy1" value="1">
                          <label style="padding-left:68px" for="cTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> C#  &nbsp; </font>
                          <input type="radio" name="31" id="cSharpTrophy10" value="10">
                          <label style="padding-left:20px" for="cSharpTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="31" id="cSharpTrophy9" value="9">
                          <label style="padding-left:20px" for="cSharpTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="31" id="cSharpTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="cSharpTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="31" id="cSharpTrophy7" value="7">
                          <label style="padding-left:20px" for="cSharpTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="31" id="cSharpTrophy6" value="6">
                          <label style="padding-left:20px" for="cSharpTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="31" id="cSharpTrophy5" value="5">
                          <label style="padding-left:20px" for="cSharpTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="31" id="cSharpTrophy4" value="4">
                          <label style="padding-left:20px" for="cSharpTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="31" id="cSharpTrophy3" value="3" checked>
                          <label style="padding-left:20px" for="cSharpTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="31" id="cSharpTrophy2" value="2">
                          <label style="padding-left:20px" for="cSharpTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="31" id="cSharpTrophy1" value="1">
                          <label style="padding-left:105px" for="cSharpTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> .NET  &nbsp; </font>
                          <input type="radio" name="32" id="netTrophy10" value="10">
                          <label style="padding-left:20px" for="netTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="32" id="netTrophy9" value="9">
                          <label style="padding-left:20px" for="netTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="32" id="netTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="netTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="32" id="netTrophy7" value="7">
                          <label style="padding-left:20px" for="netTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="32" id="netTrophy6" value="6">
                          <label style="padding-left:20px" for="netTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="32" id="netTrophy5" value="5">
                          <label style="padding-left:20px" for="netTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="32" id="netTrophy4" value="4">
                          <label style="padding-left:20px" for="netTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="32" id="netTrophy3" value="3" >
                          <label style="padding-left:20px" for="netTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="32" id="netTrophy2" value="2">
                          <label style="padding-left:20px" for="netTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="32" id="netTrophy1" value="1">
                          <label style="padding-left:93px" for="netTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> MySQL  &nbsp; </font>
                          <input type="radio" name="33" id="mysqlTrophy10" value="10">
                          <label style="padding-left:20px" for="mysqlTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="33" id="mysqlTrophy9" value="9">
                          <label style="padding-left:20px" for="mysqlTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="33" id="mysqlTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="mysqlTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="33" id="mysqlTrophy7" value="7">
                          <label style="padding-left:20px" for="mysqlTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="33" id="mysqlTrophy6" value="6">
                          <label style="padding-left:20px" for="mysqlTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="33" id="mysqlTrophy5" value="5">
                          <label style="padding-left:20px" for="mysqlTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="33" id="mysqlTrophy4" value="4">
                          <label style="padding-left:20px" for="mysqlTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="33" id="mysqlTrophy3" value="3" >
                          <label style="padding-left:20px" for="mysqlTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="33" id="mysqlTrophy2" value="2">
                          <label style="padding-left:20px" for="mysqlTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="33" id="mysqlTrophy1" value="1">
                          <label style="padding-left:75px" for="mysqlTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> HTML  &nbsp; </font>
                          <input type="radio" name="34" id="htmlTrophy10" value="10">
                          <label style="padding-left:20px" for="htmlTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="34" id="htmlTrophy9" value="9">
                          <label style="padding-left:20px" for="htmlTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="34" id="htmlTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="htmlTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="34" id="htmlTrophy7" value="7">
                          <label style="padding-left:20px" for="htmlTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="34" id="htmlTrophy6" value="6">
                          <label style="padding-left:20px" for="htmlTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="34" id="htmlTrophy5" value="5">
                          <label style="padding-left:20px" for="htmlTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="34" id="htmlTrophy4" value="4">
                          <label style="padding-left:20px" for="htmlTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="34" id="htmlTrophy3" value="3" >
                          <label style="padding-left:20px" for="htmlTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="34" id="htmlTrophy2" value="2">
                          <label style="padding-left:20px" for="htmlTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="34" id="htmlTrophy1" value="1">
                          <label style="padding-left:84px" for="htmlTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> VBS  &nbsp; </font>
                          <input type="radio" name="35" id="vbsTrophy10" value="10">
                          <label style="padding-left:20px" for="vbsTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="35" id="vbsTrophy9" value="9">
                          <label style="padding-left:20px" for="vbsTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="35" id="vbsTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="vbsTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="35" id="vbsTrophy7" value="7">
                          <label style="padding-left:20px" for="vbsTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="35" id="vbsTrophy6" value="6">
                          <label style="padding-left:20px" for="vbsTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="35" id="vbsTrophy5" value="5">
                          <label style="padding-left:20px" for="vbsTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="35" id="vbsTrophy4" value="4">
                          <label style="padding-left:20px" for="vbsTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="35" id="vbsTrophy3" value="3" >
                          <label style="padding-left:20px" for="vbsTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="35" id="vbsTrophy2" value="2">
                          <label style="padding-left:20px" for="vbsTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="35" id="vbsTrophy1" value="1">
                          <label style="padding-left:98px" for="vbsTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> JAVA / J2EE  &nbsp; </font>
                          <input type="radio" name="36" id="javaTrophy10" value="10">
                          <label style="padding-left:20px" for="javaTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="36" id="javaTrophy9" value="9">
                          <label style="padding-left:20px" for="javaTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="36" id="javaTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="javaTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="36" id="javaTrophy7" value="7">
                          <label style="padding-left:20px" for="javaTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="36" id="javaTrophy6" value="6">
                          <label style="padding-left:20px" for="javaTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="36" id="javaTrophy5" value="5">
                          <label style="padding-left:20px" for="javaTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="36" id="javaTrophy4" value="4">
                          <label style="padding-left:20px" for="javaTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="36" id="javaTrophy3" value="3" >
                          <label style="padding-left:20px" for="javaTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="36" id="javaTrophy2" value="2">
                          <label style="padding-left:20px" for="javaTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="36" id="javaTrophy1" value="1">
                          <label style="padding-left:47px" for="javaTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>
                      </div>
                    </section>
                  </div>

                  <div class="col-lg-12">
                    <section class="card card-fluid">
                      <div class="card-body">
                        <br><h6 style="text-align:Center">  Operating System  </h6>
                          <font size="2px"style="padding-left:408px" > 1 &emsp; &emsp; 2 &emsp; &emsp;3 &emsp; &emsp; 4 &emsp; &emsp;5 &emsp; &emsp; 6 &emsp; &emsp; 7 &emsp; &emsp;8 &emsp; &emsp; 9 &emsp; &emsp;10  </font><br>
                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px" > Windows 7 Specs  &nbsp; </font>
                          <input type="radio" name="37" id="win7specTrophy10" value="10">
                          <label  style="padding-left:20px" for="win7specTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="37" id="win7specTrophy9" value="9">
                          <label style="padding-left:20px" for="win7specTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="37" id="win7specTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="win7specTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="37" id="win7specTrophy7" value="7">
                          <label style="padding-left:20px" for="win7specTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="37" id="win7specTrophy6" value="6">
                          <label style="padding-left:20px" for="win7specTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="37" id="win7specTrophy5" value="5">
                          <label style="padding-left:20px" for="win7specTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="37" id="win7specTrophy4" value="4">
                          <label style="padding-left:20px" for="win7specTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="37" id="win7specTrophy3" value="3" >
                          <label style="padding-left:20px" for="win7specTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="37" id="win7specTrophy2" value="2">
                          <label style="padding-left:20px" for="win7specTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="37" id="win7specTrophy1" value="1">
                          <label style="padding-left:68px" for="win7specTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> Windows 7 Development  &nbsp; </font>
                          <input type="radio" name="38" id="win7devTrophy10" value="10">
                          <label style="padding-left:20px" for="win7devTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="38" id="win7devTrophy9" value="9">
                          <label style="padding-left:20px" for="win7devTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="38" id="win7devTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="win7devTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="38" id="win7devTrophy7" value="7">
                          <label style="padding-left:20px" for="win7devTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="38" id="win7devTrophy6" value="6">
                          <label style="padding-left:20px" for="win7devTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="38" id="win7devTrophy5" value="5">
                          <label style="padding-left:20px" for="win7devTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="38" id="win7devTrophy4" value="4">
                          <label style="padding-left:20px" for="win7devTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="38" id="win7devTrophy3" value="3" >
                          <label style="padding-left:20px" for="win7devTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="38" id="win7devTrophy2" value="2">
                          <label style="padding-left:20px" for="win7devTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="38" id="win7devTrophy1" value="1">
                          <label style="padding-left:14px" for="win7devTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> Linux Spec  &nbsp; </font>
                          <input type="radio" name="40" id="linuxspecTrophy10" value="10">
                          <label style="padding-left:20px" for="linuxspecTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="40" id="linuxspecTrophy9" value="9">
                          <label style="padding-left:20px" for="linuxspecTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="40" id="linuxspecTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="linuxspecTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="40" id="linuxspecTrophy7" value="7">
                          <label style="padding-left:20px" for="linuxspecTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="40" id="linuxspecTrophy6" value="6">
                          <label style="padding-left:20px" for="linuxspecTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="40" id="linuxspecTrophy5" value="5">
                          <label style="padding-left:20px" for="linuxspecTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="40" id="linuxspecTrophy4" value="4">
                          <label style="padding-left:20px" for="linuxspecTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="40" id="linuxspecTrophy3" value="3" >
                          <label style="padding-left:20px" for="linuxspecTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="40" id="linuxspecTrophy2" value="2">
                          <label style="padding-left:20px" for="linuxspecTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="40" id="linuxspecTrophy1" value="1">
                          <label style="padding-left:117px" for="linuxspecTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> Linux Development  &nbsp; </font>
                          <input type="radio" name="41" id="linuxdevTrophy10" value="10">
                          <label style="padding-left:20px" for="linuxdevTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="41" id="linuxdevTrophy9" value="9">
                          <label style="padding-left:20px" for="linuxdevTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="41" id="linuxdevTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="linuxdevTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="41" id="linuxdevTrophy7" value="7">
                          <label style="padding-left:20px" for="linuxdevTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="41" id="linuxdevTrophy6" value="6">
                          <label style="padding-left:20px" for="linuxdevTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="41" id="linuxdevTrophy5" value="5">
                          <label style="padding-left:20px" for="linuxdevTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="41" id="linuxdevTrophy4" value="4">
                          <label style="padding-left:20px" for="linuxdevTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="41" id="linuxdevTrophy3" value="3" >
                          <label style="padding-left:20px" for="linuxdevTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="41" id="linuxdevTrophy2" value="2">
                          <label style="padding-left:20px" for="linuxdevTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="41" id="linuxdevTrophy1" value="1">
                          <label style="padding-left:56px" for="linuxdevTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>


                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> NDC  &nbsp; </font>
                          <input type="radio" name="42" id="ndcTrophy10" value="10">
                          <label style="padding-left:20px" for="ndcTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="42" id="ndcTrophy9" value="9">
                          <label style="padding-left:20px" for="ndcTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="42" id="ndcTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="ndcTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="42" id="ndcTrophy7" value="7">
                          <label style="padding-left:20px" for="ndcTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="42" id="ndcTrophy6" value="6">
                          <label style="padding-left:20px" for="ndcTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="42" id="ndcTrophy5" value="5">
                          <label style="padding-left:20px" for="ndcTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="42" id="ndcTrophy4" value="4">
                          <label style="padding-left:20px" for="ndcTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="42" id="ndcTrophy3" value="3" >
                          <label style="padding-left:20px" for="ndcTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="42" id="ndcTrophy2" value="2">
                          <label style="padding-left:20px" for="ndcTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="42" id="ndcTrophy1" value="1">
                          <label style="padding-left:160px" for="ndcTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> DDC  &nbsp; </font>
                          <input type="radio" name="43" id="ddcTrophy10" value="10">
                          <label style="padding-left:20px" for="ddcTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="43" id="ddcTrophy9" value="9">
                          <label style="padding-left:20px" for="ddcTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="43" id="ddcTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="ddcTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="43" id="ddcTrophy7" value="7">
                          <label style="padding-left:20px" for="ddcTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="43" id="ddcTrophy6" value="6">
                          <label style="padding-left:20px" for="ddcTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="43" id="ddcTrophy5" value="5">
                          <label style="padding-left:20px" for="ddcTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="43" id="ddcTrophy4" value="4">
                          <label style="padding-left:20px" for="ddcTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="43" id="ddcTrophy3" value="3" >
                          <label style="padding-left:20px" for="ddcTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="43" id="ddcTrophy2" value="2">
                          <label style="padding-left:20px" for="ddcTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="43" id="ddcTrophy1" value="1">
                          <label style="padding-left:161px" for="ddcTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> ISO  &nbsp; </font>
                          <input type="radio" name="44" id="isoTrophy10" value="10">
                          <label style="padding-left:20px" for="isoTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="44" id="isoTrophy9" value="9">
                          <label style="padding-left:20px" for="isoTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="44" id="isoTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="isoTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="44" id="isoTrophy7" value="7">
                          <label style="padding-left:20px" for="isoTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="44" id="isoTrophy6" value="6">
                          <label style="padding-left:20px" for="isoTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="44" id="isoTrophy5" value="5">
                          <label style="padding-left:20px" for="isoTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="44" id="isoTrophy4" value="4">
                          <label style="padding-left:20px" for="isoTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="44" id="isoTrophy3" value="3" >
                          <label style="padding-left:20px" for="isoTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="44" id="isoTrophy2" value="2">
                          <label style="padding-left:20px" for="isoTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="44" id="isoTrophy1" value="1">
                          <label style="padding-left:169px" for="isoTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> IFX  &nbsp; </font>
                          <input type="radio" name="45" id="ifxTrophy10" value="10">
                          <label style="padding-left:20px" for="ifxTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="45" id="ifxTrophy9" value="9">
                          <label style="padding-left:20px" for="ifxTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="45" id="ifxTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="ifxTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="45" id="ifxTrophy7" value="7">
                          <label style="padding-left:20px" for="ifxTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="45" id="ifxTrophy6" value="6">
                          <label style="padding-left:20px" for="ifxTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="45" id="ifxTrophy5" value="5">
                          <label style="padding-left:20px" for="ifxTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="45" id="ifxTrophy4" value="4">
                          <label style="padding-left:20px" for="ifxTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="45" id="ifxTrophy3" value="3" >
                          <label style="padding-left:20px" for="ifxTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="45" id="ifxTrophy2" value="2">
                          <label style="padding-left:20px" for="ifxTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="45" id="ifxTrophy1" value="1">
                          <label style="padding-left:172px" for="ifxTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> EMV  &nbsp; </font>
                          <input type="radio" name="46" id="emvTrophy10" value="10">
                          <label style="padding-left:20px" for="emvTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="46" id="emvTrophy9" value="9">
                          <label style="padding-left:20px" for="emvTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="46" id="emvTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="emvTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="46" id="emvTrophy7" value="7">
                          <label style="padding-left:20px" for="emvTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="46" id="emvTrophy6" value="6">
                          <label style="padding-left:20px" for="emvTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="46" id="emvTrophy5" value="5">
                          <label style="padding-left:20px" for="emvTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="46" id="emvTrophy4" value="4">
                          <label style="padding-left:20px" for="emvTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="46" id="emvTrophy3" value="3" >
                          <label style="padding-left:20px" for="emvTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="46" id="emvTrophy2" value="2">
                          <label style="padding-left:20px" for="emvTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="46" id="emvTrophy1" value="1">
                          <label style="padding-left:162px" for="emvTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> PCI  &nbsp; </font>
                          <input type="radio" name="47" id="pciTrophy10" value="10">
                          <label style="padding-left:20px" for="pciTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="47" id="pciTrophy9" value="9">
                          <label style="padding-left:20px" for="pciTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="47" id="pciTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="pciTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="47" id="pciTrophy7" value="7">
                          <label style="padding-left:20px" for="pciTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="47" id="pciTrophy6" value="6">
                          <label style="padding-left:20px" for="pciTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="47" id="pciTrophy5" value="5">
                          <label style="padding-left:20px" for="pciTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="47" id="pciTrophy4" value="4">
                          <label style="padding-left:20px" for="pciTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="47" id="pciTrophy3" value="3" >
                          <label style="padding-left:20px" for="pciTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="47" id="pciTrophy2" value="2">
                          <label style="padding-left:20px" for="pciTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="47" id="pciTrophy1" value="1">
                          <label style="padding-left:171px" for="pciTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> CEN/XFS  &nbsp; </font>
                          <input type="radio" name="48" id="cenxfsTrophy10" value="10">
                          <label style="padding-left:20px" for="cenxfsTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="48" id="cenxfsTrophy9" value="9">
                          <label style="padding-left:20px" for="cenxfsTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="48" id="cenxfsTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="cenxfsTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="48" id="cenxfsTrophy7" value="7">
                          <label style="padding-left:20px" for="cenxfsTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="48" id="cenxfsTrophy6" value="6">
                          <label style="padding-left:20px" for="cenxfsTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="48" id="cenxfsTrophy5" value="5">
                          <label style="padding-left:20px" for="cenxfsTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="48" id="cenxfsTrophy4" value="4">
                          <label style="padding-left:20px" for="cenxfsTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="48" id="cenxfsTrophy3" value="3" >
                          <label style="padding-left:20px" for="cenxfsTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="48" id="cenxfsTrophy2" value="2">
                          <label style="padding-left:20px" for="cenxfsTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="48" id="cenxfsTrophy1" value="1">
                          <label style="padding-left:132px" for="cenxfsTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px"> BIO API  &nbsp; </font>
                          <input type="radio" name="49" id="bioapiTrophy10" value="10">
                          <label style="padding-left:20px" for="bioapiTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="49" id="bioapiTrophy9" value="9">
                          <label style="padding-left:20px" for="bioapiTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="49" id="bioapiTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="bioapiTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="49" id="bioapiTrophy7" value="7">
                          <label style="padding-left:20px" for="bioapiTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="49" id="bioapiTrophy6" value="6">
                          <label style="padding-left:20px" for="bioapiTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="49" id="bioapiTrophy5" value="5">
                          <label style="padding-left:20px" for="bioapiTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="49" id="bioapiTrophy4" value="4">
                          <label style="padding-left:20px" for="bioapiTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="49" id="bioapiTrophy3" value="3" >
                          <label style="padding-left:20px" for="bioapiTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="49" id="bioapiTrophy2" value="2">
                          <label style="padding-left:20px" for="bioapiTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="49" id="bioapiTrophy1" value="1">
                          <label style="padding-left:142px" for="bioapiTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>
                      </div>
                    </section>
                  </div>

                  <div class="col-lg-12">
                    <section class="card card-fluid">
                      <div class="card-body">
                        <h3 class="card-title" style="text-align:Center"> Testing </h3>
                          <font size="2px"style="padding-left:452px" > 1 &emsp; &emsp; 2 &emsp; &emsp;3 &emsp; &emsp; 4 &emsp; &emsp;5 &emsp; &emsp; 6 &emsp; &emsp; 7 &emsp; &emsp;8 &emsp; &emsp; 9 &emsp; &emsp;10  </font><br>
                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px">Leadership &nbsp; </font>
                          <input type="radio" name="51" id="leadTrophy10" value="10">
                          <label  style="padding-left:20px" for="leadTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="51" id="leadTrophy9" value="9">
                          <label style="padding-left:20px" for="leadTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="51" id="leadTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="leadTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="51" id="leadTrophy7" value="7">
                          <label style="padding-left:20px" for="leadTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="51" id="leadTrophy6" value="6">
                          <label style="padding-left:20px" for="leadTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="51" id="leadTrophy5" value="5">
                          <label style="padding-left:20px" for="leadTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="51" id="leadTrophy4" value="4">
                          <label style="padding-left:20px" for="leadTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="51" id="leadTrophy3" value="3" checked>
                          <label style="padding-left:20px" for="leadTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="51" id="leadTrophy2" value="2">
                          <label style="padding-left:20px" for="leadTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="51" id="leadTrophy1" value="1">
                          <label style="padding-left:159px" for="leadTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px">Competitive Human Resources &nbsp; </font>
                          <input type="radio" name="52" id="globTrophy10" value="10">
                          <label style="padding-left:20px" for="globTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="52" id="globTrophy9" value="9">
                          <label style="padding-left:20px" for="globTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="52" id="globTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="globTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="52" id="globTrophy7" value="7">
                          <label style="padding-left:20px" for="globTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="52" id="globTrophy6" value="6">
                          <label style="padding-left:20px" for="globTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="52" id="globTrophy5" value="5">
                          <label style="padding-left:20px" for="globTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="52" id="globTrophy4" value="4">
                          <label style="padding-left:20px" for="globTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="52" id="globTrophy3" value="3" checked>
                          <label style="padding-left:20px" for="globTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="52" id="globTrophy2" value="2">
                          <label style="padding-left:20px" for="globTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="52" id="globTrophy1" value="1">
                          <label style="padding-left:20px" for="globTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>

                        <br>
                        <span class="rating rating-primary">
                          <font size="3px" style="padding-left:200px">Communication skill &nbsp; </font>
                          <input type="radio" name="53" id="comSkillTrophy10" value="10">
                          <label style="padding-left:20px" for="comSkillTrophy10">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="53" id="comSkillTrophy9" value="9">
                          <label style="padding-left:20px" for="comSkillTrophy9">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="53" id="comSkillTrophy8" value="8" checked>
                          <label style="padding-left:20px" for="comSkillTrophy8">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="53" id="comSkillTrophy7" value="7">
                          <label style="padding-left:20px" for="comSkillTrophy7">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="53" id="comSkillTrophy6" value="6">
                          <label style="padding-left:20px" for="comSkillTrophy6">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="53" id="comSkillTrophy5" value="5">
                          <label style="padding-left:20px" for="comSkillTrophy5">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="53" id="comSkillTrophy4" value="4">
                          <label style="padding-left:20px" for="comSkillTrophy4">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="53" id="comSkillTrophy3" value="3" checked>
                          <label style="padding-left:20px" for="comSkillTrophy3">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="53" id="comSkillTrophy2" value="2">
                          <label style="padding-left:20px" for="comSkillTrophy2">
                            <span class="fa fa-trophy"></span>
                          </label>
                          <input type="radio" name="53" id="comSkillTrophy1" value="1">
                          <label style="padding-left:94px" for="comSkillTrophy1">
                            <span class="fa fa-trophy"></span>
                          </label>
                        </span>
                      </div>
                    </section>
                  </div>

                  <div class="col-lg-12">
                    <section class="card card-fluid">
                      <div class="card-body">
                        <select id="exampleSelect1" class="custom-select" name="restype">
                          <option value="peer">Submit as Peer </option>
                          <option value="supervisor">Submit as Supervisor </option>
                          <option value="self">Submit as Self </option>
                        </select>
                      </div>
                    </section>
                  </div>
              <div class="form-actions" style="padding-left:500px">
                <button class="btn btn-primary" type="submit">Submit form</button>
              </div>
            </form>
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
